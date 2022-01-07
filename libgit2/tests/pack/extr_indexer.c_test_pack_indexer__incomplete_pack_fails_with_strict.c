
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int indexed_objects; int received_objects; int total_objects; int member_0; } ;
typedef TYPE_1__ git_indexer_progress ;
struct TYPE_8__ {int verify; } ;
typedef TYPE_2__ git_indexer_options ;
typedef int git_indexer ;


 TYPE_2__ GIT_INDEXER_OPTIONS_INIT ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_indexer_append (int *,int ,int ,TYPE_1__*) ;
 int git_indexer_commit (int *,TYPE_1__*) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,TYPE_2__*) ;
 int incomplete_pack ;
 int incomplete_pack_len ;

void test_pack_indexer__incomplete_pack_fails_with_strict(void)
{
 git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
 git_indexer *idx = 0;
 git_indexer_progress stats = { 0 };

 opts.verify = 1;

 cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), &opts));
 cl_git_pass(git_indexer_append(
  idx, incomplete_pack, incomplete_pack_len, &stats));
 cl_git_fail(git_indexer_commit(idx, &stats));

 cl_assert_equal_i(stats.total_objects, 2);
 cl_assert_equal_i(stats.received_objects, 2);
 cl_assert_equal_i(stats.indexed_objects, 2);

 git_indexer_free(idx);
}
