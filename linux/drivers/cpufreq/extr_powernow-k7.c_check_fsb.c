
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsb ;

__attribute__((used)) static int check_fsb(unsigned int fsbspeed)
{
 int delta;
 unsigned int f = fsb / 1000;

 delta = (fsbspeed > f) ? fsbspeed - f : f - fsbspeed;
 return delta < 5;
}
