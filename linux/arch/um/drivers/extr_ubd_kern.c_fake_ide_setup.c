
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fake_ide ;

__attribute__((used)) static int fake_ide_setup(char *str)
{
 fake_ide = 1;
 return 1;
}
