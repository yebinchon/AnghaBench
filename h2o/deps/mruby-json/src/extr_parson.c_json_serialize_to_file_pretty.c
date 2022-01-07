
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Status ;
typedef int FILE ;


 scalar_t__ EOF ;
 int JSONFailure ;
 int JSONSuccess ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fputs (char*,int *) ;
 int json_free_serialized_string (char*) ;
 char* json_serialize_to_string_pretty (int const*) ;

JSON_Status json_serialize_to_file_pretty(const JSON_Value *value, const char *filename) {
    JSON_Status return_code = JSONSuccess;
    FILE *fp = ((void*)0);
    char *serialized_string = json_serialize_to_string_pretty(value);
    if (serialized_string == ((void*)0)) {
        return JSONFailure;
    }
    fp = fopen(filename, "w");
    if (fp == ((void*)0)) {
        json_free_serialized_string(serialized_string);
        return JSONFailure;
    }
    if (fputs(serialized_string, fp) == EOF) {
        return_code = JSONFailure;
    }
    if (fclose(fp) == EOF) {
        return_code = JSONFailure;
    }
    json_free_serialized_string(serialized_string);
    return return_code;
}
