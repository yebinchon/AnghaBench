
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graft {int oid; } ;
struct commit {int object; } ;


 int DECORATION_GRAFTED ;
 int add_name_decoration (int ,char*,int *) ;
 struct commit* lookup_commit (int ,int *) ;
 int the_repository ;

__attribute__((used)) static int add_graft_decoration(const struct commit_graft *graft, void *cb_data)
{
 struct commit *commit = lookup_commit(the_repository, &graft->oid);
 if (!commit)
  return 0;
 add_name_decoration(DECORATION_GRAFTED, "grafted", &commit->object);
 return 0;
}
