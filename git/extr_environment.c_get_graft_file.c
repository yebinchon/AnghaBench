
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {char* graft_file; } ;


 int BUG (char*) ;

char *get_graft_file(struct repository *r)
{
 if (!r->graft_file)
  BUG("git environment hasn't been setup");
 return r->graft_file;
}
