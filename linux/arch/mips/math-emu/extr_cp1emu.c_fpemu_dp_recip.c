
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;


 union ieee754dp ieee754dp_div (int ,union ieee754dp) ;
 int ieee754dp_one (int ) ;

__attribute__((used)) static union ieee754dp fpemu_dp_recip(union ieee754dp d)
{
 return ieee754dp_div(ieee754dp_one(0), d);
}
