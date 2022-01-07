
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int assert (int) ;
 int * fd ;
 int flushout () ;
 long long lseek (int ,long long,int ) ;
 long long write_pos ;

void write_seek (long long new_pos) {
  flushout();
  assert (lseek (fd[0], new_pos, SEEK_SET) == new_pos);
  write_pos = new_pos;
}
