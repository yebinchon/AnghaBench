
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
typedef int each_ref_fn ;


 struct strbuf STRBUF_INIT ;
 int do_for_each_ref (int ,int ,int ,int ,int ,void*) ;
 int get_git_namespace () ;
 int get_main_ref_store (int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;

int for_each_namespaced_ref(each_ref_fn fn, void *cb_data)
{
 struct strbuf buf = STRBUF_INIT;
 int ret;
 strbuf_addf(&buf, "%srefs/", get_git_namespace());
 ret = do_for_each_ref(get_main_ref_store(the_repository),
         buf.buf, fn, 0, 0, cb_data);
 strbuf_release(&buf);
 return ret;
}
