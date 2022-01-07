
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 int * parse_value (char const**,int ) ;

JSON_Value * json_parse_string(const char *string) {
    if (string == ((void*)0)) {
        return ((void*)0);
    }
    if (string[0] == '\xEF' && string[1] == '\xBB' && string[2] == '\xBF') {
        string = string + 3;
    }
    return parse_value((const char**)&string, 0);
}
