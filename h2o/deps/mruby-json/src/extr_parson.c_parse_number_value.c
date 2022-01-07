
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ intmax_t ;
typedef int JSON_Value ;


 scalar_t__ INT64_MAX ;
 scalar_t__ INT64_MIN ;
 scalar_t__ errno ;
 int is_decimal (char const*,int) ;
 int * json_value_init_fixed (scalar_t__) ;
 int * json_value_init_number (double) ;
 double strtod (char const*,char**) ;
 scalar_t__ strtoimax (char const*,char**,int) ;

__attribute__((used)) static JSON_Value * parse_number_value(const char **string) {
    char *end;
    double number = 0;
    errno = 0;
    number = strtod(*string, &end);
    if (errno || !is_decimal(*string, end - *string)) {
        return ((void*)0);
    }
    *string = end;
    return json_value_init_number(number);
}
