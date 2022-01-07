
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 size_t SIZEOF_TOKEN (char*) ;
 int * json_value_init_null () ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static JSON_Value * parse_null_value(const char **string) {
    size_t token_size = SIZEOF_TOKEN("null");
    if (strncmp("null", *string, token_size) == 0) {
        *string += token_size;
        return json_value_init_null();
    }
    return ((void*)0);
}
