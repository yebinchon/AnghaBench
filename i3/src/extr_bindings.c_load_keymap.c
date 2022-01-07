
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xkb_rule_names {int * options; int * variant; int * layout; int * model; int * rules; } ;
struct xkb_keymap {int dummy; } ;
typedef int int32_t ;


 int ELOG (char*) ;
 int LOG (char*) ;
 int conn ;
 int fill_rmlvo_from_root (struct xkb_rule_names*) ;
 int free (char*) ;
 int * xkb_context ;
 int * xkb_context_new (int ) ;
 struct xkb_keymap* xkb_keymap ;
 struct xkb_keymap* xkb_keymap_new_from_names (int *,struct xkb_rule_names*,int ) ;
 int xkb_keymap_unref (struct xkb_keymap*) ;
 scalar_t__ xkb_supported ;
 int xkb_x11_get_core_keyboard_device_id (int ) ;
 struct xkb_keymap* xkb_x11_keymap_new_from_device (int *,int ,int,int ) ;

bool load_keymap(void) {
    if (xkb_context == ((void*)0)) {
        if ((xkb_context = xkb_context_new(0)) == ((void*)0)) {
            ELOG("Could not create xkbcommon context\n");
            return 0;
        }
    }

    struct xkb_keymap *new_keymap = ((void*)0);
    int32_t device_id;
    if (xkb_supported && (device_id = xkb_x11_get_core_keyboard_device_id(conn)) > -1) {
        if ((new_keymap = xkb_x11_keymap_new_from_device(xkb_context, conn, device_id, 0)) == ((void*)0)) {
            ELOG("xkb_x11_keymap_new_from_device failed\n");
            return 0;
        }
    } else {


        LOG("No XKB / core keyboard device? Assembling keymap from local RMLVO.\n");
        struct xkb_rule_names names = {
            .rules = ((void*)0),
            .model = ((void*)0),
            .layout = ((void*)0),
            .variant = ((void*)0),
            .options = ((void*)0)};
        if (fill_rmlvo_from_root(&names) == -1) {
            ELOG("Could not get _XKB_RULES_NAMES atom from root window, falling back to defaults.\n");

        }
        new_keymap = xkb_keymap_new_from_names(xkb_context, &names, 0);
        free((char *)names.rules);
        free((char *)names.model);
        free((char *)names.layout);
        free((char *)names.variant);
        free((char *)names.options);
        if (new_keymap == ((void*)0)) {
            ELOG("xkb_keymap_new_from_names failed\n");
            return 0;
        }
    }
    xkb_keymap_unref(xkb_keymap);
    xkb_keymap = new_keymap;

    return 1;
}
