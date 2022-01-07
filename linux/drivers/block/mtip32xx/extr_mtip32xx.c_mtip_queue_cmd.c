
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int tag; } ;
struct driver_data {TYPE_1__* port; } ;
struct TYPE_2__ {int cmds_to_issue; } ;


 int blk_abort_request (struct request*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static bool mtip_queue_cmd(struct request *req, void *data, bool reserved)
{
 struct driver_data *dd = data;

 set_bit(req->tag, dd->port->cmds_to_issue);
 blk_abort_request(req);
 return 1;
}
