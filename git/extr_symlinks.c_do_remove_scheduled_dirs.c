
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char* buf; } ;


 TYPE_1__ removal ;
 scalar_t__ rmdir (char*) ;

__attribute__((used)) static void do_remove_scheduled_dirs(int new_len)
{
 while (removal.len > new_len) {
  removal.buf[removal.len] = '\0';
  if (rmdir(removal.buf))
   break;
  do {
   removal.len--;
  } while (removal.len > new_len &&
    removal.buf[removal.len] != '/');
 }
 removal.len = new_len;
}
