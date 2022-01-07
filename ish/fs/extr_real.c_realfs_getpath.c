
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* mount; int real_fd; } ;
struct TYPE_2__ {char* source; } ;


 scalar_t__ MAX_PATH ;
 int getpath (int ,char*) ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;

int realfs_getpath(struct fd *fd, char *buf) {
    int err = getpath(fd->real_fd, buf);
    if (err < 0)
        return err;
    if (strcmp(fd->mount->source, "/") != 0 || strcmp(buf, "/") == 0) {
        size_t source_len = strlen(fd->mount->source);
        memmove(buf, buf + source_len, MAX_PATH - source_len);
    }
    return 0;
}
