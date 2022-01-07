
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int newidx_fd; } ;


 int SEEK_SET ;
 TYPE_1__ SWS ;
 int assert (int) ;
 int flushout () ;
 long long lseek (int ,long long,int ) ;
 long long write_pos ;

void write_seek (long long new_pos) {
  flushout();
  assert (lseek (SWS.newidx_fd, new_pos, SEEK_SET) == new_pos);
  write_pos = new_pos;
}
