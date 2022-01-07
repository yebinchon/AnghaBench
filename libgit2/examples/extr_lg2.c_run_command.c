
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct args_info {size_t pos; int * argv; scalar_t__ argc; } ;
typedef int git_repository ;
typedef int (* git_command_fn ) (int *,scalar_t__,int *) ;
struct TYPE_2__ {char* message; } ;


 int fprintf (int ,char*,...) ;
 TYPE_1__* git_error_last () ;
 int stderr ;

__attribute__((used)) static int run_command(git_command_fn fn, git_repository *repo, struct args_info args)
{
 int error;


 error = fn(repo, args.argc - args.pos, &args.argv[args.pos]);
 if (error < 0) {
  if (git_error_last() == ((void*)0))
   fprintf(stderr, "Error without message");
  else
   fprintf(stderr, "Bad news:\n %s\n", git_error_last()->message);
 }

 return !!error;
}
