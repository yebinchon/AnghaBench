
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_frame_hdr_table_entry {unsigned long start; unsigned long fde; } ;



__attribute__((used)) static void swap_eh_frame_hdr_table_entries(void *p1, void *p2, int size)
{
 struct eh_frame_hdr_table_entry *e1 = p1;
 struct eh_frame_hdr_table_entry *e2 = p2;
 unsigned long v;

 v = e1->start;
 e1->start = e2->start;
 e2->start = v;
 v = e1->fde;
 e1->fde = e2->fde;
 e2->fde = v;
}
