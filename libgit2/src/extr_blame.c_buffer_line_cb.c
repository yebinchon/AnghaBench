
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_18__ {scalar_t__ origin; } ;
typedef TYPE_1__ git_diff_line ;
typedef TYPE_1__ git_diff_hunk ;
typedef TYPE_1__ git_diff_delta ;
struct TYPE_19__ {int lines_in_hunk; } ;
typedef TYPE_4__ git_blame_hunk ;
struct TYPE_20__ {int current_diff_line; int hunks; TYPE_4__* current_hunk; int path; } ;
typedef TYPE_5__ git_blame ;


 scalar_t__ GIT_DIFF_LINE_ADDITION ;
 scalar_t__ GIT_DIFF_LINE_DELETION ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int GIT_UNUSED (TYPE_1__ const*) ;
 int free_hunk (TYPE_4__*) ;
 scalar_t__ git_blame_get_hunk_byindex (TYPE_5__*,int ) ;
 int git_vector_insert_sorted (int *,TYPE_4__*,int *) ;
 int git_vector_remove (int *,size_t) ;
 int git_vector_search2 (size_t*,int *,int ,TYPE_4__*) ;
 scalar_t__ hunk_ends_at_or_before_line (TYPE_4__*,int) ;
 scalar_t__ hunk_is_bufferblame (TYPE_4__*) ;
 TYPE_4__* new_hunk (size_t,int,int ,int ) ;
 int ptrs_equal_cmp ;
 int shift_hunks_by (int *,size_t,int) ;

__attribute__((used)) static int buffer_line_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 git_blame *blame = (git_blame*)payload;

 GIT_UNUSED(delta);
 GIT_UNUSED(hunk);
 GIT_UNUSED(line);

 if (line->origin == GIT_DIFF_LINE_ADDITION) {
  if (hunk_is_bufferblame(blame->current_hunk) &&
      hunk_ends_at_or_before_line(blame->current_hunk, blame->current_diff_line)) {

   blame->current_hunk->lines_in_hunk++;
   shift_hunks_by(&blame->hunks, blame->current_diff_line+1, 1);
  } else {

   shift_hunks_by(&blame->hunks, blame->current_diff_line, 1);
   blame->current_hunk = new_hunk(blame->current_diff_line, 1, 0, blame->path);
   GIT_ERROR_CHECK_ALLOC(blame->current_hunk);

   git_vector_insert_sorted(&blame->hunks, blame->current_hunk, ((void*)0));
  }
  blame->current_diff_line++;
 }

 if (line->origin == GIT_DIFF_LINE_DELETION) {

  size_t shift_base = blame->current_diff_line + blame->current_hunk->lines_in_hunk+1;

  if (--(blame->current_hunk->lines_in_hunk) == 0) {
   size_t i;
   shift_base--;
   if (!git_vector_search2(&i, &blame->hunks, ptrs_equal_cmp, blame->current_hunk)) {
    git_vector_remove(&blame->hunks, i);
    free_hunk(blame->current_hunk);
    blame->current_hunk = (git_blame_hunk*)git_blame_get_hunk_byindex(blame, (uint32_t)i);
   }
  }
  shift_hunks_by(&blame->hunks, shift_base, -1);
 }
 return 0;
}
