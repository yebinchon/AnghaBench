
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int repo_interpret_branch_name (struct repository*,int ,int,struct strbuf*,unsigned int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static int reinterpret(struct repository *r,
         const char *name, int namelen, int len,
         struct strbuf *buf, unsigned allowed)
{

 struct strbuf tmp = STRBUF_INIT;
 int used = buf->len;
 int ret;

 strbuf_add(buf, name + len, namelen - len);
 ret = repo_interpret_branch_name(r, buf->buf, buf->len, &tmp, allowed);

 if (ret < 0) {
  strbuf_setlen(buf, used);
  return len;
 }
 strbuf_reset(buf);
 strbuf_addbuf(buf, &tmp);
 strbuf_release(&tmp);

 return ret - used + len;
}
