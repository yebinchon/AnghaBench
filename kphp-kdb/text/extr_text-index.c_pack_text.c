
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ freq; int code_len; int code; } ;
typedef TYPE_1__ word_t ;
struct TYPE_9__ {int * code_len; int * code; } ;
struct TYPE_8__ {int * code_len; int * code; } ;


 int Encode (int ,int ) ;
 int EncodeBit (int) ;
 TYPE_6__ NotWordCharDict ;
 TYPE_1__** NotWordFreqWords ;
 int NotWords ;
 TYPE_4__ WordCharDict ;
 TYPE_1__** WordFreqWords ;
 int Words ;
 int assert (int) ;
 int get_notword (char*) ;
 int get_word (char*) ;
 TYPE_1__* hash_get (int *,char*,int,int ) ;

int pack_text (char *dest, int max_packed_len, char *text, int text_len) {
  char *ptr, *wptr = dest, *wptr_e = dest + max_packed_len;
  int len, x, y = 1;
  word_t *w;




  ptr = text;
  while (*ptr) {
    assert (wptr <= wptr_e);
    len = get_word (ptr);
    assert (len >= 0);

    w = hash_get (&Words, ptr, len, 0);

    if (w && w->freq > 0) {
      { int t=w->code_len; int c=w->code; while (t>0) { { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += c < 0; }; c<<=1; t--; } };
      ptr += len;
    } else {
      w = WordFreqWords[len];
      { int t=w->code_len; int c=w->code; while (t>0) { { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += c < 0; }; c<<=1; t--; } };
      while (len > 0) {
        x = (unsigned char) *ptr++;
        { int t=WordCharDict.code_len[x]; int c=WordCharDict.code[x]; while (t>0) { { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += c < 0; }; c<<=1; t--; } };
        len--;
      }
    }

    if (!*ptr) {
      break;
    }

    len = get_notword(ptr);
    if (len < 0) {
      break;
    }

    w = hash_get (&NotWords, ptr, len, 0);

    if (w && w->freq > 0) {
      { int t=w->code_len; int c=w->code; while (t>0) { { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += c < 0; }; c<<=1; t--; } };
      ptr += len;
    } else {
      w = NotWordFreqWords[len];
      { int t=w->code_len; int c=w->code; while (t>0) { { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += c < 0; }; c<<=1; t--; } };
      while (len > 0) {
        x = (unsigned char) *ptr++;
        { int t=NotWordCharDict.code_len[x]; int c=NotWordCharDict.code[x]; while (t>0) { { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += c < 0; }; c<<=1; t--; } };
        len--;
      }
    }
  }

  { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += 1; };
  while (y < 0x100) {
    { if (y >= 0x100) { *wptr++ = (char) y; y = 1; } y <<= 1; y += 0; };
  }
  *wptr++ = (char) y;
  assert (wptr <= wptr_e);
  return wptr - dest;



}
