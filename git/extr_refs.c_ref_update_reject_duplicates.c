
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {size_t nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int BUG (char*) ;
 int _ (char*) ;
 int assert (struct strbuf*) ;
 int strbuf_addf (struct strbuf*,int ,int ) ;
 int strcmp (int ,int ) ;

int ref_update_reject_duplicates(struct string_list *refnames,
     struct strbuf *err)
{
 size_t i, n = refnames->nr;

 assert(err);

 for (i = 1; i < n; i++) {
  int cmp = strcmp(refnames->items[i - 1].string,
     refnames->items[i].string);

  if (!cmp) {
   strbuf_addf(err,
        _("multiple updates for ref '%s' not allowed"),
        refnames->items[i].string);
   return 1;
  } else if (cmp > 0) {
   BUG("ref_update_reject_duplicates() received unsorted list");
  }
 }
 return 0;
}
