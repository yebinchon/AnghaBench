
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t count; } ;
typedef TYPE_1__ git_strarray ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_strarray_free (TYPE_1__*) ;

__attribute__((used)) static size_t count_references(void)
{
 git_strarray array;
 size_t refs;

 cl_git_pass(git_reference_list(&array, g_repo));
 refs = array.count;

 git_strarray_free(&array);

 return refs;
}
