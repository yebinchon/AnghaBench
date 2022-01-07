
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Output ;
typedef int Con ;


 int ELOG (char*,char const*) ;
 int con_move_to_output (int *,int *,int) ;
 int * get_output_for_con (int *) ;
 int * get_output_from_string (int *,char const*) ;

bool con_move_to_output_name(Con *con, const char *name, bool fix_coordinates) {
    Output *current_output = get_output_for_con(con);
    Output *output = get_output_from_string(current_output, name);
    if (output == ((void*)0)) {
        ELOG("Could not find output \"%s\"\n", name);
        return 0;
    }

    con_move_to_output(con, output, fix_coordinates);
    return 1;
}
