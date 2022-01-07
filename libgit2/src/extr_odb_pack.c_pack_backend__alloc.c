
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * free; int * freshen; int * writepack; int * foreach; int * refresh; int * exists_prefix; int * exists; int * read_header; int * read_prefix; int * read; int version; } ;
struct pack_backend {TYPE_1__ parent; int packs; } ;


 int GIT_ERROR_CHECK_ALLOC (struct pack_backend*) ;
 int GIT_ODB_BACKEND_VERSION ;
 struct pack_backend* git__calloc (int,int) ;
 int git__free (struct pack_backend*) ;
 scalar_t__ git_vector_init (int *,size_t,int ) ;
 int pack_backend__exists ;
 int pack_backend__exists_prefix ;
 int pack_backend__foreach ;
 int pack_backend__free ;
 int pack_backend__freshen ;
 int pack_backend__read ;
 int pack_backend__read_header ;
 int pack_backend__read_prefix ;
 int pack_backend__refresh ;
 int pack_backend__writepack ;
 int packfile_sort__cb ;

__attribute__((used)) static int pack_backend__alloc(struct pack_backend **out, size_t initial_size)
{
 struct pack_backend *backend = git__calloc(1, sizeof(struct pack_backend));
 GIT_ERROR_CHECK_ALLOC(backend);

 if (git_vector_init(&backend->packs, initial_size, packfile_sort__cb) < 0) {
  git__free(backend);
  return -1;
 }

 backend->parent.version = GIT_ODB_BACKEND_VERSION;

 backend->parent.read = &pack_backend__read;
 backend->parent.read_prefix = &pack_backend__read_prefix;
 backend->parent.read_header = &pack_backend__read_header;
 backend->parent.exists = &pack_backend__exists;
 backend->parent.exists_prefix = &pack_backend__exists_prefix;
 backend->parent.refresh = &pack_backend__refresh;
 backend->parent.foreach = &pack_backend__foreach;
 backend->parent.writepack = &pack_backend__writepack;
 backend->parent.freshen = &pack_backend__freshen;
 backend->parent.free = &pack_backend__free;

 *out = backend;
 return 0;
}
