
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* ref_name; } ;
typedef TYPE_1__ git_annotated_commit ;


 int assert (TYPE_1__ const*) ;

const char *git_annotated_commit_ref(
 const git_annotated_commit *annotated_commit)
{
 assert(annotated_commit);
 return annotated_commit->ref_name;
}
