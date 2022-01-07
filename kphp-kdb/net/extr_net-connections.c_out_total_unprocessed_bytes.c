
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int unprocessed_bytes; } ;
struct TYPE_3__ {int total_bytes; } ;
struct connection {int flags; TYPE_2__ Out; TYPE_1__ out; scalar_t__ crypto; } ;


 int C_RAWMSG ;

int out_total_unprocessed_bytes (struct connection *c) {
  if (c->flags & C_RAWMSG) {
    return (c->crypto ? c->out.total_bytes : 0);
  } else {
    return c->Out.unprocessed_bytes;
  }
}
