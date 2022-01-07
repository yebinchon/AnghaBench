
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr,
  "Usage:\n"
  "	nvram show\n"
  "	nvram info\n"
  "	nvram get variable\n"
  "	nvram set variable=value [set ...]\n"
  "	nvram unset variable [unset ...]\n"
  "	nvram commit\n"
 );
}
