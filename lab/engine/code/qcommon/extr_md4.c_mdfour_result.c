
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfour {int D; int C; int B; int A; } ;
typedef int byte ;


 int copy4 (int *,int ) ;

__attribute__((used)) static void mdfour_result(struct mdfour *md, byte *out)
{
 copy4(out, md->A);
 copy4(out+4, md->B);
 copy4(out+8, md->C);
 copy4(out+12, md->D);
}
