
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int paired; } ;
typedef TYPE_1__ git_status_list ;
struct TYPE_8__ {scalar_t__ ignore_case; } ;
typedef TYPE_2__ git_index ;


 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 scalar_t__ git_vector_init (int *,int ,int (*) (void const*,void const*)) ;
 int status_entry_cmp (void const*,void const*) ;
 int status_entry_icmp (void const*,void const*) ;

__attribute__((used)) static git_status_list *git_status_list_alloc(git_index *index)
{
 git_status_list *status = ((void*)0);
 int (*entrycmp)(const void *a, const void *b);

 if (!(status = git__calloc(1, sizeof(git_status_list))))
  return ((void*)0);

 entrycmp = index->ignore_case ? status_entry_icmp : status_entry_cmp;

 if (git_vector_init(&status->paired, 0, entrycmp) < 0) {
  git__free(status);
  return ((void*)0);
 }

 return status;
}
