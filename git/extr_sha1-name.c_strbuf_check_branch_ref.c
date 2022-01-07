
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {scalar_t__ have_repository; } ;


 int INTERPRET_BRANCH_LOCAL ;
 int check_refname_format (int ,int ) ;
 TYPE_1__* startup_info ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_branchname (struct strbuf*,char const*,int ) ;
 int strbuf_splice (struct strbuf*,int ,int ,char*,int) ;
 int strcmp (int ,char*) ;

int strbuf_check_branch_ref(struct strbuf *sb, const char *name)
{
 if (startup_info->have_repository)
  strbuf_branchname(sb, name, INTERPRET_BRANCH_LOCAL);
 else
  strbuf_addstr(sb, name);







 strbuf_splice(sb, 0, 0, "refs/heads/", 11);

 if (*name == '-' ||
     !strcmp(sb->buf, "refs/heads/HEAD"))
  return -1;

 return check_refname_format(sb->buf, 0);
}
