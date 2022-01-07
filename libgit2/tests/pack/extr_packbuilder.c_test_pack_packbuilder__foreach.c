
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_indexer ;


 int _packbuilder ;
 int _stats ;
 int cl_git_pass (int ) ;
 int foreach_cb ;
 int git_indexer_commit (int *,int *) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,int *) ;
 int git_packbuilder_foreach (int ,int ,int *) ;
 int seed_packbuilder () ;

void test_pack_packbuilder__foreach(void)
{
 git_indexer *idx;

 seed_packbuilder();
 cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), ((void*)0)));
 cl_git_pass(git_packbuilder_foreach(_packbuilder, foreach_cb, idx));
 cl_git_pass(git_indexer_commit(idx, &_stats));
 git_indexer_free(idx);
}
