
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Output ;


 int D_DOWN ;
 int D_LEFT ;
 int D_RIGHT ;
 int D_UP ;
 int focused ;
 int * get_output_by_name (char const*,int) ;
 int * get_output_for_con (int ) ;
 int * get_output_next_wrap (int ,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;

Output *get_output_from_string(Output *current_output, const char *output_str) {
    if (strcasecmp(output_str, "current") == 0) {
        return get_output_for_con(focused);
    } else if (strcasecmp(output_str, "left") == 0) {
        return get_output_next_wrap(D_LEFT, current_output);
    } else if (strcasecmp(output_str, "right") == 0) {
        return get_output_next_wrap(D_RIGHT, current_output);
    } else if (strcasecmp(output_str, "up") == 0) {
        return get_output_next_wrap(D_UP, current_output);
    } else if (strcasecmp(output_str, "down") == 0) {
        return get_output_next_wrap(D_DOWN, current_output);
    }

    return get_output_by_name(output_str, 1);
}
