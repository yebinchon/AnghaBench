
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {scalar_t__ size; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int error (char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ update_tree_entry_internal (struct tree_desc*,struct strbuf*) ;

int update_tree_entry_gently(struct tree_desc *desc)
{
 struct strbuf err = STRBUF_INIT;
 if (update_tree_entry_internal(desc, &err)) {
  error("%s", err.buf);
  strbuf_release(&err);

  desc->size = 0;
  return -1;
 }
 strbuf_release(&err);
 return 0;
}
