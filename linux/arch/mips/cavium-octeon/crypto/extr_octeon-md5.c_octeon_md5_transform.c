
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int octeon_md5_start (int const) ;
 int write_octeon_64bit_block_dword (int const,int) ;

__attribute__((used)) static void octeon_md5_transform(const void *_block)
{
 const u64 *block = _block;

 write_octeon_64bit_block_dword(block[0], 0);
 write_octeon_64bit_block_dword(block[1], 1);
 write_octeon_64bit_block_dword(block[2], 2);
 write_octeon_64bit_block_dword(block[3], 3);
 write_octeon_64bit_block_dword(block[4], 4);
 write_octeon_64bit_block_dword(block[5], 5);
 write_octeon_64bit_block_dword(block[6], 6);
 octeon_md5_start(block[7]);
}
