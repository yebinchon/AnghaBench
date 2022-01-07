
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int verbose; int family; scalar_t__ progress; } ;
typedef int buf ;





 int set_helper_option (struct transport*,char*,char*) ;
 int xsnprintf (char*,int,char*,int) ;

__attribute__((used)) static void standard_options(struct transport *t)
{
 char buf[16];
 int v = t->verbose;

 set_helper_option(t, "progress", t->progress ? "true" : "false");

 xsnprintf(buf, sizeof(buf), "%d", v + 1);
 set_helper_option(t, "verbosity", buf);

 switch (t->family) {
 case 130:




  break;
 case 129:
  set_helper_option(t, "family", "ipv4");
  break;
 case 128:
  set_helper_option(t, "family", "ipv6");
  break;
 }
}
