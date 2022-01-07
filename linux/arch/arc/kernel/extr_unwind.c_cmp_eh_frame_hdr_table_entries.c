
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_frame_hdr_table_entry {scalar_t__ start; } ;



__attribute__((used)) static int cmp_eh_frame_hdr_table_entries(const void *p1, const void *p2)
{
 const struct eh_frame_hdr_table_entry *e1 = p1;
 const struct eh_frame_hdr_table_entry *e2 = p2;

 return (e1->start > e2->start) - (e1->start < e2->start);
}
