
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {unsigned long size; void const* buffer; } ;
struct strbuf {int dummy; } ;


 int decode_tree_entry (struct tree_desc*,void const*,unsigned long,struct strbuf*) ;

__attribute__((used)) static int init_tree_desc_internal(struct tree_desc *desc, const void *buffer, unsigned long size, struct strbuf *err)
{
 desc->buffer = buffer;
 desc->size = size;
 if (size)
  return decode_tree_entry(desc, buffer, size, err);
 return 0;
}
