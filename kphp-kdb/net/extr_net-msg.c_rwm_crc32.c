
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int assert (int) ;
 scalar_t__ crc32_process ;
 int rwm_process (struct raw_message*,int,void*,unsigned int*) ;

unsigned rwm_crc32 (struct raw_message *raw, int bytes) {
  unsigned crc32 = ~0;

  assert (rwm_process (raw, bytes, (void *)crc32_process, &crc32) == bytes);

  return ~crc32;
}
