
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int assert (int) ;
 long long lseek (int ,long long,int ) ;
 int newidx_fd ;

__attribute__((used)) static void vk_lseek (long long offset) {
  assert (lseek (newidx_fd, offset, SEEK_SET) == offset);
}
