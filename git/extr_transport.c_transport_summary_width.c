
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int new_oid; int old_oid; struct ref* next; } ;


 int FALLBACK_DEFAULT_ABBREV ;
 int measure_abbrev (int *,int) ;

int transport_summary_width(const struct ref *refs)
{
 int maxw = -1;

 for (; refs; refs = refs->next) {
  maxw = measure_abbrev(&refs->old_oid, maxw);
  maxw = measure_abbrev(&refs->new_oid, maxw);
 }
 if (maxw < 0)
  maxw = FALLBACK_DEFAULT_ABBREV;
 return (2 * maxw + 3);
}
