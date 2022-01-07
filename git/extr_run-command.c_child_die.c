
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_err {int err; int syserr; } ;
typedef enum child_errcode { ____Placeholder_child_errcode } child_errcode ;
typedef int buf ;


 int _exit (int) ;
 int child_notifier ;
 int errno ;
 int xwrite (int ,struct child_err*,int) ;

__attribute__((used)) static void child_die(enum child_errcode err)
{
 struct child_err buf;

 buf.err = err;
 buf.syserr = errno;


 xwrite(child_notifier, &buf, sizeof(buf));
 _exit(1);
}
