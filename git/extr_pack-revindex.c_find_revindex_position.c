
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revindex_entry {scalar_t__ offset; } ;
struct packed_git {int num_objects; struct revindex_entry* revindex; } ;
typedef scalar_t__ off_t ;


 int error (char*) ;

int find_revindex_position(struct packed_git *p, off_t ofs)
{
 int lo = 0;
 int hi = p->num_objects + 1;
 const struct revindex_entry *revindex = p->revindex;

 do {
  const unsigned mi = lo + (hi - lo) / 2;
  if (revindex[mi].offset == ofs) {
   return mi;
  } else if (ofs < revindex[mi].offset)
   hi = mi;
  else
   lo = mi + 1;
 } while (lo < hi);

 error("bad offset for revindex");
 return -1;
}
