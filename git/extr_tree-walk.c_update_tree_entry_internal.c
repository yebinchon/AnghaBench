
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pathlen; scalar_t__ path; } ;
struct tree_desc {void* buffer; unsigned long size; TYPE_1__ entry; } ;
struct strbuf {int dummy; } ;
struct TYPE_4__ {int rawsz; } ;


 int _ (char*) ;
 int decode_tree_entry (struct tree_desc*,void const*,unsigned long,struct strbuf*) ;
 int die (int ) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static int update_tree_entry_internal(struct tree_desc *desc, struct strbuf *err)
{
 const void *buf = desc->buffer;
 const unsigned char *end = (const unsigned char *)desc->entry.path + desc->entry.pathlen + 1 + the_hash_algo->rawsz;
 unsigned long size = desc->size;
 unsigned long len = end - (const unsigned char *)buf;

 if (size < len)
  die(_("too-short tree file"));
 buf = end;
 size -= len;
 desc->buffer = buf;
 desc->size = size;
 if (size)
  return decode_tree_entry(desc, buf, size, err);
 return 0;
}
