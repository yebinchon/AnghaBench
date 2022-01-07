
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* maccalc_name ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr,
  "Usage: %s <command>\n"
  "valid commands:\n"
  "  add <mac> <number>\n"
  "  and|or|xor <mac1> <mac2>\n"
  "  mac2bin <mac>\n"
  "  bin2mac\n",
  maccalc_name);
}
