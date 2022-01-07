
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EPIPE ;
 int SIGINFO_NIL ;
 int SIGPIPE_ ;
 int current ;
 int err_map (scalar_t__) ;
 scalar_t__ errno ;
 int send_signal (int ,int ,int ) ;

int errno_map() {
    if (errno == EPIPE)
        send_signal(current, SIGPIPE_, SIGINFO_NIL);
    return err_map(errno);
}
