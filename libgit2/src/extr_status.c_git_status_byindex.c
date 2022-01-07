
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int paired; } ;
typedef TYPE_1__ git_status_list ;
typedef int git_status_entry ;


 int assert (TYPE_1__*) ;
 int const* git_vector_get (int *,size_t) ;

const git_status_entry *git_status_byindex(git_status_list *status, size_t i)
{
 assert(status);

 return git_vector_get(&status->paired, i);
}
