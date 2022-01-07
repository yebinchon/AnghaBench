
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int advertise_shallow_grafts_cb ;
 int for_each_commit_graft (int ,int*) ;
 int is_repository_shallow (int ) ;
 int the_repository ;

void advertise_shallow_grafts(int fd)
{
 if (!is_repository_shallow(the_repository))
  return;
 for_each_commit_graft(advertise_shallow_grafts_cb, &fd);
}
