
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {char const** argv; } ;


 int BUG (char*) ;
 char const* SHELL_PATH ;
 int argv_array_push (struct argv_array*,char const*) ;
 int argv_array_pushf (struct argv_array*,char*,char const*) ;
 int argv_array_pushv (struct argv_array*,char const**) ;
 scalar_t__ strcspn (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char **prepare_shell_cmd(struct argv_array *out, const char **argv)
{
 if (!argv[0])
  BUG("shell command is empty");

 if (strcspn(argv[0], "|&;<>()$`\\\"' \t\n*?[#~=%") != strlen(argv[0])) {

  argv_array_push(out, SHELL_PATH);



  argv_array_push(out, "-c");





  if (!argv[1])
   argv_array_push(out, argv[0]);
  else
   argv_array_pushf(out, "%s \"$@\"", argv[0]);
 }

 argv_array_pushv(out, argv);
 return out->argv;
}
