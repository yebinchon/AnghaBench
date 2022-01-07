
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll {int dummy; } ;
struct fd {int dummy; } ;


 int * poll_find_fd (struct poll*,struct fd*) ;

bool poll_has_fd(struct poll *poll, struct fd *fd) {
    return poll_find_fd(poll, fd) != ((void*)0);
}
