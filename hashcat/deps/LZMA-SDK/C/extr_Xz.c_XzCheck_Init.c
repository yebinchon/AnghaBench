
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int mode; int sha; int crc64; int crc; } ;
typedef TYPE_1__ CXzCheck ;


 int CRC64_INIT_VAL ;
 int CRC_INIT_VAL ;
 int Sha256_Init (int *) ;




void XzCheck_Init(CXzCheck *p, unsigned mode)
{
  p->mode = mode;
  switch (mode)
  {
    case 130: p->crc = CRC_INIT_VAL; break;
    case 129: p->crc64 = CRC64_INIT_VAL; break;
    case 128: Sha256_Init(&p->sha); break;
  }
}
