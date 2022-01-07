
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_prd_msg_header {int type; int size; } ;
struct opal_prd_msg {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int msg ;


 int OPAL_PRD_MSG_TYPE_FINI ;
 int atomic_xchg (int *,int ) ;
 int cpu_to_be16 (int) ;
 int opal_prd_msg (struct opal_prd_msg*) ;
 int prd_usage ;

__attribute__((used)) static int opal_prd_release(struct inode *inode, struct file *file)
{
 struct opal_prd_msg_header msg;

 msg.size = cpu_to_be16(sizeof(msg));
 msg.type = OPAL_PRD_MSG_TYPE_FINI;

 opal_prd_msg((struct opal_prd_msg *)&msg);

 atomic_xchg(&prd_usage, 0);

 return 0;
}
