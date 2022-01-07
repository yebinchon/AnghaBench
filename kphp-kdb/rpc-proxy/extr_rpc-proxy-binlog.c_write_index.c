
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int assert (int) ;
 int cur ;
 int ifd ;
 int last ;
 int lseek (int ,int ,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int write (int ,int ,int) ;

void write_index (void) {
  if (memcmp (last, cur, 20)) {
    lseek (ifd, 0, SEEK_SET);
    assert (write (ifd, cur, 20) == 20);
    memcpy (last, cur, 20);
  }
}
