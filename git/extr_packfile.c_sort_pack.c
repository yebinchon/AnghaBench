
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_local; scalar_t__ mtime; } ;



__attribute__((used)) static int sort_pack(const void *a_, const void *b_)
{
 const struct packed_git *a = a_;
 const struct packed_git *b = b_;
 int st;







 st = a->pack_local - b->pack_local;
 if (st)
  return -st;






 if (a->mtime < b->mtime)
  return 1;
 else if (a->mtime == b->mtime)
  return 0;
 return -1;
}
