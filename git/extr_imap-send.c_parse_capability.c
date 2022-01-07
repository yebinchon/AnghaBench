
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap {int caps; int rcaps; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * cap_list ;
 char* next_arg (char**) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void parse_capability(struct imap *imap, char *cmd)
{
 char *arg;
 unsigned i;

 imap->caps = 0x80000000;
 while ((arg = next_arg(&cmd)))
  for (i = 0; i < ARRAY_SIZE(cap_list); i++)
   if (!strcmp(cap_list[i], arg))
    imap->caps |= 1 << i;
 imap->rcaps = imap->caps;
}
