
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct load_index_extensions {unsigned long src_offset; int mmap_size; scalar_t__ mmap; int istate; } ;
struct TYPE_2__ {int rawsz; } ;


 int _ (char*) ;
 int die (int ) ;
 scalar_t__ get_be32 (scalar_t__) ;
 int munmap (void*,int) ;
 scalar_t__ read_index_extension (int ,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void *load_index_extensions(void *_data)
{
 struct load_index_extensions *p = _data;
 unsigned long src_offset = p->src_offset;

 while (src_offset <= p->mmap_size - the_hash_algo->rawsz - 8) {






  uint32_t extsize = get_be32(p->mmap + src_offset + 4);
  if (read_index_extension(p->istate,
      p->mmap + src_offset,
      p->mmap + src_offset + 8,
      extsize) < 0) {
   munmap((void *)p->mmap, p->mmap_size);
   die(_("index file corrupt"));
  }
  src_offset += 8;
  src_offset += extsize;
 }

 return ((void*)0);
}
