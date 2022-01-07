
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ id_abbrev; scalar_t__ mode; int path; int id; } ;
struct TYPE_5__ {scalar_t__ id_abbrev; scalar_t__ mode; int path; int id; } ;
struct TYPE_7__ {scalar_t__ status; scalar_t__ flags; scalar_t__ similarity; scalar_t__ nfiles; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_diff ;


 scalar_t__ GIT_DELTA_UNMODIFIED ;
 int assert (int) ;
 int cl_assert_equal_i (scalar_t__,scalar_t__) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (int ,int ) ;
 TYPE_3__* git_diff_get_delta (int *,size_t) ;
 size_t git_diff_num_deltas (int *) ;
 scalar_t__ num_modified_deltas (int *) ;

void diff_assert_equal(git_diff *a, git_diff *b)
{
 const git_diff_delta *ad, *bd;
 size_t i, j;

 assert(a && b);

 cl_assert_equal_i(num_modified_deltas(a), num_modified_deltas(b));

 for (i = 0, j = 0;
  i < git_diff_num_deltas(a) && j < git_diff_num_deltas(b); ) {

  ad = git_diff_get_delta(a, i);
  bd = git_diff_get_delta(b, j);

  if (ad->status == GIT_DELTA_UNMODIFIED) {
   i++;
   continue;
  }
  if (bd->status == GIT_DELTA_UNMODIFIED) {
   j++;
   continue;
  }

  cl_assert_equal_i(ad->status, bd->status);
  cl_assert_equal_i(ad->flags, bd->flags);
  cl_assert_equal_i(ad->similarity, bd->similarity);
  cl_assert_equal_i(ad->nfiles, bd->nfiles);
  if (ad->old_file.id_abbrev && bd->old_file.id_abbrev) {
   cl_assert_equal_i(ad->old_file.id_abbrev, bd->old_file.id_abbrev);
   cl_assert_equal_oid(&ad->old_file.id, &bd->old_file.id);
   cl_assert_equal_i(ad->old_file.mode, bd->old_file.mode);
  }
  cl_assert_equal_s(ad->old_file.path, bd->old_file.path);

  if (ad->new_file.id_abbrev && bd->new_file.id_abbrev) {
   cl_assert_equal_oid(&ad->new_file.id, &bd->new_file.id);
   cl_assert_equal_i(ad->new_file.id_abbrev, bd->new_file.id_abbrev);
   cl_assert_equal_i(ad->new_file.mode, bd->new_file.mode);
  }
  cl_assert_equal_s(ad->new_file.path, bd->new_file.path);

  i++;
  j++;
 }
}
