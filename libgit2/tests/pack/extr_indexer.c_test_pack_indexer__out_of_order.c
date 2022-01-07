
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int indexed_objects; int received_objects; int total_objects; int member_0; } ;
typedef TYPE_1__ git_indexer_progress ;
typedef int git_indexer ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_indexer_append (int *,int ,int ,TYPE_1__*) ;
 int git_indexer_commit (int *,TYPE_1__*) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,int *) ;
 int out_of_order_pack ;
 int out_of_order_pack_len ;

void test_pack_indexer__out_of_order(void)
{
 git_indexer *idx = 0;
 git_indexer_progress stats = { 0 };

 cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), ((void*)0)));
 cl_git_pass(git_indexer_append(
  idx, out_of_order_pack, out_of_order_pack_len, &stats));
 cl_git_pass(git_indexer_commit(idx, &stats));

 cl_assert_equal_i(stats.total_objects, 3);
 cl_assert_equal_i(stats.received_objects, 3);
 cl_assert_equal_i(stats.indexed_objects, 3);

 git_indexer_free(idx);
}
