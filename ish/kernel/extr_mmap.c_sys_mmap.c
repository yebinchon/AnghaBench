
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmap_arg_struct {int offset; int fd; int flags; int prot; int len; int addr; } ;
typedef int addr_t ;


 int _EFAULT ;
 int mmap_common (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ user_get (int ,struct mmap_arg_struct) ;

addr_t sys_mmap(addr_t args_addr) {
    struct mmap_arg_struct args;
    if (user_get(args_addr, args))
        return _EFAULT;
    return mmap_common(args.addr, args.len, args.prot, args.flags, args.fd, args.offset);
}
