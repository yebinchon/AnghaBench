
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int dummy; } ;
struct hws_trailer_entry {int flags; } ;
struct aux_buffer {unsigned long head; unsigned long alert_mark; } ;


 unsigned long AUX_SDB_NUM_ALERT (struct aux_buffer*) ;
 unsigned long PAGE_SHIFT ;
 int SDB_TE_ALERT_REQ_MASK ;
 int SDB_TE_BUFFER_FULL_MASK ;
 struct hws_trailer_entry* aux_sdb_trailer (struct aux_buffer*,unsigned long) ;
 int debug_sprintf_event (int ,int,char*,unsigned long) ;
 int perf_aux_output_end (struct perf_output_handle*,unsigned long) ;
 struct aux_buffer* perf_get_aux (struct perf_output_handle*) ;
 int sfdbg ;

__attribute__((used)) static void aux_output_end(struct perf_output_handle *handle)
{
 unsigned long i, range_scan, idx;
 struct aux_buffer *aux;
 struct hws_trailer_entry *te;

 aux = perf_get_aux(handle);
 if (!aux)
  return;

 range_scan = AUX_SDB_NUM_ALERT(aux);
 for (i = 0, idx = aux->head; i < range_scan; i++, idx++) {
  te = aux_sdb_trailer(aux, idx);
  if (!(te->flags & SDB_TE_BUFFER_FULL_MASK))
   break;
 }

 perf_aux_output_end(handle, i << PAGE_SHIFT);


 te = aux_sdb_trailer(aux, aux->alert_mark);
 te->flags &= ~SDB_TE_ALERT_REQ_MASK;

 debug_sprintf_event(sfdbg, 6, "aux_output_end: collect %lx SDBs\n", i);
}
