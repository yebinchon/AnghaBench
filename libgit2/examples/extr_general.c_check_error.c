
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* message; } ;
typedef TYPE_1__ git_error ;


 int exit (int) ;
 TYPE_1__* git_error_last () ;
 int printf (char*,int,char const*,char*) ;

__attribute__((used)) static void check_error(int error_code, const char *action)
{
 const git_error *error = git_error_last();
 if (!error_code)
  return;

 printf("Error %d %s - %s\n", error_code, action,
   (error && error->message) ? error->message : "???");

 exit(1);
}
