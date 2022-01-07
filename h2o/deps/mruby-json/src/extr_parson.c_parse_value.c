
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 size_t MAX_NESTING ;
 int SKIP_WHITESPACES (char const**) ;
 int * parse_array_value (char const**,size_t) ;
 int * parse_boolean_value (char const**) ;
 int * parse_null_value (char const**) ;
 int * parse_number_value (char const**) ;
 int * parse_object_value (char const**,size_t) ;
 int * parse_string_value (char const**) ;

__attribute__((used)) static JSON_Value * parse_value(const char **string, size_t nesting) {
    if (nesting > MAX_NESTING) {
        return ((void*)0);
    }
    SKIP_WHITESPACES(string);
    switch (**string) {
        case '{':
            return parse_object_value(string, nesting + 1);
        case '[':
            return parse_array_value(string, nesting + 1);
        case '\"':
            return parse_string_value(string);
        case 'f': case 't':
            return parse_boolean_value(string);
        case '-':
        case '0': case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
            return parse_number_value(string);
        case 'n':
            return parse_null_value(string);
        default:
            return ((void*)0);
    }
}
