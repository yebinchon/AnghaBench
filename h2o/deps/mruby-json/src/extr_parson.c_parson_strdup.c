
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* parson_strndup (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char * parson_strdup(const char *string) {
    return parson_strndup(string, strlen(string));
}
