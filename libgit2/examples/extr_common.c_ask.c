
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char const*) ;
 int readline (char**) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;

__attribute__((used)) static int ask(char **out, const char *prompt, char optional)
{
 printf("%s ", prompt);
 fflush(stdout);

 if (!readline(out) && !optional) {
  fprintf(stderr, "Could not read response: %s", strerror(errno));
  return -1;
 }

 return 0;
}
