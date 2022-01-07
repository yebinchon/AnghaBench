
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buckets; TYPE_2__** table; } ;
typedef TYPE_1__ hashtable_t ;
struct TYPE_5__ {struct TYPE_5__* next; void* data; } ;
typedef TYPE_2__ hashchain_t ;


 int abs (int) ;
 void* calloc (int,int) ;

__attribute__((used)) static void hashtable_add (hashtable_t *H, int hashvalue, void *datum)
{
  hashchain_t *hc, **hb;

  hashvalue = (abs(hashvalue) % H->buckets);
  hb = &(H->table[hashvalue]);
  if (*hb == 0)
    {

      *hb = calloc(1, sizeof(**hb));
      hc = *hb;
    }
  else
    {

      for (hc = *hb; hc && hc->next; hc = hc->next);
      hc->next = calloc(1, sizeof(*hc));
      hc = hc->next;
    }
  hc->data = datum;
  hc->next = 0;
}
