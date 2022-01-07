
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {unsigned char* index_data; int index_size; int pack_name; } ;


 int _ (char*) ;
 int die (int ,int ) ;

void check_pack_index_ptr(const struct packed_git *p, const void *vptr)
{
 const unsigned char *ptr = vptr;
 const unsigned char *start = p->index_data;
 const unsigned char *end = start + p->index_size;
 if (ptr < start)
  die(_("offset before start of pack index for %s (corrupt index?)"),
      p->pack_name);

 if (ptr >= end - 8)
  die(_("offset beyond end of pack index for %s (truncated index?)"),
      p->pack_name);
}
