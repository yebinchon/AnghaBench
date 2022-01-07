
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int interpret_branch_name (char const*,int,struct strbuf*,unsigned int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strlen (char const*) ;

void strbuf_branchname(struct strbuf *sb, const char *name, unsigned allowed)
{
 int len = strlen(name);
 int used = interpret_branch_name(name, len, sb, allowed);

 if (used < 0)
  used = 0;
 strbuf_add(sb, name + used, len - used);
}
