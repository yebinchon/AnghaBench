
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFSIZE ;
 int Buff ;
 int crc32_partial (void const*,size_t,int ) ;
 int flushout () ;
 int idx_crc32_complement ;
 int memcpy (int,char const*,int) ;
 int wptr ;

void writeout (const void *D, size_t len) {
  idx_crc32_complement = crc32_partial (D, len, idx_crc32_complement);

  const char *d = D;
  while (len > 0) {
    int r = Buff + BUFFSIZE - wptr;
    if (r > len) {
      r = len;
    }
    memcpy (wptr, d, r);
    d += r;
    wptr += r;
    len -= r;
    if (len > 0) {
      flushout ();
    }
  }
}
