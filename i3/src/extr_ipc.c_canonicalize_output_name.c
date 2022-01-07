
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Output ;


 int * get_output_by_name (char*,int) ;
 char* output_primary_name (int *) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static char *canonicalize_output_name(char *name) {

    if (strcasecmp(name, "primary") == 0) {
        return name;
    }
    Output *output = get_output_by_name(name, 0);
    return output ? output_primary_name(output) : name;
}
