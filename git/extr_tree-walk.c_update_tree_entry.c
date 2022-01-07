
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ update_tree_entry_internal (struct tree_desc*,struct strbuf*) ;

void update_tree_entry(struct tree_desc *desc)
{
 struct strbuf err = STRBUF_INIT;
 if (update_tree_entry_internal(desc, &err))
  die("%s", err.buf);
 strbuf_release(&err);
}
