
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int SEEK_CUR ;
 int lseek (int,int,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void sendfile_setup(int f) {
  ASSERT(6 == write(f, "begin\n", 6));
  ASSERT(65542 == lseek(f, 65536, SEEK_CUR));
  ASSERT(4 == write(f, "end\n", 4));
}
