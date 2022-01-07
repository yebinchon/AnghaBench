
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct drbd_request {TYPE_1__* device; } ;
struct TYPE_2__ {int vnr; int minor; } ;


 int seq_print_one_request (struct seq_file*,struct drbd_request*,unsigned long) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static void seq_print_minor_vnr_req(struct seq_file *m, struct drbd_request *req, unsigned long now)
{
 seq_printf(m, "%u\t%u\t", req->device->minor, req->device->vnr);
 seq_print_one_request(m, req, now);
}
