
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

void walker_targets_free(int targets, char **target, const char **write_ref)
{
 while (targets--) {
  free(target[targets]);
  if (write_ref)
   free((char *) write_ref[targets]);
 }
}
