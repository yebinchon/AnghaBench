
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) __attribute__((noreturn))
static void die(const char *msg)
{
 fputs(msg, stderr);
 exit(EXIT_FAILURE);
}
