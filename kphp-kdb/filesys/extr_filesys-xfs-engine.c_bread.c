
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFSIZE ;
 int assert (int ) ;
 size_t bytes_read ;
 int crc32_partial (void*,size_t,int ) ;
 int idx_crc32_complement ;
 int memcpy (void*,void*,size_t) ;
 int readadv (size_t) ;
 void* readin (size_t) ;

__attribute__((used)) static void bread (void *b, size_t len) {
  unsigned bs = BUFFSIZE >> 1;
  while (len > 0) {
    size_t l = len;
    if (l > bs) { l = bs; }
    void *p = readin (l);
    assert (p != ((void*)0));
    memcpy (b, p, l);
    idx_crc32_complement = crc32_partial (b, l, idx_crc32_complement);
    b += l;
    readadv (l);
    bytes_read += l;
    len -= l;
  }
}
