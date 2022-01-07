
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ human_readable_key ;
 int human_readable_version ;
 int loaded_config_file_name ;
 scalar_t__ loaded_config_file_name_key ;
 int sasprintf (int *,char*,int,unsigned char const*) ;

__attribute__((used)) static int version_string(void *ctx, const unsigned char *val, size_t len) {
    if (human_readable_key)
        sasprintf(&human_readable_version, "%.*s", (int)len, val);
    if (loaded_config_file_name_key)
        sasprintf(&loaded_config_file_name, "%.*s", (int)len, val);
    return 1;
}
