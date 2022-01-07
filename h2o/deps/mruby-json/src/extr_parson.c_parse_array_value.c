
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Array ;


 scalar_t__ JSONFailure ;
 int SKIP_CHAR (char const**) ;
 int SKIP_WHITESPACES (char const**) ;
 scalar_t__ json_array_add (int *,int *) ;
 int json_array_get_count (int *) ;
 scalar_t__ json_array_resize (int *,int ) ;
 int json_value_free (int *) ;
 int * json_value_get_array (int *) ;
 int * json_value_init_array () ;
 int * parse_value (char const**,size_t) ;

__attribute__((used)) static JSON_Value * parse_array_value(const char **string, size_t nesting) {
    JSON_Value *output_value = json_value_init_array(), *new_array_value = ((void*)0);
    JSON_Array *output_array = json_value_get_array(output_value);
    if (!output_value || **string != '[') {
        return ((void*)0);
    }
    SKIP_CHAR(string);
    SKIP_WHITESPACES(string);
    if (**string == ']') {
        SKIP_CHAR(string);
        return output_value;
    }
    while (**string != '\0') {
        new_array_value = parse_value(string, nesting);
        if (new_array_value == ((void*)0)) {
            json_value_free(output_value);
            return ((void*)0);
        }
        if (json_array_add(output_array, new_array_value) == JSONFailure) {
            json_value_free(new_array_value);
            json_value_free(output_value);
            return ((void*)0);
        }
        SKIP_WHITESPACES(string);
        if (**string != ',') {
            break;
        }
        SKIP_CHAR(string);
        SKIP_WHITESPACES(string);
    }
    SKIP_WHITESPACES(string);
    if (**string != ']' ||
        json_array_resize(output_array, json_array_get_count(output_array)) == JSONFailure) {
            json_value_free(output_value);
            return ((void*)0);
    }
    SKIP_CHAR(string);
    return output_value;
}
