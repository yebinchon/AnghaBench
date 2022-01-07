
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {TYPE_2__* nb; } ;
struct TYPE_4__ {int sun_path; } ;
struct TYPE_5__ {TYPE_1__ sun_; } ;


 scalar_t__ EINTR ;
 int _exit (int ) ;
 TYPE_3__ daemon_vars ;
 int dirname (int ) ;
 scalar_t__ errno ;
 int read (int,char*,int) ;
 int unlink_dir (int ) ;

__attribute__((used)) __attribute__((noreturn)) static void *daemon_close_notify_thread(void *_close_notify_fd)
{
    int close_notify_fd = (int)((char *)_close_notify_fd - (char *)((void*)0));
    char b;
    ssize_t r;

Redo:
    r = read(close_notify_fd, &b, 1);
    if (r == -1 && errno == EINTR)
        goto Redo;
    if (r > 0)
        goto Redo;



    unlink_dir(dirname(daemon_vars.nb->sun_.sun_path));

    _exit(0);
}
