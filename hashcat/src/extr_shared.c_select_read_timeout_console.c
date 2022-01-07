
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 int select_read_timeout (int ,int const) ;
 int stdin ;

int select_read_timeout_console (const int sec)
{
  return select_read_timeout (fileno (stdin), sec);
}
