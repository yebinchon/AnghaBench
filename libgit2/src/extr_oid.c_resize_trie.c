
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trie_node ;
struct TYPE_3__ {size_t size; int * nodes; } ;
typedef TYPE_1__ git_oid_shorten ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int * git__reallocarray (int *,size_t,int) ;
 int memset (int *,int,size_t) ;

__attribute__((used)) static int resize_trie(git_oid_shorten *self, size_t new_size)
{
 self->nodes = git__reallocarray(self->nodes, new_size, sizeof(trie_node));
 GIT_ERROR_CHECK_ALLOC(self->nodes);

 if (new_size > self->size) {
  memset(&self->nodes[self->size], 0x0, (new_size - self->size) * sizeof(trie_node));
 }

 self->size = new_size;
 return 0;
}
