
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct packed_git {int mru; struct packed_git* next; } ;
struct TYPE_2__ {int packed_git_mru; struct packed_git* packed_git; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void prepare_packed_git_mru(struct repository *r)
{
 struct packed_git *p;

 INIT_LIST_HEAD(&r->objects->packed_git_mru);

 for (p = r->objects->packed_git; p; p = p->next)
  list_add_tail(&p->mru, &r->objects->packed_git_mru);
}
