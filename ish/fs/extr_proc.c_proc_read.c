
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* data; size_t size; } ;
struct TYPE_3__ {TYPE_2__ data; } ;
struct fd {size_t offset; TYPE_1__ proc; } ;
typedef int ssize_t ;


 int assert (int ) ;
 int memcpy (void*,char const*,size_t) ;
 int proc_refresh_data (struct fd*) ;

__attribute__((used)) static ssize_t proc_read(struct fd *fd, void *buf, size_t bufsize) {
    int err = proc_refresh_data(fd);
    if (err < 0)
        return err;

    const char *data = fd->proc.data.data;
    assert(data != ((void*)0));

    size_t remaining = fd->proc.data.size - fd->offset;
    if ((size_t) fd->offset > fd->proc.data.size)
        remaining = 0;
    size_t n = bufsize;
    if (n > remaining)
        n = remaining;

    memcpy(buf, data + fd->offset, n);
    fd->offset += n;
    return n;
}
