
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pattern; scalar_t__ next_sub_idx; scalar_t__ next_parent_idx; scalar_t__ next_idx; scalar_t__ module; scalar_t__ look_in_sub; } ;


 TYPE_1__ find_t ;
 int free (char*) ;

void
reset_find (void)
{
  if (find_t.pattern != ((void*)0) && *find_t.pattern != '\0')
    free (find_t.pattern);

  find_t.look_in_sub = 0;
  find_t.module = 0;
  find_t.next_idx = 0;
  find_t.next_parent_idx = 0;
  find_t.next_sub_idx = 0;
  find_t.pattern = ((void*)0);
}
