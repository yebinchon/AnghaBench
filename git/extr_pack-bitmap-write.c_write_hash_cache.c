
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pack_idx_entry {int dummy; } ;
struct object_entry {int hash; } ;
struct hashfile {int dummy; } ;
typedef int hash_value ;


 int hashwrite (struct hashfile*,size_t*,int) ;
 size_t htonl (int ) ;

__attribute__((used)) static void write_hash_cache(struct hashfile *f,
        struct pack_idx_entry **index,
        uint32_t index_nr)
{
 uint32_t i;

 for (i = 0; i < index_nr; ++i) {
  struct object_entry *entry = (struct object_entry *)index[i];
  uint32_t hash_value = htonl(entry->hash);
  hashwrite(f, &hash_value, sizeof(hash_value));
 }
}
