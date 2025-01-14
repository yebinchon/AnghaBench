
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct diff_data {int new_id; int old_id; void* new_path; void* old_path; } ;
struct TYPE_5__ {int id; scalar_t__ path; } ;
struct TYPE_6__ {int id; scalar_t__ path; } ;
struct TYPE_7__ {TYPE_1__ new_file; TYPE_2__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;


 int GIT_UNUSED (float) ;
 void* git__strdup (scalar_t__) ;
 int git_oid_cpy (int *,int *) ;

__attribute__((used)) static int file_cb(
 const git_diff_delta *delta,
 float progress,
 void *payload)
{
 struct diff_data *diff_data = payload;

 GIT_UNUSED(progress);

 if (delta->old_file.path)
  diff_data->old_path = git__strdup(delta->old_file.path);

 if (delta->new_file.path)
  diff_data->new_path = git__strdup(delta->new_file.path);

 git_oid_cpy(&diff_data->old_id, &delta->old_file.id);
 git_oid_cpy(&diff_data->new_id, &delta->new_file.id);

 return 0;
}
