
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 int is_valid_utf8 (char const*,size_t) ;
 int * json_value_init_string_no_copy (char*) ;
 int parson_free (char*) ;
 char* parson_strndup (char const*,size_t) ;
 size_t strlen (char const*) ;

JSON_Value * json_value_init_string(const char *string) {
    char *copy = ((void*)0);
    JSON_Value *value;
    size_t string_len = 0;
    if (string == ((void*)0)) {
        return ((void*)0);
    }
    string_len = strlen(string);
    if (!is_valid_utf8(string, string_len)) {
        return ((void*)0);
    }
    copy = parson_strndup(string, string_len);
    if (copy == ((void*)0)) {
        return ((void*)0);
    }
    value = json_value_init_string_no_copy(copy);
    if (value == ((void*)0)) {
        parson_free(copy);
    }
    return value;
}
