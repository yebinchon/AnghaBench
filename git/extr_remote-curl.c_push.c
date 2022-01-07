
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discovery {scalar_t__ proto_git; } ;


 struct discovery* discover_refs (char*,int) ;
 int free_discovery (struct discovery*) ;
 int push_dav (int,char const**) ;
 int push_git (struct discovery*,int,char const**) ;

__attribute__((used)) static int push(int nr_spec, const char **specs)
{
 struct discovery *heads = discover_refs("git-receive-pack", 1);
 int ret;

 if (heads->proto_git)
  ret = push_git(heads, nr_spec, specs);
 else
  ret = push_dav(nr_spec, specs);
 free_discovery(heads);
 return ret;
}
