
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_json_params {int cur_key; int name; } ;


 int FREE (int ) ;
 int sasprintf (int *,char*,size_t,unsigned char const*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int mode_string_cb(void *params_, const unsigned char *val, size_t len) {
    struct mode_json_params *params = (struct mode_json_params *)params_;

    if (!strcmp(params->cur_key, "change")) {
        sasprintf(&(params->name), "%.*s", len, val);
        FREE(params->cur_key);
        return 1;
    }

    FREE(params->cur_key);
    return 0;
}
