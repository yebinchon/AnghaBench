
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef int Output ;
typedef TYPE_1__ Con ;


 int assert (int ) ;
 TYPE_1__* con_get_output (TYPE_1__*) ;
 int * get_output_by_name (int ,int) ;

Output *get_output_for_con(Con *con) {
    Con *output_con = con_get_output(con);
    Output *output = get_output_by_name(output_con->name, 1);
    assert(output != ((void*)0));

    return output;
}
