
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct fd {TYPE_1__ devpts; } ;


 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int devpts_getpath(struct fd *fd, char *buf) {
    if (fd->devpts.num == -1)
        strcpy(buf, "");
    else
        sprintf(buf, "/%d", fd->devpts.num);
    return 0;
}
