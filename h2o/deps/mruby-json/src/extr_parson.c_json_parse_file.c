
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 int * json_parse_string (char*) ;
 int parson_free (char*) ;
 char* read_file (char const*) ;

JSON_Value * json_parse_file(const char *filename) {
    char *file_contents = read_file(filename);
    JSON_Value *output_value = ((void*)0);
    if (file_contents == ((void*)0)) {
        return ((void*)0);
    }
    output_value = json_parse_string(file_contents);
    parson_free(file_contents);
    return output_value;
}
