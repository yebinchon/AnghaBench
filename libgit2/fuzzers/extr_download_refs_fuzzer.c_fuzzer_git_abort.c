
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* message; } ;
typedef TYPE_1__ git_error ;


 int abort () ;
 int fprintf (int ,char*,char const*,char*) ;
 TYPE_1__* git_error_last () ;
 int stderr ;

void fuzzer_git_abort(const char *op)
{
 const git_error *err = git_error_last();
 fprintf(stderr, "unexpected libgit error: %s: %s\n",
  op, err ? err->message : "<none>");
 abort();
}
