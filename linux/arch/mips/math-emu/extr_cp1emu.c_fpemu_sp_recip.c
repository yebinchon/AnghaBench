
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;


 union ieee754sp ieee754sp_div (int ,union ieee754sp) ;
 int ieee754sp_one (int ) ;

__attribute__((used)) static union ieee754sp fpemu_sp_recip(union ieee754sp s)
{
 return ieee754sp_div(ieee754sp_one(0), s);
}
