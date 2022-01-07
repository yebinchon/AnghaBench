
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_indexer ;


 int _stats ;
 int cl_git_pass (int ) ;
 int git_indexer_append (int *,void*,size_t,int *) ;

__attribute__((used)) static int foreach_cb(void *buf, size_t len, void *payload)
{
 git_indexer *idx = (git_indexer *) payload;
 cl_git_pass(git_indexer_append(idx, buf, len, &_stats));
 return 0;
}
