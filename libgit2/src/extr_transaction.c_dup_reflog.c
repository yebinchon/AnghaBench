
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t length; TYPE_1__** contents; } ;
struct TYPE_9__ {int committer; struct TYPE_9__* msg; int oid_cur; int oid_old; TYPE_4__ entries; struct TYPE_9__* ref_name; } ;
typedef TYPE_1__ git_reflog_entry ;
typedef TYPE_1__ git_reflog ;
typedef int git_pool ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int git_oid_cpy (int *,int *) ;
 void* git_pool_mallocz (int *,size_t) ;
 void* git_pool_strdup (int *,TYPE_1__*) ;
 scalar_t__ git_signature__pdup (int *,int ,int *) ;
 TYPE_1__* git_vector_get (TYPE_4__*,size_t) ;

__attribute__((used)) static int dup_reflog(git_reflog **out, const git_reflog *in, git_pool *pool)
{
 git_reflog *reflog;
 git_reflog_entry *entries;
 size_t len, i;

 reflog = git_pool_mallocz(pool, sizeof(git_reflog));
 GIT_ERROR_CHECK_ALLOC(reflog);

 reflog->ref_name = git_pool_strdup(pool, in->ref_name);
 GIT_ERROR_CHECK_ALLOC(reflog->ref_name);

 len = in->entries.length;
 reflog->entries.length = len;
 reflog->entries.contents = git_pool_mallocz(pool, len * sizeof(void *));
 GIT_ERROR_CHECK_ALLOC(reflog->entries.contents);

 entries = git_pool_mallocz(pool, len * sizeof(git_reflog_entry));
 GIT_ERROR_CHECK_ALLOC(entries);

 for (i = 0; i < len; i++) {
  const git_reflog_entry *src;
  git_reflog_entry *tgt;

  tgt = &entries[i];
  reflog->entries.contents[i] = tgt;

  src = git_vector_get(&in->entries, i);
  git_oid_cpy(&tgt->oid_old, &src->oid_old);
  git_oid_cpy(&tgt->oid_cur, &src->oid_cur);

  tgt->msg = git_pool_strdup(pool, src->msg);
  GIT_ERROR_CHECK_ALLOC(tgt->msg);

  if (git_signature__pdup(&tgt->committer, src->committer, pool) < 0)
   return -1;
 }


 *out = reflog;
 return 0;
}
