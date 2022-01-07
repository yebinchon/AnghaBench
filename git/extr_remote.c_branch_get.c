
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int dummy; } ;


 struct branch* current_branch ;
 struct branch* make_branch (char const*,int ) ;
 int read_config () ;
 int set_merge (struct branch*) ;
 int strcmp (char const*,char*) ;

struct branch *branch_get(const char *name)
{
 struct branch *ret;

 read_config();
 if (!name || !*name || !strcmp(name, "HEAD"))
  ret = current_branch;
 else
  ret = make_branch(name, 0);
 set_merge(ret);
 return ret;
}
