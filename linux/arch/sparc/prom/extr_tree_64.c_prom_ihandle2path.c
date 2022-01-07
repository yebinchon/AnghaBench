
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p1275_cmd_direct (unsigned long*) ;

int prom_ihandle2path(int handle, char *buffer, int bufsize)
{
 unsigned long args[7];

 args[0] = (unsigned long) "instance-to-path";
 args[1] = 3;
 args[2] = 1;
 args[3] = (unsigned int) handle;
 args[4] = (unsigned long) buffer;
 args[5] = bufsize;
 args[6] = (unsigned long) -1;

 p1275_cmd_direct(args);

 return (int) args[6];
}
