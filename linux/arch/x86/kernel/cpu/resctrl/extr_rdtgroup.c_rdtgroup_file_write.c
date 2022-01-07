
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rftype {int (* write ) (struct kernfs_open_file*,char*,size_t,int ) ;} ;
struct kernfs_open_file {TYPE_1__* kn; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct rftype* priv; } ;


 int EINVAL ;
 int stub1 (struct kernfs_open_file*,char*,size_t,int ) ;

__attribute__((used)) static ssize_t rdtgroup_file_write(struct kernfs_open_file *of, char *buf,
       size_t nbytes, loff_t off)
{
 struct rftype *rft = of->kn->priv;

 if (rft->write)
  return rft->write(of, buf, nbytes, off);

 return -EINVAL;
}
