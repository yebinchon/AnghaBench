
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_open_file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int tg_set_conf (struct kernfs_open_file*,char*,size_t,int ,int) ;

__attribute__((used)) static ssize_t tg_set_conf_uint(struct kernfs_open_file *of,
    char *buf, size_t nbytes, loff_t off)
{
 return tg_set_conf(of, buf, nbytes, off, 0);
}
