
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct queue {int dummy; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {void* p2; void* p1; void* p0; void* cmd; } ;
struct TYPE_2__ {void* p2; void* p1; void* p0; void* cmd; } ;


 struct FS_QENTRY* get_qentry (struct fs_dev*,struct queue*) ;
 TYPE_1__* pq ;
 size_t qp ;
 int submit_qentry (struct fs_dev*,struct queue*,struct FS_QENTRY*) ;

__attribute__((used)) static void submit_queue (struct fs_dev *dev, struct queue *q,
     u32 cmd, u32 p1, u32 p2, u32 p3)
{
 struct FS_QENTRY *qe;

 qe = get_qentry (dev, q);
 qe->cmd = cmd;
 qe->p0 = p1;
 qe->p1 = p2;
 qe->p2 = p3;
 submit_qentry (dev, q, qe);
}
