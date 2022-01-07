
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct socketlist {scalar_t__ nr; int member_2; int member_1; int * member_0; } ;
struct credentials {int dummy; } ;


 int die (char*,int) ;
 int drop_privileges (struct credentials*) ;
 int loginfo (char*) ;
 int service_loop (struct socketlist*) ;
 int socksetup (struct string_list*,int,struct socketlist*) ;

__attribute__((used)) static int serve(struct string_list *listen_addr, int listen_port,
    struct credentials *cred)
{
 struct socketlist socklist = { ((void*)0), 0, 0 };

 socksetup(listen_addr, listen_port, &socklist);
 if (socklist.nr == 0)
  die("unable to allocate any listen sockets on port %u",
      listen_port);

 drop_privileges(cred);

 loginfo("Ready to rumble");

 return service_loop(&socklist);
}
