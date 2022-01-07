
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_task {scalar_t__ repo; int * sub; scalar_t__ free_sub; } ;


 int FREE_AND_NULL (scalar_t__) ;
 int free (void*) ;
 int repo_clear (scalar_t__) ;

__attribute__((used)) static void fetch_task_release(struct fetch_task *p)
{
 if (p->free_sub)
  free((void*)p->sub);
 p->free_sub = 0;
 p->sub = ((void*)0);

 if (p->repo)
  repo_clear(p->repo);
 FREE_AND_NULL(p->repo);
}
