
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long long rshift64(unsigned long long mh,
  unsigned long long ml, int n)
{
 if (n >= 64)
  return mh >> (n - 64);
 return (mh << (64 - n)) | (ml >> n);
}
