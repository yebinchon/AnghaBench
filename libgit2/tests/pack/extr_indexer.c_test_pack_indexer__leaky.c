
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ git_indexer_progress ;
typedef int git_indexer ;
struct TYPE_6__ {int klass; } ;


 int GIT_ERROR_INDEXER ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_4__* git_error_last () ;
 int git_indexer_append (int *,int ,int ,TYPE_1__*) ;
 int git_indexer_commit (int *,TYPE_1__*) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,int *) ;
 int leaky_pack ;
 int leaky_pack_len ;

void test_pack_indexer__leaky(void)
{
 git_indexer *idx = 0;
 git_indexer_progress stats = { 0 };

 cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), ((void*)0)));
 cl_git_pass(git_indexer_append(
  idx, leaky_pack, leaky_pack_len, &stats));
 cl_git_fail(git_indexer_commit(idx, &stats));

 cl_assert(git_error_last() != ((void*)0));
 cl_assert_equal_i(git_error_last()->klass, GIT_ERROR_INDEXER);

 git_indexer_free(idx);
}
