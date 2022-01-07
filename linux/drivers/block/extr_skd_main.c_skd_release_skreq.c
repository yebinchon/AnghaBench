
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_request_context {int state; } ;
struct skd_device {int dummy; } ;


 int SKD_REQ_STATE_IDLE ;

__attribute__((used)) static void skd_release_skreq(struct skd_device *skdev,
         struct skd_request_context *skreq)
{



 skreq->state = SKD_REQ_STATE_IDLE;
}
