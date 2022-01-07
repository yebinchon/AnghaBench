
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CHACHA_BLOCK_SIZE ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int round_up (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int chacha_advance(unsigned int len, unsigned int maxblocks)
{
 len = min(len, maxblocks * CHACHA_BLOCK_SIZE);
 return round_up(len, CHACHA_BLOCK_SIZE) / CHACHA_BLOCK_SIZE;
}
