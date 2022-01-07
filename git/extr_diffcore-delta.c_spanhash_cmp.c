
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spanhash {scalar_t__ hashval; int cnt; } ;



__attribute__((used)) static int spanhash_cmp(const void *a_, const void *b_)
{
 const struct spanhash *a = a_;
 const struct spanhash *b = b_;


 if (!a->cnt)
  return !b->cnt ? 0 : 1;
 if (!b->cnt)
  return -1;
 return a->hashval < b->hashval ? -1 :
  a->hashval > b->hashval ? 1 : 0;
}
