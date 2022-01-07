
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CCRandomGenerateBytes (char*,size_t) ;
 int SYS_getrandom ;
 scalar_t__ kCCSuccess ;
 scalar_t__ syscall (int ,char*,size_t,int ) ;

int get_random(char *buf, size_t len) {



    return syscall(SYS_getrandom, buf, len, 0) < 0;

}
