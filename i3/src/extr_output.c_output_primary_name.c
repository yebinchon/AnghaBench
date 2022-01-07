
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int names_head; } ;
typedef TYPE_1__ Output ;


 TYPE_3__* SLIST_FIRST (int *) ;

char *output_primary_name(Output *output) {
    return SLIST_FIRST(&output->names_head)->name;
}
