
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parson_free (char*) ;

void json_free_serialized_string(char *string) {
    parson_free(string);
}
