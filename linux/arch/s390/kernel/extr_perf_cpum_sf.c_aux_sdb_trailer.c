
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {int dummy; } ;
struct aux_buffer {unsigned long* sdb_index; } ;


 unsigned long AUX_SDB_INDEX (struct aux_buffer*,unsigned long) ;
 scalar_t__ trailer_entry_ptr (unsigned long) ;

__attribute__((used)) static struct hws_trailer_entry *aux_sdb_trailer(struct aux_buffer *aux,
       unsigned long index)
{
 unsigned long sdb;

 index = AUX_SDB_INDEX(aux, index);
 sdb = aux->sdb_index[index];
 return (struct hws_trailer_entry *)trailer_entry_ptr(sdb);
}
