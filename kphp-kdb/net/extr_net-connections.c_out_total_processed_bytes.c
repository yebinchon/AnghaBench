
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int total_bytes; } ;
struct TYPE_5__ {int total_bytes; } ;
struct TYPE_4__ {int total_bytes; } ;
struct connection {int flags; TYPE_3__ Out; TYPE_2__ out; TYPE_1__ out_p; scalar_t__ crypto; } ;


 int C_RAWMSG ;

int out_total_processed_bytes (struct connection *c) {
  if (c->flags & C_RAWMSG) {
    return (c->crypto ? c->out_p.total_bytes : c->out.total_bytes);
  } else {
    return c->Out.total_bytes;
  }
}
