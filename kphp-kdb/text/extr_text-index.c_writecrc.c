
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int crc32_acc ;
 int writeout (unsigned int*,int) ;

__attribute__((used)) static inline void writecrc (void) {
  unsigned crc32 = ~crc32_acc;
  writeout (&crc32, 4);
  crc32_acc = (unsigned) -1;
}
