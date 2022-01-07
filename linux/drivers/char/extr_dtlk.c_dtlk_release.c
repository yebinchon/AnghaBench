
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;



 int TRACE_RET ;
 int TRACE_TEXT (char*) ;
 int del_timer_sync (int *) ;
 int dtlk_timer ;
 int iminor (struct inode*) ;

__attribute__((used)) static int dtlk_release(struct inode *inode, struct file *file)
{
 TRACE_TEXT("(dtlk_release");

 switch (iminor(inode)) {
 case 128:
  break;

 default:
  break;
 }
 TRACE_RET;

 del_timer_sync(&dtlk_timer);

 return 0;
}
