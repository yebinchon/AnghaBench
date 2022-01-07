
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_indexer_progress ;


 int _indexer ;
 int git_indexer_append (int ,void*,size_t,int *) ;

__attribute__((used)) static int feed_indexer(void *ptr, size_t len, void *payload)
{
 git_indexer_progress *stats = (git_indexer_progress *)payload;

 return git_indexer_append(_indexer, ptr, len, stats);
}
