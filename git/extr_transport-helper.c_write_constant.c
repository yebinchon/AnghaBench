
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ debug ;
 int die_errno (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ write_in_full (int,char const*,int ) ;

__attribute__((used)) static void write_constant(int fd, const char *str)
{
 if (debug)
  fprintf(stderr, "Debug: Remote helper: -> %s", str);
 if (write_in_full(fd, str, strlen(str)) < 0)
  die_errno(_("full write to remote helper failed"));
}
