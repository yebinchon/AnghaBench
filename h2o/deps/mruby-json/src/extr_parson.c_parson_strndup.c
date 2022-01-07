
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ parson_malloc (size_t) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static char * parson_strndup(const char *string, size_t n) {
    char *output_string = (char*)parson_malloc(n + 1);
    if (!output_string) {
        return ((void*)0);
    }
    output_string[n] = '\0';
    strncpy(output_string, string, n);
    return output_string;
}
