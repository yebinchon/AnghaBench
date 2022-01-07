
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int Byte ;


 int GetUi32 (int const*) ;

void AesCbc_Init(UInt32 *p, const Byte *iv)
{
  unsigned i;
  for (i = 0; i < 4; i++)
    p[i] = GetUi32(iv + i * 4);
}
