
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
typedef int (* each_ref_fn ) (int ,struct object_id*,int,void*) ;


 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 int get_git_namespace () ;
 int read_ref_full (int ,int ,struct object_id*,int*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;

int head_ref_namespaced(each_ref_fn fn, void *cb_data)
{
 struct strbuf buf = STRBUF_INIT;
 int ret = 0;
 struct object_id oid;
 int flag;

 strbuf_addf(&buf, "%sHEAD", get_git_namespace());
 if (!read_ref_full(buf.buf, RESOLVE_REF_READING, &oid, &flag))
  ret = fn(buf.buf, &oid, flag, cb_data);
 strbuf_release(&buf);

 return ret;
}
