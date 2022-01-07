
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int fd; } ;
struct strbuf {int len; int buf; } ;
struct oid_array {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ close_tempfile_gently (struct tempfile*) ;
 int die_errno (char*,char const*) ;
 char const* get_tempfile_path (struct tempfile*) ;
 int git_path (char*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ write_in_full (int ,int ,int ) ;
 scalar_t__ write_shallow_commits (struct strbuf*,int ,struct oid_array const*) ;
 struct tempfile* xmks_tempfile (int ) ;

const char *setup_temporary_shallow(const struct oid_array *extra)
{
 struct tempfile *temp;
 struct strbuf sb = STRBUF_INIT;

 if (write_shallow_commits(&sb, 0, extra)) {
  temp = xmks_tempfile(git_path("shallow_XXXXXX"));

  if (write_in_full(temp->fd, sb.buf, sb.len) < 0 ||
      close_tempfile_gently(temp) < 0)
   die_errno("failed to write to %s",
      get_tempfile_path(temp));
  strbuf_release(&sb);
  return get_tempfile_path(temp);
 }




 return "";
}
