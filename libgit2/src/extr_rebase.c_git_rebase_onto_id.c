
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const onto_id; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_oid ;



const git_oid *git_rebase_onto_id(git_rebase *rebase) {
 return &rebase->onto_id;
}
