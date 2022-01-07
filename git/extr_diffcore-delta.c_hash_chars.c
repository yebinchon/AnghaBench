
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spanhash_top {int alloc_log2; int data; int free; } ;
struct spanhash {int dummy; } ;
struct repository {int dummy; } ;
struct diff_filespec {unsigned char* data; unsigned int size; } ;


 unsigned int HASHBASE ;
 int INITIAL_FREE (int) ;
 int INITIAL_HASH_SIZE ;
 int QSORT (int ,unsigned long,int ) ;
 struct spanhash_top* add_spanhash (struct spanhash_top*,unsigned int,int) ;
 int diff_filespec_is_binary (struct repository*,struct diff_filespec*) ;
 int memset (int ,int ,int) ;
 int spanhash_cmp ;
 int st_add (int,int ) ;
 int st_mult (int,int) ;
 struct spanhash_top* xmalloc (int ) ;

__attribute__((used)) static struct spanhash_top *hash_chars(struct repository *r,
           struct diff_filespec *one)
{
 int i, n;
 unsigned int accum1, accum2, hashval;
 struct spanhash_top *hash;
 unsigned char *buf = one->data;
 unsigned int sz = one->size;
 int is_text = !diff_filespec_is_binary(r, one);

 i = INITIAL_HASH_SIZE;
 hash = xmalloc(st_add(sizeof(*hash),
         st_mult(sizeof(struct spanhash), 1<<i)));
 hash->alloc_log2 = i;
 hash->free = INITIAL_FREE(i);
 memset(hash->data, 0, sizeof(struct spanhash) * (1<<i));

 n = 0;
 accum1 = accum2 = 0;
 while (sz) {
  unsigned int c = *buf++;
  unsigned int old_1 = accum1;
  sz--;


  if (is_text && c == '\r' && sz && *buf == '\n')
   continue;

  accum1 = (accum1 << 7) ^ (accum2 >> 25);
  accum2 = (accum2 << 7) ^ (old_1 >> 25);
  accum1 += c;
  if (++n < 64 && c != '\n')
   continue;
  hashval = (accum1 + accum2 * 0x61) % HASHBASE;
  hash = add_spanhash(hash, hashval, n);
  n = 0;
  accum1 = accum2 = 0;
 }
 QSORT(hash->data, 1ul << hash->alloc_log2, spanhash_cmp);
 return hash;
}
