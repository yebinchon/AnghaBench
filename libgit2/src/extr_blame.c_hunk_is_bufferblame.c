
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int final_commit_id; } ;
typedef TYPE_1__ git_blame_hunk ;


 int git_oid_is_zero (int *) ;

__attribute__((used)) static bool hunk_is_bufferblame(git_blame_hunk *hunk)
{
 return git_oid_is_zero(&hunk->final_commit_id);
}
