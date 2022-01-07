
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
struct inode_data {int dummy; } ;
typedef int addr_t ;


 int inode_release_if_exist (struct inode_data*) ;
 int sockaddr_read_bind (int ,void*,int *,int *) ;

__attribute__((used)) static int sockaddr_read(addr_t sockaddr_addr, void *sockaddr, uint_t *sockaddr_len) {
    struct inode_data *inode = ((void*)0);
    int err = sockaddr_read_bind(sockaddr_addr, sockaddr, sockaddr_len, ((void*)0));
    inode_release_if_exist(inode);
    return err;
}
