
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ git_submodule_update_t ;
struct TYPE_3__ {int map_value; char const* str_match; } ;


 scalar_t__ ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* _sm_update_map ;

const char *git_submodule_update_to_str(git_submodule_update_t update)
{
 int i;
 for (i = 0; i < (int)ARRAY_SIZE(_sm_update_map); ++i)
  if (_sm_update_map[i].map_value == (int)update)
   return _sm_update_map[i].str_match;
 return ((void*)0);
}
