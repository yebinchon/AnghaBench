
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
 int cl_git_pass (int ) ;
 int git_indexer_append (int *,int ,int ,TYPE_1__*) ;
 int git_indexer_commit (int *,TYPE_1__*) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,TYPE_2__*) ;
 int out_of_order_pack ;
 int out_of_order_pack_len ;

void test_pack_indexer__out_of_order_with_connectivity_checks(void)
{
 git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
 git_indexer *idx = 0;
 git_indexer_progress stats = { 0 };

 opts.verify = 1;

 cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), &opts));
 cl_git_pass(git_indexer_append(
  idx, out_of_order_pack, out_of_order_pack_len, &stats));
 cl_git_pass(git_indexer_commit(idx, &stats));

 cl_assert_equal_i(stats.total_objects, 3);
 cl_assert_equal_i(stats.received_objects, 3);
 cl_assert_equal_i(stats.indexed_objects, 3);

 git_indexer_free(idx);
}
