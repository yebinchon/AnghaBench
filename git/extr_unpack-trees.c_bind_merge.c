
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int merge_size; scalar_t__ quiet; } ;
struct cache_entry {int name; } ;


 int ERRORMSG (struct unpack_trees_options*,int ) ;
 int ERROR_BIND_OVERLAP ;
 int error (char*,...) ;
 int keep_entry (struct cache_entry const*,struct unpack_trees_options*) ;
 int merged_entry (struct cache_entry const*,int *,struct unpack_trees_options*) ;
 char* super_prefixed (int ) ;

int bind_merge(const struct cache_entry * const *src,
        struct unpack_trees_options *o)
{
 const struct cache_entry *old = src[0];
 const struct cache_entry *a = src[1];

 if (o->merge_size != 1)
  return error("Cannot do a bind merge of %d trees",
        o->merge_size);
 if (a && old)
  return o->quiet ? -1 :
   error(ERRORMSG(o, ERROR_BIND_OVERLAP),
         super_prefixed(a->name),
         super_prefixed(old->name));
 if (!a)
  return keep_entry(old, o);
 else
  return merged_entry(a, ((void*)0), o);
}
