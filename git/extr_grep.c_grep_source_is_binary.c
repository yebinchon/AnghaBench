
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct grep_source {int size; int buf; TYPE_1__* driver; } ;
struct TYPE_2__ {int binary; } ;


 int buffer_is_binary (int ,int ) ;
 int grep_source_load (struct grep_source*) ;
 int grep_source_load_driver (struct grep_source*,struct index_state*) ;

__attribute__((used)) static int grep_source_is_binary(struct grep_source *gs,
     struct index_state *istate)
{
 grep_source_load_driver(gs, istate);
 if (gs->driver->binary != -1)
  return gs->driver->binary;

 if (!grep_source_load(gs))
  return buffer_is_binary(gs->buf, gs->size);

 return 0;
}
