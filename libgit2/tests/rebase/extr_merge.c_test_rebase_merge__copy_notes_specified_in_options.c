
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* rewrite_notes_ref; } ;
typedef TYPE_1__ git_rebase_options ;


 TYPE_1__ GIT_REBASE_OPTIONS_INIT ;
 int test_copy_note (TYPE_1__*,int) ;

void test_rebase_merge__copy_notes_specified_in_options(void)
{
 git_rebase_options opts = GIT_REBASE_OPTIONS_INIT;
 opts.rewrite_notes_ref = "refs/notes/test";

 test_copy_note(&opts, 1);
}
