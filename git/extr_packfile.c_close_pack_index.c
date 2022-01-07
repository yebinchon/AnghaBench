
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int * index_data; int index_size; } ;


 int munmap (void*,int ) ;

void close_pack_index(struct packed_git *p)
{
 if (p->index_data) {
  munmap((void *)p->index_data, p->index_size);
  p->index_data = ((void*)0);
 }
}
