
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (char,int ) ;
 int stderr ;

__attribute__((used)) static void indent(int in)
{
 while (in-- > 0)
  fputc(' ', stderr);
}
