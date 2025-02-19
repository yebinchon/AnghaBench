
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int human_readable_key ;
 int loaded_config_file_name_key ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int version_map_key(void *ctx, const unsigned char *stringval, size_t stringlen) {
    human_readable_key = (stringlen == strlen("human_readable") &&
                          strncmp((const char *)stringval, "human_readable", strlen("human_readable")) == 0);
    loaded_config_file_name_key = (stringlen == strlen("loaded_config_file_name") &&
                                   strncmp((const char *)stringval, "loaded_config_file_name", strlen("loaded_config_file_name")) == 0);
    return 1;
}
