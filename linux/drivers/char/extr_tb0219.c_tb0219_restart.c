
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TB0219_RESET ;
 int tb0219_write (int ,int ) ;

__attribute__((used)) static void tb0219_restart(char *command)
{
 tb0219_write(TB0219_RESET, 0);
}
