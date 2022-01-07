
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {scalar_t__ root_fd; int source; } ;


 int O_DIRECTORY ;
 int errno_map () ;
 scalar_t__ open (int ,int ) ;

int realfs_mount(struct mount *mount) {
    mount->root_fd = open(mount->source, O_DIRECTORY);
    if (mount->root_fd < 0)
        return errno_map();
    return 0;
}
