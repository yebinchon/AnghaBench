
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_14__ {int flags; int path; } ;
struct TYPE_11__ {int path; } ;
struct TYPE_12__ {int nfiles; TYPE_4__ new_file; TYPE_1__ old_file; int status; } ;
typedef TYPE_2__ git_diff_delta ;
struct TYPE_13__ {int pool; } ;
typedef TYPE_3__ git_diff ;


 int GIT_DELTA_DELETED ;
 int GIT_DIFF_FLAG_VALID_ID ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 TYPE_2__* git_diff__delta_dup (TYPE_2__ const*,int *) ;
 int git_vector_insert (int *,TYPE_2__*) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static int insert_delete_side_of_split(
 git_diff *diff, git_vector *onto, const git_diff_delta *delta)
{

 git_diff_delta *deleted = git_diff__delta_dup(delta, &diff->pool);
 GIT_ERROR_CHECK_ALLOC(deleted);

 deleted->status = GIT_DELTA_DELETED;
 deleted->nfiles = 1;
 memset(&deleted->new_file, 0, sizeof(deleted->new_file));
 deleted->new_file.path = deleted->old_file.path;
 deleted->new_file.flags |= GIT_DIFF_FLAG_VALID_ID;

 return git_vector_insert(onto, deleted);
}
