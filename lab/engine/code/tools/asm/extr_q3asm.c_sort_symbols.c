
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_1__ symbol_t ;


 int free (TYPE_1__**) ;
 TYPE_1__* lastSymbol ;
 TYPE_1__** malloc (int) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 TYPE_1__* symbols ;
 int symlist_cmp ;

__attribute__((used)) static void sort_symbols ()
{
  int i, elems;
  symbol_t *s;
  symbol_t **symlist;

  if(!symbols)
   return;


  for (elems = 0, s = symbols; s; s = s->next, elems++) ;

  symlist = malloc(elems * sizeof(symbol_t*));
  for (i = 0, s = symbols; s; s = s->next, i++)
    {
      symlist[i] = s;
    }

  qsort(symlist, elems, sizeof(symbol_t*), symlist_cmp);

  s = symbols = symlist[0];
  for (i = 1; i < elems; i++)
    {
      s->next = symlist[i];
      s = s->next;
    }
  lastSymbol = s;
  s->next = 0;

  for (i = 0, s = symbols; s; s = s->next, i++) ;

  free(symlist);
}
