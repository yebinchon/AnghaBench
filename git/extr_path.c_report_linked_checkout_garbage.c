
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct common_dir {char* path; scalar_t__ ignore_garbage; } ;
struct TYPE_2__ {int different_commondir; } ;


 int PACKDIR_FILE_GARBAGE ;
 struct strbuf STRBUF_INIT ;
 struct common_dir* common_list ;
 scalar_t__ file_exists (int ) ;
 int get_git_dir () ;
 int report_garbage (int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 TYPE_1__* the_repository ;

void report_linked_checkout_garbage(void)
{
 struct strbuf sb = STRBUF_INIT;
 const struct common_dir *p;
 int len;

 if (!the_repository->different_commondir)
  return;
 strbuf_addf(&sb, "%s/", get_git_dir());
 len = sb.len;
 for (p = common_list; p->path; p++) {
  const char *path = p->path;
  if (p->ignore_garbage)
   continue;
  strbuf_setlen(&sb, len);
  strbuf_addstr(&sb, path);
  if (file_exists(sb.buf))
   report_garbage(PACKDIR_FILE_GARBAGE, sb.buf);
 }
 strbuf_release(&sb);
}
