
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_10__ {char* msg; int const oid_cur; int const oid_old; int committer; } ;
typedef TYPE_1__ git_reflog_entry ;
struct TYPE_11__ {int entries; } ;
typedef TYPE_2__ git_reflog ;
typedef int git_oid ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_OID_HEX_ZERO ;
 int assert (int ) ;
 TYPE_1__* git__calloc (int,int) ;
 char* git__strndup (char const*,size_t) ;
 int git_oid_cpy (int const*,int const*) ;
 int git_oid_fromstr (int const*,int ) ;
 int git_reflog_entry__free (TYPE_1__*) ;
 TYPE_1__* git_reflog_entry_byindex (TYPE_2__*,int ) ;
 scalar_t__ git_signature_dup (int *,int const*) ;
 scalar_t__ git_vector_insert (int *,TYPE_1__*) ;
 size_t strlen (char const*) ;

int git_reflog_append(git_reflog *reflog, const git_oid *new_oid, const git_signature *committer, const char *msg)
{
 const git_reflog_entry *previous;
 git_reflog_entry *entry;

 assert(reflog && new_oid && committer);

 entry = git__calloc(1, sizeof(git_reflog_entry));
 GIT_ERROR_CHECK_ALLOC(entry);

 if ((git_signature_dup(&entry->committer, committer)) < 0)
  goto cleanup;

 if (msg != ((void*)0)) {
  size_t i, msglen = strlen(msg);

  if ((entry->msg = git__strndup(msg, msglen)) == ((void*)0))
   goto cleanup;





  for (i = 0; i < msglen; i++)
   if (entry->msg[i] == '\n')
    entry->msg[i] = ' ';
 }

 previous = git_reflog_entry_byindex(reflog, 0);

 if (previous == ((void*)0))
  git_oid_fromstr(&entry->oid_old, GIT_OID_HEX_ZERO);
 else
  git_oid_cpy(&entry->oid_old, &previous->oid_cur);

 git_oid_cpy(&entry->oid_cur, new_oid);

 if (git_vector_insert(&reflog->entries, entry) < 0)
  goto cleanup;

 return 0;

cleanup:
 git_reflog_entry__free(entry);
 return -1;
}
