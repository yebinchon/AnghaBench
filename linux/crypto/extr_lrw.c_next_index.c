
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ffz (int ) ;

__attribute__((used)) static int next_index(u32 *counter)
{
 int i, res = 0;

 for (i = 0; i < 4; i++) {
  if (counter[i] + 1 != 0)
   return res + ffz(counter[i]++);

  counter[i] = 0;
  res += 32;
 }






 return 127;
}
