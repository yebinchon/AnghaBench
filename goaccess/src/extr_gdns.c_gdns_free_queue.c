
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdns_queue ;
 int gqueue_destroy (int ) ;

void
gdns_free_queue (void)
{
  gqueue_destroy (gdns_queue);
}
