
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int env_array; int args; } ;
struct argv_array {int argv; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushv (int *,int ) ;
 int run_service_command (struct child_process*) ;

__attribute__((used)) static int receive_pack(const struct argv_array *env)
{
 struct child_process cld = CHILD_PROCESS_INIT;
 argv_array_push(&cld.args, "receive-pack");

 argv_array_pushv(&cld.env_array, env->argv);

 return run_service_command(&cld);
}
