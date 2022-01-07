
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const* hash; } ;
struct pack_idx_entry {TYPE_1__ oid; } ;



__attribute__((used)) static const unsigned char *sha1_access(size_t pos, void *table)
{
 struct pack_idx_entry **index = table;
 return index[pos]->oid.hash;
}
