
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inode; } ;
struct fd {TYPE_1__ stat; } ;


 int sprintf (char*,char*,char const*,...) ;

__attribute__((used)) static int adhoc_getpath(struct fd *fd, char *buf) {
    const char *type = "unknown";
    if (fd->stat.inode == 0)
        sprintf(buf, "anon_inode:[%s]", type);
    else
        sprintf(buf, "%s:[%lu]", type, (unsigned long) fd->stat.inode);
    return 0;
}
