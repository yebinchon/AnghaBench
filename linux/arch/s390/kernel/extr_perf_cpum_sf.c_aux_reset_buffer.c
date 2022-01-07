
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {unsigned long long flags; unsigned long long overflow; } ;
struct aux_buffer {unsigned long alert_mark; unsigned long empty_mark; int head; } ;


 unsigned long AUX_SDB_NUM_EMPTY (struct aux_buffer*) ;
 unsigned long long SDB_TE_ALERT_REQ_MASK ;
 unsigned long long SDB_TE_BUFFER_FULL_MASK ;
 struct hws_trailer_entry* aux_sdb_trailer (struct aux_buffer*,unsigned long) ;
 int aux_set_alert (struct aux_buffer*,unsigned long,unsigned long long*) ;
 int cmpxchg_double (unsigned long long*,unsigned long long*,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static bool aux_reset_buffer(struct aux_buffer *aux, unsigned long range,
        unsigned long long *overflow)
{
 unsigned long long orig_overflow, orig_flags, new_flags;
 unsigned long i, range_scan, idx;
 struct hws_trailer_entry *te;

 if (range <= AUX_SDB_NUM_EMPTY(aux))





  return aux_set_alert(aux, aux->alert_mark, overflow);

 if (aux->alert_mark <= aux->empty_mark)




  if (!aux_set_alert(aux, aux->alert_mark, overflow))
   return 0;






 range_scan = range - AUX_SDB_NUM_EMPTY(aux);
 idx = aux->empty_mark + 1;
 for (i = 0; i < range_scan; i++, idx++) {
  te = aux_sdb_trailer(aux, idx);
  do {
   orig_flags = te->flags;
   orig_overflow = te->overflow;
   new_flags = orig_flags & ~SDB_TE_BUFFER_FULL_MASK;
   if (idx == aux->alert_mark)
    new_flags |= SDB_TE_ALERT_REQ_MASK;
   else
    new_flags &= ~SDB_TE_ALERT_REQ_MASK;
  } while (!cmpxchg_double(&te->flags, &te->overflow,
      orig_flags, orig_overflow,
      new_flags, 0ULL));
  *overflow += orig_overflow;
 }


 aux->empty_mark = aux->head + range - 1;

 return 1;
}
