
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATARI_CKS_LOC ;
 int ATARI_CKS_RANGE_END ;
 int ATARI_CKS_RANGE_START ;
 unsigned char __nvram_read_byte (int) ;

__attribute__((used)) static int __nvram_check_checksum(void)
{
 int i;
 unsigned char sum = 0;

 for (i = ATARI_CKS_RANGE_START; i <= ATARI_CKS_RANGE_END; ++i)
  sum += __nvram_read_byte(i);
 return (__nvram_read_byte(ATARI_CKS_LOC) == (~sum & 0xff)) &&
        (__nvram_read_byte(ATARI_CKS_LOC + 1) == (sum & 0xff));
}
