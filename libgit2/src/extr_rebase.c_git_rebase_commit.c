
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ inmemory; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_oid ;


 scalar_t__ GIT_REBASE_TYPE_MERGE ;
 int abort () ;
 int assert (int) ;
 int rebase_commit_inmemory (int *,TYPE_1__*,int const*,int const*,char const*,char const*) ;
 int rebase_commit_merge (int *,TYPE_1__*,int const*,int const*,char const*,char const*) ;

int git_rebase_commit(
 git_oid *id,
 git_rebase *rebase,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message)
{
 int error;

 assert(rebase && committer);

 if (rebase->inmemory)
  error = rebase_commit_inmemory(
   id, rebase, author, committer, message_encoding, message);
 else if (rebase->type == GIT_REBASE_TYPE_MERGE)
  error = rebase_commit_merge(
   id, rebase, author, committer, message_encoding, message);
 else
  abort();

 return error;
}
