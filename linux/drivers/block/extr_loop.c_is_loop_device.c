
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_rdev; int i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ LOOP_MAJOR ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ S_ISBLK (int ) ;

__attribute__((used)) static inline int is_loop_device(struct file *file)
{
 struct inode *i = file->f_mapping->host;

 return i && S_ISBLK(i->i_mode) && MAJOR(i->i_rdev) == LOOP_MAJOR;
}
