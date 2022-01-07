
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int erst_get_record_id_end () ;

__attribute__((used)) static int erst_dbg_release(struct inode *inode, struct file *file)
{
 erst_get_record_id_end();

 return 0;
}
