
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* orig_head_name; } ;
typedef TYPE_1__ git_rebase ;



const char *git_rebase_orig_head_name(git_rebase *rebase) {
 return rebase->orig_head_name;
}
