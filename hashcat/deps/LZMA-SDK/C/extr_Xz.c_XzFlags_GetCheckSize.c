
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CXzStreamFlags ;


 unsigned int XzFlags_GetCheckType (int ) ;

unsigned XzFlags_GetCheckSize(CXzStreamFlags f)
{
  unsigned t = XzFlags_GetCheckType(f);
  return (t == 0) ? 0 : (4 << ((t - 1) / 3));
}
