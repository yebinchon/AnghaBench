
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int exiting_early; int quiet; int result; } ;


 int discard_index (int *) ;
 int error (char*,char const*) ;

__attribute__((used)) static int unpack_failed(struct unpack_trees_options *o, const char *message)
{
 discard_index(&o->result);
 if (!o->quiet && !o->exiting_early) {
  if (message)
   return error("%s", message);
  return -1;
 }
 return -1;
}
