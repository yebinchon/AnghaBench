
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int type; } ;
typedef TYPE_1__ knetFile ;


 int KNF_TYPE_LOCAL ;
 scalar_t__ calloc (int,int) ;

knetFile *knet_dopen(int fd, const char *mode)
{
 knetFile *fp = (knetFile*)calloc(1, sizeof(knetFile));
 fp->type = KNF_TYPE_LOCAL;
 fp->fd = fd;
 return fp;
}
