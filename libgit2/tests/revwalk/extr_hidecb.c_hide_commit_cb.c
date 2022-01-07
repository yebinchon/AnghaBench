
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_oid ;


 int GIT_UNUSED (void*) ;
 int * commit_ids ;
 scalar_t__ git_oid_cmp (void const*,int *) ;

__attribute__((used)) static int hide_commit_cb(const git_oid *commit_id, void *data)
{
 GIT_UNUSED(commit_id);
 GIT_UNUSED(data);

 return (git_oid_cmp(commit_id, &commit_ids[5]) == 0);
}
