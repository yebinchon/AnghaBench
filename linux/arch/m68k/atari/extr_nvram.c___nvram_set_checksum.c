
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ATARI_CKS_LOC ;
 int ATARI_CKS_RANGE_END ;
 int ATARI_CKS_RANGE_START ;
 scalar_t__ __nvram_read_byte (int) ;
 int __nvram_write_byte (unsigned char,scalar_t__) ;

__attribute__((used)) static void __nvram_set_checksum(void)
{
 int i;
 unsigned char sum = 0;

 for (i = ATARI_CKS_RANGE_START; i <= ATARI_CKS_RANGE_END; ++i)
  sum += __nvram_read_byte(i);
 __nvram_write_byte(~sum, ATARI_CKS_LOC);
 __nvram_write_byte(sum, ATARI_CKS_LOC + 1);
}
