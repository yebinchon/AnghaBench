
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct discovery* oid; } ;
struct discovery {struct discovery* service; int refs; struct discovery* buf_alloc; TYPE_1__ shallow; } ;


 int free (struct discovery*) ;
 int free_refs (int ) ;
 struct discovery* last_discovery ;

__attribute__((used)) static void free_discovery(struct discovery *d)
{
 if (d) {
  if (d == last_discovery)
   last_discovery = ((void*)0);
  free(d->shallow.oid);
  free(d->buf_alloc);
  free_refs(d->refs);
  free(d->service);
  free(d);
 }
}
