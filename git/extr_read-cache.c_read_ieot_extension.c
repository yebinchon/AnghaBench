
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct index_entry_offset_table {int nr; TYPE_1__* entries; } ;
struct index_entry_offset {int dummy; } ;
struct TYPE_4__ {size_t rawsz; } ;
struct TYPE_3__ {void* nr; void* offset; } ;


 scalar_t__ CACHE_EXT (char const*) ;
 scalar_t__ CACHE_EXT_INDEXENTRYOFFSETTABLE ;
 size_t IEOT_VERSION ;
 int error (char*,int) ;
 void* get_be32 (char const*) ;
 TYPE_2__* the_hash_algo ;
 struct index_entry_offset_table* xmalloc (int) ;

__attribute__((used)) static struct index_entry_offset_table *read_ieot_extension(const char *mmap, size_t mmap_size, size_t offset)
{
 const char *index = ((void*)0);
 uint32_t extsize, ext_version;
 struct index_entry_offset_table *ieot;
 int i, nr;


 if (!offset)
  return ((void*)0);
 while (offset <= mmap_size - the_hash_algo->rawsz - 8) {
  extsize = get_be32(mmap + offset + 4);
  if (CACHE_EXT((mmap + offset)) == CACHE_EXT_INDEXENTRYOFFSETTABLE) {
   index = mmap + offset + 4 + 4;
   break;
  }
  offset += 8;
  offset += extsize;
 }
 if (!index)
  return ((void*)0);


 ext_version = get_be32(index);
 if (ext_version != IEOT_VERSION) {
  error("invalid IEOT version %d", ext_version);
  return ((void*)0);
 }
 index += sizeof(uint32_t);


 nr = (extsize - sizeof(uint32_t)) / (sizeof(uint32_t) + sizeof(uint32_t));
 if (!nr) {
  error("invalid number of IEOT entries %d", nr);
  return ((void*)0);
 }
 ieot = xmalloc(sizeof(struct index_entry_offset_table)
         + (nr * sizeof(struct index_entry_offset)));
 ieot->nr = nr;
 for (i = 0; i < nr; i++) {
  ieot->entries[i].offset = get_be32(index);
  index += sizeof(uint32_t);
  ieot->entries[i].nr = get_be32(index);
  index += sizeof(uint32_t);
 }

 return ieot;
}
