
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int _ (char*) ;
 int close (int) ;
 int die_errno (int ) ;
 int errno ;
 int exit (int ) ;
 int fork () ;
 int sanitize_stdfds () ;
 int setsid () ;

int daemonize(void)
{




 switch (fork()) {
  case 0:
   break;
  case -1:
   die_errno(_("fork failed"));
  default:
   exit(0);
 }
 if (setsid() == -1)
  die_errno(_("setsid failed"));
 close(0);
 close(1);
 close(2);
 sanitize_stdfds();
 return 0;

}
