
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spanhash_top {int alloc_log2; int free; struct spanhash* data; } ;
struct spanhash {int hashval; scalar_t__ cnt; } ;


 int INITIAL_FREE (int) ;
 int free (struct spanhash_top*) ;
 int memset (struct spanhash*,int ,int) ;
 int st_add (int,int ) ;
 int st_mult (int,int) ;
 struct spanhash_top* xmalloc (int ) ;

__attribute__((used)) static struct spanhash_top *spanhash_rehash(struct spanhash_top *orig)
{
 struct spanhash_top *new_spanhash;
 int i;
 int osz = 1 << orig->alloc_log2;
 int sz = osz << 1;

 new_spanhash = xmalloc(st_add(sizeof(*orig),
        st_mult(sizeof(struct spanhash), sz)));
 new_spanhash->alloc_log2 = orig->alloc_log2 + 1;
 new_spanhash->free = INITIAL_FREE(new_spanhash->alloc_log2);
 memset(new_spanhash->data, 0, sizeof(struct spanhash) * sz);
 for (i = 0; i < osz; i++) {
  struct spanhash *o = &(orig->data[i]);
  int bucket;
  if (!o->cnt)
   continue;
  bucket = o->hashval & (sz - 1);
  while (1) {
   struct spanhash *h = &(new_spanhash->data[bucket++]);
   if (!h->cnt) {
    h->hashval = o->hashval;
    h->cnt = o->cnt;
    new_spanhash->free--;
    break;
   }
   if (sz <= bucket)
    bucket = 0;
  }
 }
 free(orig);
 return new_spanhash;
}
