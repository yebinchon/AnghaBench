
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) static void
err(const char *msg)
{
 fputs(msg, stderr);
}
