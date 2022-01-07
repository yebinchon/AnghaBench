
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numnodes; int * nodes; struct TYPE_3__* next; } ;
typedef TYPE_1__ tmp_nodebuf_t ;
typedef int tmp_node_t ;
struct TYPE_4__ {TYPE_1__* nodebuffer; int numnodes; } ;


 scalar_t__ GetClearedMemory (int) ;
 scalar_t__ NODEBUF_SIZE ;
 TYPE_2__ tmpaasworld ;

tmp_node_t *AAS_AllocTmpNode(void)
{
 tmp_nodebuf_t *nodebuf;

 if (!tmpaasworld.nodebuffer ||
   tmpaasworld.nodebuffer->numnodes >= NODEBUF_SIZE)
 {
  nodebuf = (tmp_nodebuf_t *) GetClearedMemory(sizeof(tmp_nodebuf_t));
  nodebuf->next = tmpaasworld.nodebuffer;
  nodebuf->numnodes = 0;
  tmpaasworld.nodebuffer = nodebuf;
 }
 tmpaasworld.numnodes++;
 return &tmpaasworld.nodebuffer->nodes[tmpaasworld.nodebuffer->numnodes++];
}
