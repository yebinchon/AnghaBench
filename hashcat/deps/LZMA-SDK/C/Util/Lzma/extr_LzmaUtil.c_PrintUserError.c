
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PrintError (char*,char*) ;

__attribute__((used)) static int PrintUserError(char *buffer)
{
  return PrintError(buffer, "Incorrect command");
}
