
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int orig_signature; int final_signature; int boundary; int final_commit_id; int orig_commit_id; int orig_path; int orig_start_line_number; int lines_in_hunk; int final_start_line_number; } ;
typedef TYPE_1__ git_blame_hunk ;


 int git_oid_cpy (int *,int *) ;
 int git_signature_dup (int *,int ) ;
 TYPE_1__* new_hunk (int ,int ,int ,int ) ;

__attribute__((used)) static git_blame_hunk* dup_hunk(git_blame_hunk *hunk)
{
 git_blame_hunk *newhunk = new_hunk(
   hunk->final_start_line_number,
   hunk->lines_in_hunk,
   hunk->orig_start_line_number,
   hunk->orig_path);

 if (!newhunk)
  return ((void*)0);

 git_oid_cpy(&newhunk->orig_commit_id, &hunk->orig_commit_id);
 git_oid_cpy(&newhunk->final_commit_id, &hunk->final_commit_id);
 newhunk->boundary = hunk->boundary;
 git_signature_dup(&newhunk->final_signature, hunk->final_signature);
 git_signature_dup(&newhunk->orig_signature, hunk->orig_signature);
 return newhunk;
}
