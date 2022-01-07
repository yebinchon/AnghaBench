
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_json_params {int pango_markup; int cur_key; } ;


 int DLOG (char*,int) ;
 int FREE (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int mode_boolean_cb(void *params_, int val) {
    struct mode_json_params *params = (struct mode_json_params *)params_;

    if (strcmp(params->cur_key, "pango_markup") == 0) {
        DLOG("Setting pango_markup to %d.\n", val);
        params->pango_markup = val;

        FREE(params->cur_key);
        return 1;
    }

    FREE(params->cur_key);
    return 0;
}
