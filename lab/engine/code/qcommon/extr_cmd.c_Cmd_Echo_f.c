
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Args () ;
 int Com_Printf (char*,int ) ;

void Cmd_Echo_f (void)
{
 Com_Printf ("%s\n", Cmd_Args());
}
