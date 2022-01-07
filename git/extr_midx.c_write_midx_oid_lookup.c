
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int hash; } ;
struct pack_midx_entry {TYPE_1__ oid; } ;
struct hashfile {int dummy; } ;


 int BUG (char*,int ,int ) ;
 int hashwrite (struct hashfile*,int ,int) ;
 int oid_to_hex (TYPE_1__*) ;
 scalar_t__ oidcmp (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static size_t write_midx_oid_lookup(struct hashfile *f, unsigned char hash_len,
        struct pack_midx_entry *objects,
        uint32_t nr_objects)
{
 struct pack_midx_entry *list = objects;
 uint32_t i;
 size_t written = 0;

 for (i = 0; i < nr_objects; i++) {
  struct pack_midx_entry *obj = list++;

  if (i < nr_objects - 1) {
   struct pack_midx_entry *next = list;
   if (oidcmp(&obj->oid, &next->oid) >= 0)
    BUG("OIDs not in order: %s >= %s",
        oid_to_hex(&obj->oid),
        oid_to_hex(&next->oid));
  }

  hashwrite(f, obj->oid.hash, (int)hash_len);
  written += hash_len;
 }

 return written;
}
