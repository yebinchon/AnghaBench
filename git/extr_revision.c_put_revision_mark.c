
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct commit {int dummy; } ;


 int fputs (char*,int ) ;
 char* get_revision_mark (struct rev_info const*,struct commit const*) ;
 int putchar (char) ;
 int stdout ;
 int strlen (char*) ;

void put_revision_mark(const struct rev_info *revs, const struct commit *commit)
{
 char *mark = get_revision_mark(revs, commit);
 if (!strlen(mark))
  return;
 fputs(mark, stdout);
 putchar(' ');
}
