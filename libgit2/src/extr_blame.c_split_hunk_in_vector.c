
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_6__ {size_t lines_in_hunk; int orig_commit_id; int final_commit_id; int orig_path; scalar_t__ orig_start_line_number; scalar_t__ final_start_line_number; } ;
typedef TYPE_1__ git_blame_hunk ;


 int git_oid_cpy (int *,int *) ;
 int git_vector_insert_sorted (int *,TYPE_1__*,int *) ;
 TYPE_1__* new_hunk (scalar_t__,size_t,scalar_t__,int ) ;

__attribute__((used)) static git_blame_hunk *split_hunk_in_vector(
  git_vector *vec,
  git_blame_hunk *hunk,
  size_t rel_line,
  bool return_new)
{
 size_t new_line_count;
 git_blame_hunk *nh;


 if (rel_line <= 0 ||
     rel_line >= hunk->lines_in_hunk)
 {
  return hunk;
 }

 new_line_count = hunk->lines_in_hunk - rel_line;
 nh = new_hunk(hunk->final_start_line_number + rel_line, new_line_count,
   hunk->orig_start_line_number + rel_line, hunk->orig_path);

 if (!nh)
  return ((void*)0);

 git_oid_cpy(&nh->final_commit_id, &hunk->final_commit_id);
 git_oid_cpy(&nh->orig_commit_id, &hunk->orig_commit_id);


 hunk->lines_in_hunk -= new_line_count;
 git_vector_insert_sorted(vec, nh, ((void*)0));
 {
  git_blame_hunk *ret = return_new ? nh : hunk;
  return ret;
 }
}
