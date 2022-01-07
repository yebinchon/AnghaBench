
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* str; } ;
typedef TYPE_1__ word_t ;


 int LOAD_BITS (int) ;
 int MAX_TEXT_LEN ;
 int NotWordCharDict ;
 int NotWordDict ;
 int WordCharDict ;
 int WordDict ;
 int assert (int) ;
 unsigned int bswap_32 (unsigned int) ;
 int char_code_lookup (int *,unsigned int,int*) ;
 TYPE_1__* word_code_lookup (int *,unsigned int,int*) ;

int unpack_message (char *buff, char *from, int packed_len) {
  char *wptr = buff, *rptr = from;
  int bits = packed_len * 8 - 1;
  int k = from[packed_len-1];

  assert (k);
  while (!(k & 1)) { k >>= 1; bits--; }

  unsigned t = bswap_32 (*((unsigned *) rptr));
  unsigned z = (((unsigned char) rptr[4]) << 1) + 1;
  rptr += 5;



  while (bits > 0) {
    word_t *W;
    int c, N, l;


    W = word_code_lookup (&WordDict, t, &l);
    { int n=(l); bits-=n; do {if (!(z&0xff)) {z=((*rptr++)<<1)+1;} t<<=1; if (z&0x100) t++; z<<=1;} while (--n);};
    if (W->len != 2 || W->str[0]) {
      char *p = W->str, *q = p + W->len;
      while (p < q) {
        *wptr++ = *p++;
      }
    } else {

      N = (unsigned char) W->str[1];
      assert (N > 0);
      do {
        c = char_code_lookup (&WordCharDict, t, &l);
        { int n=(l); bits-=n; do {if (!(z&0xff)) {z=((*rptr++)<<1)+1;} t<<=1; if (z&0x100) t++; z<<=1;} while (--n);};
        *wptr++ = c;
      } while (--N);
    }

    if (bits <= 0) {
      break;
    }


    W = word_code_lookup (&NotWordDict, t, &l);
    { int n=(l); bits-=n; do {if (!(z&0xff)) {z=((*rptr++)<<1)+1;} t<<=1; if (z&0x100) t++; z<<=1;} while (--n);};
    if (W->len != 2 || W->str[0]) {
      char *p = W->str, *q = p + W->len;
      while (p < q) {
        *wptr++ = *p++;
      }
    } else {

      N = (unsigned char) W->str[1];
      assert (N > 0);
      do {
        c = char_code_lookup (&NotWordCharDict, t, &l);
        { int n=(l); bits-=n; do {if (!(z&0xff)) {z=((*rptr++)<<1)+1;} t<<=1; if (z&0x100) t++; z<<=1;} while (--n);};
        *wptr++ = c;
      } while (--N);
    }
  }
  assert (!bits && wptr < buff + MAX_TEXT_LEN);



  *wptr = 0;

  return wptr - buff;
}
