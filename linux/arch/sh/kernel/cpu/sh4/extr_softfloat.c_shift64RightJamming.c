
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int bits64 ;



void shift64RightJamming(bits64 a, int16 count, bits64 * zPtr)
{
 bits64 z;

 if (count == 0) {
  z = a;
 } else if (count < 64) {
  z = (a >> count) | ((a << ((-count) & 63)) != 0);
 } else {
  z = (a != 0);
 }
 *zPtr = z;
}
