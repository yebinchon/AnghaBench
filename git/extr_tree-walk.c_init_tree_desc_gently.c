
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int error (char*,int ) ;
 int init_tree_desc_internal (struct tree_desc*,void const*,unsigned long,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

int init_tree_desc_gently(struct tree_desc *desc, const void *buffer, unsigned long size)
{
 struct strbuf err = STRBUF_INIT;
 int result = init_tree_desc_internal(desc, buffer, size, &err);
 if (result)
  error("%s", err.buf);
 strbuf_release(&err);
 return result;
}
