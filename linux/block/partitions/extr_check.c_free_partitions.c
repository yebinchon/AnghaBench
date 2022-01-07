
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_partitions {int parts; } ;


 int kfree (struct parsed_partitions*) ;
 int vfree (int ) ;

void free_partitions(struct parsed_partitions *state)
{
 vfree(state->parts);
 kfree(state);
}
