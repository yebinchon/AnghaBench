
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct rtas_args {void** rets; void** args; void* nret; void* nargs; void* token; } ;


 int __pa (struct rtas_args*) ;
 int __u32 ;
 void* cpu_to_be32 (int) ;
 int enter_rtas (int ) ;
 int va_arg (int ,int ) ;

__attribute__((used)) static void
va_rtas_call_unlocked(struct rtas_args *args, int token, int nargs, int nret,
        va_list list)
{
 int i;

 args->token = cpu_to_be32(token);
 args->nargs = cpu_to_be32(nargs);
 args->nret = cpu_to_be32(nret);
 args->rets = &(args->args[nargs]);

 for (i = 0; i < nargs; ++i)
  args->args[i] = cpu_to_be32(va_arg(list, __u32));

 for (i = 0; i < nret; ++i)
  args->rets[i] = 0;

 enter_rtas(__pa(args));
}
