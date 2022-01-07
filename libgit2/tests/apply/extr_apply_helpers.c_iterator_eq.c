
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_INDEX_ENTRY_STAGE (TYPE_1__ const*) ;
 int GIT_UNUSED (void*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (int ,int ) ;

__attribute__((used)) static int iterator_eq(const git_index_entry **entry, void *_data)
{
 GIT_UNUSED(_data);

 if (!entry[0] || !entry[1])
  return -1;

 cl_assert_equal_i(GIT_INDEX_ENTRY_STAGE(entry[0]), GIT_INDEX_ENTRY_STAGE(entry[1]));
 cl_assert_equal_oid(&entry[0]->id, &entry[1]->id);
 cl_assert_equal_i(entry[0]->mode, entry[1]->mode);
 cl_assert_equal_s(entry[0]->path, entry[1]->path);

 return 0;
}
