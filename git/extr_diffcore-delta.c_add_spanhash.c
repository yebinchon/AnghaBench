
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spanhash_top {int alloc_log2; scalar_t__ free; struct spanhash* data; } ;
struct spanhash {int cnt; unsigned int hashval; } ;


 struct spanhash_top* spanhash_rehash (struct spanhash_top*) ;

__attribute__((used)) static struct spanhash_top *add_spanhash(struct spanhash_top *top,
      unsigned int hashval, int cnt)
{
 int bucket, lim;
 struct spanhash *h;

 lim = (1 << top->alloc_log2);
 bucket = hashval & (lim - 1);
 while (1) {
  h = &(top->data[bucket++]);
  if (!h->cnt) {
   h->hashval = hashval;
   h->cnt = cnt;
   top->free--;
   if (top->free < 0)
    return spanhash_rehash(top);
   return top;
  }
  if (h->hashval == hashval) {
   h->cnt += cnt;
   return top;
  }
  if (lim <= bucket)
   bucket = 0;
 }
}
