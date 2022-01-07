
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef scalar_t__ flag ;


 int addFloat64Sigs (int ,int ,scalar_t__) ;
 scalar_t__ extractFloat64Sign (int ) ;
 int subFloat64Sigs (int ,int ,scalar_t__) ;

float64 float64_sub(float64 a, float64 b)
{
 flag aSign, bSign;

 aSign = extractFloat64Sign(a);
 bSign = extractFloat64Sign(b);
 if (aSign == bSign) {
  return subFloat64Sigs(a, b, aSign);
 } else {
  return addFloat64Sigs(a, b, aSign);
 }

}
