
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Object ;


 scalar_t__ JSONFailure ;
 int SKIP_CHAR (char const**) ;
 int SKIP_WHITESPACES (char const**) ;
 char* get_quoted_string (char const**) ;
 scalar_t__ json_object_add (int *,char*,int *) ;
 int json_object_get_count (int *) ;
 scalar_t__ json_object_resize (int *,int ) ;
 int json_value_free (int *) ;
 int * json_value_get_object (int *) ;
 int * json_value_init_object () ;
 int * parse_value (char const**,size_t) ;
 int parson_free (char*) ;

__attribute__((used)) static JSON_Value * parse_object_value(const char **string, size_t nesting) {
    JSON_Value *output_value = json_value_init_object(), *new_value = ((void*)0);
    JSON_Object *output_object = json_value_get_object(output_value);
    char *new_key = ((void*)0);
    if (output_value == ((void*)0) || **string != '{') {
        return ((void*)0);
    }
    SKIP_CHAR(string);
    SKIP_WHITESPACES(string);
    if (**string == '}') {
        SKIP_CHAR(string);
        return output_value;
    }
    while (**string != '\0') {
        new_key = get_quoted_string(string);
        if (new_key == ((void*)0)) {
            json_value_free(output_value);
            return ((void*)0);
        }
        SKIP_WHITESPACES(string);
        if (**string != ':') {
            parson_free(new_key);
            json_value_free(output_value);
            return ((void*)0);
        }
        SKIP_CHAR(string);
        new_value = parse_value(string, nesting);
        if (new_value == ((void*)0)) {
            parson_free(new_key);
            json_value_free(output_value);
            return ((void*)0);
        }
        if (json_object_add(output_object, new_key, new_value) == JSONFailure) {
            parson_free(new_key);
            json_value_free(new_value);
            json_value_free(output_value);
            return ((void*)0);
        }
        parson_free(new_key);
        SKIP_WHITESPACES(string);
        if (**string != ',') {
            break;
        }
        SKIP_CHAR(string);
        SKIP_WHITESPACES(string);
    }
    SKIP_WHITESPACES(string);
    if (**string != '}' ||
        json_object_resize(output_object, json_object_get_count(output_object)) == JSONFailure) {
            json_value_free(output_value);
            return ((void*)0);
    }
    SKIP_CHAR(string);
    return output_value;
}
