
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_midx_entry {scalar_t__ pack_mtime; int pack_int_id; int oid; } ;


 int oidcmp (int *,int *) ;

__attribute__((used)) static int midx_oid_compare(const void *_a, const void *_b)
{
 const struct pack_midx_entry *a = (const struct pack_midx_entry *)_a;
 const struct pack_midx_entry *b = (const struct pack_midx_entry *)_b;
 int cmp = oidcmp(&a->oid, &b->oid);

 if (cmp)
  return cmp;

 if (a->pack_mtime > b->pack_mtime)
  return -1;
 else if (a->pack_mtime < b->pack_mtime)
  return 1;

 return a->pack_int_id - b->pack_int_id;
}
