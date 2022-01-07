
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_3__ {unsigned int indexSize; int numBlocks; int sha; } ;
typedef TYPE_1__ CXzUnpacker ;
typedef int Byte ;


 int Sha256_Update (int *,int *,unsigned int) ;
 unsigned int Xz_WriteVarInt (int *,int ) ;

__attribute__((used)) static void XzUnpacker_UpdateIndex(CXzUnpacker *p, UInt64 packSize, UInt64 unpackSize)
{
  Byte temp[32];
  unsigned num = Xz_WriteVarInt(temp, packSize);
  num += Xz_WriteVarInt(temp + num, unpackSize);
  Sha256_Update(&p->sha, temp, num);
  p->indexSize += num;
  p->numBlocks++;
}
