
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int assert (int) ;
 int flushout () ;
 long long lseek (int ,long long,int ) ;
 int newidx_fd ;
 long long write_pos ;

__attribute__((used)) static void write_seek (long long new_pos) {
  flushout();
  assert (lseek (newidx_fd, new_pos, SEEK_SET) == new_pos);
  write_pos = new_pos;
}
