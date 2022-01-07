
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfour {int A; int B; int C; int D; scalar_t__ totalN; } ;



void mdfour_begin(struct mdfour *md)
{
 md->A = 0x67452301;
 md->B = 0xefcdab89;
 md->C = 0x98badcfe;
 md->D = 0x10325476;
 md->totalN = 0;
}
