
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_7__ {int remove_conflicts; } ;
typedef TYPE_2__ checkout_data ;


 int GIT_ERROR_CHECK_ALLOC (char const*) ;
 int abort () ;
 int assert (int ) ;
 char* git__strdup (int ) ;
 int git_vector_insert (int *,char*) ;

__attribute__((used)) static int checkout_conflict_append_remove(
 const git_index_entry *ancestor,
 const git_index_entry *ours,
 const git_index_entry *theirs,
 void *payload)
{
 checkout_data *data = payload;
 const char *name;

 assert(ancestor || ours || theirs);

 if (ancestor)
  name = git__strdup(ancestor->path);
 else if (ours)
  name = git__strdup(ours->path);
 else if (theirs)
  name = git__strdup(theirs->path);
 else
  abort();

 GIT_ERROR_CHECK_ALLOC(name);

 return git_vector_insert(&data->remove_conflicts, (char *)name);
}
