
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int crc32_acc ;
 int wptr ;
 int wptr_crc ;

__attribute__((used)) static inline void initcrc (void) {
  crc32_acc = (unsigned) -1;
  wptr_crc = wptr;
}
