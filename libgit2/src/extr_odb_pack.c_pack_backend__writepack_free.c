
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_writepack {int indexer; } ;
struct git_odb_writepack {int dummy; } ;


 int assert (struct pack_writepack*) ;
 int git__free (struct pack_writepack*) ;
 int git_indexer_free (int ) ;

__attribute__((used)) static void pack_backend__writepack_free(struct git_odb_writepack *_writepack)
{
 struct pack_writepack *writepack = (struct pack_writepack *)_writepack;

 assert(writepack);

 git_indexer_free(writepack->indexer);
 git__free(writepack);
}
