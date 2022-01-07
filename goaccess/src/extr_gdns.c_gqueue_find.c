
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * buffer; } ;
typedef TYPE_1__ GDnsQueue ;


 scalar_t__ gqueue_empty (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,int ) ;

int
gqueue_find (GDnsQueue * q, const char *item)
{
  int i;
  if (gqueue_empty (q))
    return 0;

  for (i = 0; i < q->size; i++) {
    if (strcmp (item, q->buffer[i]) == 0)
      return 1;
  }
  return 0;
}
