
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct socketlist {int dummy; } ;
struct TYPE_2__ {int * string; } ;


 int logerror (char*,int *,int) ;
 int setup_named_sock (int *,int,struct socketlist*) ;

__attribute__((used)) static void socksetup(struct string_list *listen_addr, int listen_port, struct socketlist *socklist)
{
 if (!listen_addr->nr)
  setup_named_sock(((void*)0), listen_port, socklist);
 else {
  int i, socknum;
  for (i = 0; i < listen_addr->nr; i++) {
   socknum = setup_named_sock(listen_addr->items[i].string,
         listen_port, socklist);

   if (socknum == 0)
    logerror("unable to allocate any listen sockets for host %s on port %u",
      listen_addr->items[i].string, listen_port);
  }
 }
}
