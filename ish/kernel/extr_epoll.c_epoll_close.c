
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int poll; } ;
struct fd {TYPE_1__ epollfd; } ;


 int poll_destroy (int ) ;

__attribute__((used)) static int epoll_close(struct fd *fd) {
    poll_destroy(fd->epollfd.poll);
    return 0;
}
