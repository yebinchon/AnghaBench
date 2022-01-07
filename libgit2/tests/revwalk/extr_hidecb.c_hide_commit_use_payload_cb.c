
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 scalar_t__ git_oid_cmp (int const*,int *) ;

__attribute__((used)) static int hide_commit_use_payload_cb(const git_oid *commit_id, void *data)
{
 git_oid *hide_commit_id = data;

 return (git_oid_cmp(commit_id, hide_commit_id) == 0);
}
