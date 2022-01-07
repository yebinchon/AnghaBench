
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,int ) ;
 scalar_t__ init_tree_desc_internal (struct tree_desc*,void const*,unsigned long,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

void init_tree_desc(struct tree_desc *desc, const void *buffer, unsigned long size)
{
 struct strbuf err = STRBUF_INIT;
 if (init_tree_desc_internal(desc, buffer, size, &err))
  die("%s", err.buf);
 strbuf_release(&err);
}
