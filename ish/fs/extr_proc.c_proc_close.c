
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct fd {TYPE_2__ proc; } ;


 int free (int *) ;

__attribute__((used)) static int proc_close(struct fd *fd) {
    if (fd->proc.data.data != ((void*)0))
        free(fd->proc.data.data);
    return 0;
}
