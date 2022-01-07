
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mode; struct TYPE_4__* next; } ;
typedef TYPE_1__ xdmerge_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static int xdl_cleanup_merge(xdmerge_t *c)
{
 int count = 0;
 xdmerge_t *next_c;


 for (; c; c = next_c) {
  if (c->mode == 0)
   count++;
  next_c = c->next;
  free(c);
 }
 return count;
}
