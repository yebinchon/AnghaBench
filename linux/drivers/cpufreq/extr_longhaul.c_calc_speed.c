
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsb ;

__attribute__((used)) static unsigned int calc_speed(int mult)
{
 int khz;
 khz = (mult/10)*fsb;
 if (mult%10)
  khz += fsb/2;
 khz *= 1000;
 return khz;
}
