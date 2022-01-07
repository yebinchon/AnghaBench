
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int digits_for_value(size_t val)
{
 int count = 1;
 size_t placevalue = 10;

 while (val >= placevalue) {
  ++count;
  placevalue *= 10;
 }

 return count;
}
