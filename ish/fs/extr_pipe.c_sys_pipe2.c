
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;
typedef int addr_t ;


 int FIXME (char*) ;
 int O_CLOEXEC_ ;
 int O_NONBLOCK_ ;
 int STRACE (char*,int,int) ;
 int _EFAULT ;
 int _EINVAL ;
 int close (int) ;
 int f_close (int) ;
 int pipe (int*) ;
 int pipe_f_create (int,int) ;
 scalar_t__ user_put (int,int*) ;

int_t sys_pipe2(addr_t pipe_addr, int_t flags) {
    STRACE("pipe2(%#x, %#x)", pipe_addr, flags);
    if (flags & ~(O_CLOEXEC_|O_NONBLOCK_)) {
        FIXME("unsupported pipe2 flags");
        return _EINVAL;
    }

    int p[2];
    int err = pipe(p);
    if (err < 0)
        return err;

    int fp[2];
    err = fp[0] = pipe_f_create(p[0], flags);
    if (fp[0] < 0)
        goto close_pipe;
    err = fp[1] = pipe_f_create(p[1], flags);
    if (fp[1] < 0)
        goto close_fake_0;

    err = _EFAULT;
    if (user_put(pipe_addr, fp))
        goto close_fake_1;
    STRACE(" [%d %d]", fp[0], fp[1]);
    return 0;

close_fake_1:
    f_close(fp[1]);
close_fake_0:
    f_close(fp[0]);
close_pipe:
    close(p[0]);
    close(p[1]);
    return err;
}
