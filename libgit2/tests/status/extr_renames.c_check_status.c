
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct status_entry {scalar_t__ newname; scalar_t__ oldname; int status; } ;
typedef int git_status_list ;
struct TYPE_15__ {int status; TYPE_6__* head_to_index; TYPE_4__* index_to_workdir; } ;
typedef TYPE_7__ git_status_entry ;
struct TYPE_13__ {char* path; } ;
struct TYPE_9__ {char* path; } ;
struct TYPE_14__ {TYPE_5__ new_file; TYPE_1__ old_file; } ;
struct TYPE_11__ {char* path; } ;
struct TYPE_10__ {char* path; } ;
struct TYPE_12__ {TYPE_3__ new_file; TYPE_2__ old_file; } ;


 int GIT_STATUS_INDEX_RENAMED ;
 int GIT_STATUS_WT_RENAMED ;
 int cl_assert (int ) ;
 int cl_assert_equal_i_fmt (int ,int,char*) ;
 int cl_assert_equal_s (char const*,scalar_t__) ;
 int cl_assert_equal_sz (size_t,size_t) ;
 TYPE_7__* git_status_byindex (int *,size_t) ;
 size_t git_status_list_entrycount (int *) ;

__attribute__((used)) static void check_status(
 git_status_list *status_list,
 struct status_entry *expected_list,
 size_t expected_len)
{
 const git_status_entry *actual;
 const struct status_entry *expected;
 const char *oldname, *newname;
 size_t i, files_in_status = git_status_list_entrycount(status_list);

 cl_assert_equal_sz(expected_len, files_in_status);

 for (i = 0; i < expected_len; i++) {
  actual = git_status_byindex(status_list, i);
  expected = &expected_list[i];

  oldname = actual->head_to_index ? actual->head_to_index->old_file.path :
   actual->index_to_workdir ? actual->index_to_workdir->old_file.path : ((void*)0);

  newname = actual->index_to_workdir ? actual->index_to_workdir->new_file.path :
   actual->head_to_index ? actual->head_to_index->new_file.path : ((void*)0);

  cl_assert_equal_i_fmt(expected->status, actual->status, "%04x");

  if (expected->oldname) {
   cl_assert(oldname != ((void*)0));
   cl_assert_equal_s(oldname, expected->oldname);
  } else {
   cl_assert(oldname == ((void*)0));
  }

  if (actual->status & (GIT_STATUS_INDEX_RENAMED|GIT_STATUS_WT_RENAMED)) {
   if (expected->newname) {
    cl_assert(newname != ((void*)0));
    cl_assert_equal_s(newname, expected->newname);
   } else {
    cl_assert(newname == ((void*)0));
   }
  }
 }
}
