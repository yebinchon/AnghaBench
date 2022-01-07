
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_struct {int cmd; } ;


 int ARRAY_SIZE (struct cmd_struct*) ;
 struct cmd_struct* commands ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static struct cmd_struct *get_builtin(const char *s)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(commands); i++) {
  struct cmd_struct *p = commands + i;
  if (!strcmp(s, p->cmd))
   return p;
 }
 return ((void*)0);
}
