
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp_objdir {int path; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int get_object_directory () ;
 int migrate_paths (struct strbuf*,struct strbuf*) ;
 int strbuf_addbuf (struct strbuf*,int *) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int tmp_objdir_destroy (struct tmp_objdir*) ;

int tmp_objdir_migrate(struct tmp_objdir *t)
{
 struct strbuf src = STRBUF_INIT, dst = STRBUF_INIT;
 int ret;

 if (!t)
  return 0;

 strbuf_addbuf(&src, &t->path);
 strbuf_addstr(&dst, get_object_directory());

 ret = migrate_paths(&src, &dst);

 strbuf_release(&src);
 strbuf_release(&dst);

 tmp_objdir_destroy(t);
 return ret;
}
