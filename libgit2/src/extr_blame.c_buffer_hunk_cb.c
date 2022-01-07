
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {scalar_t__ old_lines; scalar_t__ old_start; scalar_t__ new_start; } ;
typedef TYPE_1__ git_diff_hunk ;
typedef int git_diff_delta ;
struct TYPE_13__ {scalar_t__ orig_start_line_number; } ;
typedef TYPE_2__ git_blame_hunk ;
struct TYPE_14__ {TYPE_2__* current_hunk; int hunks; int path; scalar_t__ current_diff_line; } ;
typedef TYPE_3__ git_blame ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_UNUSED (int const*) ;
 scalar_t__ git_blame_get_hunk_byline (TYPE_3__*,scalar_t__) ;
 int git_vector_insert (int *,TYPE_2__*) ;
 int hunk_starts_at_or_after_line (TYPE_2__*,scalar_t__) ;
 TYPE_2__* new_hunk (scalar_t__,int ,scalar_t__,int ) ;
 TYPE_2__* split_hunk_in_vector (int *,TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static int buffer_hunk_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 void *payload)
{
 git_blame *blame = (git_blame*)payload;
 uint32_t wedge_line;

 GIT_UNUSED(delta);

 wedge_line = (hunk->old_lines == 0) ? hunk->new_start : hunk->old_start;
 blame->current_diff_line = wedge_line;

 blame->current_hunk = (git_blame_hunk*)git_blame_get_hunk_byline(blame, wedge_line);
 if (!blame->current_hunk) {

  blame->current_hunk = new_hunk(wedge_line, 0, wedge_line, blame->path);
  GIT_ERROR_CHECK_ALLOC(blame->current_hunk);

  git_vector_insert(&blame->hunks, blame->current_hunk);
 } else if (!hunk_starts_at_or_after_line(blame->current_hunk, wedge_line)){

  blame->current_hunk = split_hunk_in_vector(&blame->hunks, blame->current_hunk,
    wedge_line - blame->current_hunk->orig_start_line_number, 1);
  GIT_ERROR_CHECK_ALLOC(blame->current_hunk);
 }

 return 0;
}
