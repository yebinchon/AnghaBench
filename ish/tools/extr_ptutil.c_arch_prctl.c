
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_arch_prctl ;
 int syscall (int ,int,unsigned long) ;

__attribute__((used)) static int arch_prctl(int code, unsigned long arg) {
    return syscall(SYS_arch_prctl, code, arg);
}
