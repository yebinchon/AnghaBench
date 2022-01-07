
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove_tempfiles (int ) ;

__attribute__((used)) static void remove_tempfiles_on_exit(void)
{
 remove_tempfiles(0);
}
