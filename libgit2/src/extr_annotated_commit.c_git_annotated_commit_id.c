
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int commit; } ;
typedef TYPE_1__ git_annotated_commit ;


 int assert (TYPE_1__ const*) ;
 int const* git_commit_id (int ) ;

const git_oid *git_annotated_commit_id(
 const git_annotated_commit *annotated_commit)
{
 assert(annotated_commit);
 return git_commit_id(annotated_commit->commit);
}
