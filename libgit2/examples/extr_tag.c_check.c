
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char const*,int *) ;

__attribute__((used)) static void check(int result, const char *message)
{
 if (result) fatal(message, ((void*)0));
}
