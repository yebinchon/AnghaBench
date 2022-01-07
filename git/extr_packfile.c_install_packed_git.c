
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct packed_git {int pack_fd; struct packed_git* next; } ;
struct TYPE_2__ {struct packed_git* packed_git; } ;


 int pack_open_fds ;

void install_packed_git(struct repository *r, struct packed_git *pack)
{
 if (pack->pack_fd != -1)
  pack_open_fds++;

 pack->next = r->objects->packed_git;
 r->objects->packed_git = pack;
}
