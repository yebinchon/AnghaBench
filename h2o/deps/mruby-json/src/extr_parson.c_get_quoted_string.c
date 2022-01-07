
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ JSON_Status ;


 scalar_t__ JSONSuccess ;
 char* process_string (char const*,size_t) ;
 scalar_t__ skip_quotes (char const**) ;

__attribute__((used)) static char * get_quoted_string(const char **string) {
    const char *string_start = *string;
    size_t string_len = 0;
    JSON_Status status = skip_quotes(string);
    if (status != JSONSuccess) {
        return ((void*)0);
    }
    string_len = *string - string_start - 2;
    return process_string(string_start + 1, string_len);
}
