
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ symbol_t ;
struct TYPE_6__ {int buckets; TYPE_3__** table; } ;
typedef TYPE_2__ hashtable_t ;
struct TYPE_7__ {scalar_t__ data; struct TYPE_7__* next; } ;
typedef TYPE_3__ hashchain_t ;


 int abs (int) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int hashtable_symbol_exists (hashtable_t *H, int hash, char *sym)
{
  hashchain_t *hc;
  symbol_t *s;

  hash = (abs(hash) % H->buckets);
  hc = H->table[hash];
  if (hc == 0)
    {

      return 0;
    }
  for (; hc; hc = hc->next)
    {
      s = (symbol_t*)hc->data;


      if (strcmp(sym, s->name) == 0)
        {

          return 1;
        }
    }
  return 0;
}
