
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_last_key ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* sstrndup (char const*,size_t) ;
 int stdout ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int config_string_cb(void *params, const unsigned char *val, size_t len) {
    char *str = sstrndup((const char *)val, len);
    if (strcmp(config_last_key, "config") == 0) {
        fprintf(stdout, "%s", str);
    }
    free(str);
    return 1;
}
