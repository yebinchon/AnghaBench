
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_writepack {int indexer; } ;
struct git_odb_writepack {int dummy; } ;
typedef int git_indexer_progress ;


 int assert (struct pack_writepack*) ;
 int git_indexer_append (int ,void const*,size_t,int *) ;

__attribute__((used)) static int pack_backend__writepack_append(struct git_odb_writepack *_writepack, const void *data, size_t size, git_indexer_progress *stats)
{
 struct pack_writepack *writepack = (struct pack_writepack *)_writepack;

 assert(writepack);

 return git_indexer_append(writepack->indexer, data, size, stats);
}
