
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; char const* name; } ;


 TYPE_1__* cheetah_error_table ;

__attribute__((used)) static const char *cheetah_get_string(unsigned long bit)
{
 int i;

 for (i = 0; cheetah_error_table[i].mask; i++) {
  if ((bit & cheetah_error_table[i].mask) != 0UL)
   return cheetah_error_table[i].name;
 }
 return "???";
}
