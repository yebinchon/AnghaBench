
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
struct ata_queued_cmd {struct completion* private_data; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void ata_qc_complete_internal(struct ata_queued_cmd *qc)
{
 struct completion *waiting = qc->private_data;

 complete(waiting);
}
