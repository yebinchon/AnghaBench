
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user_id; TYPE_1__* search_mf; } ;
typedef TYPE_2__ user_t ;
struct TYPE_4__ {int len; int data; } ;


 int * QWords ;
 int assert (int) ;
 scalar_t__ cur_bit ;
 int fprintf (int ,char*,...) ;
 int load_bit () ;
 int stderr ;

int get_word_metafile_len (unsigned char *wm, int ws, user_t *U, int word_idx) {
 int s = (*wm >> 2) + 6;
 unsigned char *ptr = wm + (s >> 3);
 int m = ((((int) *ptr++) << 24) | (1 << 23)) << (s & 7);


 int a = 0;
 while ((m < 0)) {
   a++;
   { m <<= 1; if (unlikely(m == (-1 << 31))) { m = ((int) *ptr++ << 24) + (1 << 23); } };
   assert (a <= 30);
 }
 { m <<= 1; if (unlikely(m == (-1 << 31))) { m = ((int) *ptr++ << 24) + (1 << 23); } };
 int r = 1;
 while (a > 0) {
   r <<= 1;
   r += (m < 0);
   { m <<= 1; if (unlikely(m == (-1 << 31))) { m = ((int) *ptr++ << 24) + (1 << 23); } };
   a--;
 }
 if (m & (1 << 23)) {
   ptr--;
 }
 if (ptr > wm + ws) {
   fprintf (stderr, "ptr=%p wm=%p ws=%d r=%d user_id=%d word_idx=%d word_crc32=%016llx search_mf_data=%p search_mf_len=%d\n", ptr, wm, ws, r, U->user_id, word_idx, QWords[word_idx], U->search_mf ? U->search_mf->data : 0, U->search_mf ? U->search_mf->len : -1);
   int i;
   for (i = 0; i < 32 && i < ptr - wm; i++) {
     fprintf (stderr, "%02x ", wm[i]);
   }
   fprintf (stderr, "\n");
 }
 assert (ptr <= wm + ws);
 return r;
}
