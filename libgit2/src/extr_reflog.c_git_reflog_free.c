
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_reflog_entry ;
struct TYPE_7__ {size_t length; } ;
struct TYPE_6__ {struct TYPE_6__* ref_name; TYPE_2__ entries; scalar_t__ db; } ;
typedef TYPE_1__ git_reflog ;


 int GIT_REFCOUNT_DEC (scalar_t__,int ) ;
 int git__free (TYPE_1__*) ;
 int git_refdb__free ;
 int git_reflog_entry__free (int *) ;
 int git_vector_free (TYPE_2__*) ;
 int * git_vector_get (TYPE_2__*,size_t) ;

void git_reflog_free(git_reflog *reflog)
{
 size_t i;
 git_reflog_entry *entry;

 if (reflog == ((void*)0))
  return;

 if (reflog->db)
  GIT_REFCOUNT_DEC(reflog->db, git_refdb__free);

 for (i=0; i < reflog->entries.length; i++) {
  entry = git_vector_get(&reflog->entries, i);

  git_reflog_entry__free(entry);
 }

 git_vector_free(&reflog->entries);
 git__free(reflog->ref_name);
 git__free(reflog);
}
