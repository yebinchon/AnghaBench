
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 int * parse_value (char const**,int ) ;
 int parson_free (char*) ;
 char* parson_strdup (char const*) ;
 int remove_comments (char*,char*,char*) ;

JSON_Value * json_parse_string_with_comments(const char *string) {
    JSON_Value *result = ((void*)0);
    char *string_mutable_copy = ((void*)0), *string_mutable_copy_ptr = ((void*)0);
    string_mutable_copy = parson_strdup(string);
    if (string_mutable_copy == ((void*)0)) {
        return ((void*)0);
    }
    remove_comments(string_mutable_copy, "/*", "*/");
    remove_comments(string_mutable_copy, "//", "\n");
    string_mutable_copy_ptr = string_mutable_copy;
    result = parse_value((const char**)&string_mutable_copy_ptr, 0);
    parson_free(string_mutable_copy);
    return result;
}
