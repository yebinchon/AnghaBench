
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mode_json_params {int cur_key; TYPE_1__* mode; int pango_markup; int name; } ;
struct TYPE_2__ {int name; int name_width; } ;


 int DLOG (char*,int ) ;
 int FREE (int ) ;
 int i3string_as_utf8 (int ) ;
 int i3string_from_utf8 (int ) ;
 int i3string_set_markup (int ,int ) ;
 int predict_text_width (int ) ;

__attribute__((used)) static int mode_end_map_cb(void *params_) {
    struct mode_json_params *params = (struct mode_json_params *)params_;


    params->mode->name = i3string_from_utf8(params->name);
    i3string_set_markup(params->mode->name, params->pango_markup);

    params->mode->name_width = predict_text_width(params->mode->name);

    DLOG("Got mode change: %s\n", i3string_as_utf8(params->mode->name));
    FREE(params->cur_key);

    return 1;
}
