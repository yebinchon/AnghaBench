
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ content; int count; } ;
typedef TYPE_1__ my_struct ;


 int GIT_EEXISTS ;
 int _struct_count ;
 int cl_assert (int) ;
 int git__free (void*) ;

__attribute__((used)) static int merge_structs(void **old_raw, void *new)
{
 my_struct *old = *(my_struct **)old_raw;
 cl_assert(((my_struct *)old)->content == ((my_struct *)new)->content);
 ((my_struct *)old)->count += 1;
 git__free(new);
 _struct_count--;
 return GIT_EEXISTS;
}
