
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {char const** argv; } ;


 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushv (struct argv_array*,char const**) ;

const char **prepare_git_cmd(struct argv_array *out, const char **argv)
{
 argv_array_push(out, "git");
 argv_array_pushv(out, argv);
 return out->argv;
}
