
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,int ) ;
 int die_errno (int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 scalar_t__ get_oid_hex (int ,struct object_id*) ;
 int git_path_abort_safety_file () ;
 int oidclr (struct object_id*) ;
 int oideq (struct object_id*,struct object_id*) ;
 scalar_t__ strbuf_read_file (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;

__attribute__((used)) static int rollback_is_safe(void)
{
 struct strbuf sb = STRBUF_INIT;
 struct object_id expected_head, actual_head;

 if (strbuf_read_file(&sb, git_path_abort_safety_file(), 0) >= 0) {
  strbuf_trim(&sb);
  if (get_oid_hex(sb.buf, &expected_head)) {
   strbuf_release(&sb);
   die(_("could not parse %s"), git_path_abort_safety_file());
  }
  strbuf_release(&sb);
 }
 else if (errno == ENOENT)
  oidclr(&expected_head);
 else
  die_errno(_("could not read '%s'"), git_path_abort_safety_file());

 if (get_oid("HEAD", &actual_head))
  oidclr(&actual_head);

 return oideq(&actual_head, &expected_head);
}
