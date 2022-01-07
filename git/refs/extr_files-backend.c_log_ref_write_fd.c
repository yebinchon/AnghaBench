
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int copy_reflog_msg (struct strbuf*,char const*) ;
 int oid_to_hex (struct object_id const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ write_in_full (int,int ,int ) ;

__attribute__((used)) static int log_ref_write_fd(int fd, const struct object_id *old_oid,
       const struct object_id *new_oid,
       const char *committer, const char *msg)
{
 struct strbuf sb = STRBUF_INIT;
 int ret = 0;

 strbuf_addf(&sb, "%s %s %s", oid_to_hex(old_oid), oid_to_hex(new_oid), committer);
 if (msg && *msg)
  copy_reflog_msg(&sb, msg);
 strbuf_addch(&sb, '\n');
 if (write_in_full(fd, sb.buf, sb.len) < 0)
  ret = -1;
 strbuf_release(&sb);
 return ret;
}
