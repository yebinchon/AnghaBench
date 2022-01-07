
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc32_acc ;
 int crc32_partial (scalar_t__,scalar_t__,int ) ;
 scalar_t__ wptr ;
 scalar_t__ wptr_crc ;

__attribute__((used)) static inline void relaxcrc (void) {
  crc32_acc = crc32_partial (wptr_crc, wptr - wptr_crc, crc32_acc);
  wptr_crc = wptr;
}
