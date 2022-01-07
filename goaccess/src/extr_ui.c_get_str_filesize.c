
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* filesize_str (int ) ;
 int get_log_sizes () ;

__attribute__((used)) static char *
get_str_filesize (void)
{
  return filesize_str (get_log_sizes ());
}
