
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iterator_compare_data {size_t idx; size_t cnt; TYPE_1__* expected; } ;
typedef int git_oid ;
struct TYPE_6__ {int path; int mode; int id; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_5__ {int path; int mode; int oid_str; int stage; } ;


 int GIT_INDEX_ENTRY_STAGE (TYPE_2__ const*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;

__attribute__((used)) static int iterator_compare(const git_index_entry *entry, void *_data)
{
 git_oid expected_id;

 struct iterator_compare_data *data = (struct iterator_compare_data *)_data;

 cl_assert_equal_i(GIT_INDEX_ENTRY_STAGE(entry), data->expected[data->idx].stage);
 cl_git_pass(git_oid_fromstr(&expected_id, data->expected[data->idx].oid_str));
 cl_assert_equal_oid(&entry->id, &expected_id);
 cl_assert_equal_i(entry->mode, data->expected[data->idx].mode);
 cl_assert_equal_s(entry->path, data->expected[data->idx].path);

 if (data->idx >= data->cnt)
  return -1;

 data->idx++;

 return 0;
}
