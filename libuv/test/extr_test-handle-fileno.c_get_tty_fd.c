
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ CreateFileA (char*,int,int,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int O_RDONLY ;
 int _open_osfhandle (intptr_t,int ) ;
 int open (char*,int ,int ) ;

__attribute__((used)) static int get_tty_fd(void) {
  return open("/dev/tty", O_RDONLY, 0);

}
