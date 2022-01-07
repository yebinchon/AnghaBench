
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* button_map ;

__attribute__((used)) static int button_get_index(unsigned int code)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(button_map); i++)
  if (button_map[i].code == code)
   return i;

 return -1;
}
