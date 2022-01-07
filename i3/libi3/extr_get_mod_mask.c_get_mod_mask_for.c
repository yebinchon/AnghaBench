
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xcb_keycode_t ;
typedef int xcb_key_symbols_t ;
struct TYPE_4__ {int keycodes_per_modifier; } ;
typedef TYPE_1__ xcb_get_modifier_mapping_reply_t ;
typedef int uint32_t ;


 int free (scalar_t__*) ;
 scalar_t__* xcb_get_modifier_mapping_keycodes (TYPE_1__*) ;
 scalar_t__* xcb_key_symbols_get_keycode (int *,int) ;

uint32_t get_mod_mask_for(uint32_t keysym,
                          xcb_key_symbols_t *symbols,
                          xcb_get_modifier_mapping_reply_t *modmap_reply) {
    xcb_keycode_t *codes, *modmap;
    xcb_keycode_t mod_code;

    modmap = xcb_get_modifier_mapping_keycodes(modmap_reply);


    if (!(codes = xcb_key_symbols_get_keycode(symbols, keysym)))
        return 0;


    for (int mod = 0; mod < 8; mod++)
        for (int j = 0; j < modmap_reply->keycodes_per_modifier; j++) {

            mod_code = modmap[(mod * modmap_reply->keycodes_per_modifier) + j];


            for (xcb_keycode_t *code = codes; *code; code++) {
                if (*code != mod_code)
                    continue;

                free(codes);

                return (1 << mod);
            }
        }

    return 0;
}
