
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct parallel_processes {int output_owner; TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_2__ err; } ;


 scalar_t__ GIT_CP_WORKING ;
 int stderr ;
 int strbuf_reset (TYPE_2__*) ;
 int strbuf_write (TYPE_2__*,int ) ;

__attribute__((used)) static void pp_output(struct parallel_processes *pp)
{
 int i = pp->output_owner;
 if (pp->children[i].state == GIT_CP_WORKING &&
     pp->children[i].err.len) {
  strbuf_write(&pp->children[i].err, stderr);
  strbuf_reset(&pp->children[i].err);
 }
}
