
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* onto_name; } ;
typedef TYPE_1__ git_rebase ;



const char *git_rebase_onto_name(git_rebase *rebase) {
 return rebase->onto_name;
}
