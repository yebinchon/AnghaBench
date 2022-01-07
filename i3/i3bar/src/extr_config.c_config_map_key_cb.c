
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int cur_key ;
 int parsing_bindings ;
 int parsing_tray_outputs ;
 int sasprintf (int *,char*,size_t,unsigned char const*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int config_map_key_cb(void *params_, const unsigned char *keyVal, size_t keyLen) {
    FREE(cur_key);
    sasprintf(&(cur_key), "%.*s", keyLen, keyVal);

    if (strcmp(cur_key, "bindings") == 0) {
        parsing_bindings = 1;
    }

    if (strcmp(cur_key, "tray_outputs") == 0) {
        parsing_tray_outputs = 1;
    }

    return 1;
}
