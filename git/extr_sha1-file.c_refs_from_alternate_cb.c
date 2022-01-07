
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;
struct object_directory {int path; } ;
struct alternate_refs_data {int data; int fn; } ;


 struct strbuf STRBUF_INIT ;
 int is_directory (int ) ;
 int read_alternate_refs (int ,int ,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_realpath (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;

__attribute__((used)) static int refs_from_alternate_cb(struct object_directory *e,
      void *data)
{
 struct strbuf path = STRBUF_INIT;
 size_t base_len;
 struct alternate_refs_data *cb = data;

 if (!strbuf_realpath(&path, e->path, 0))
  goto out;
 if (!strbuf_strip_suffix(&path, "/objects"))
  goto out;
 base_len = path.len;


 strbuf_addstr(&path, "/refs");
 if (!is_directory(path.buf))
  goto out;
 strbuf_setlen(&path, base_len);

 read_alternate_refs(path.buf, cb->fn, cb->data);

out:
 strbuf_release(&path);
 return 0;
}
