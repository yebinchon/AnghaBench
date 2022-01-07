
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void modecpy(u8 *dest, const u8 *src, int n, bool changeable)
{
 if (changeable) {
  memcpy(dest, src, 2);
  memset(dest + 2, 0, n - 2);
 } else {
  memcpy(dest, src, n);
 }
}
