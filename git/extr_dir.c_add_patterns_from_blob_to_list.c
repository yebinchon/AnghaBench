
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {int dummy; } ;
struct object_id {int dummy; } ;


 int add_patterns_from_buffer (char*,size_t,char const*,int,struct pattern_list*) ;
 int do_read_blob (struct object_id*,int *,size_t*,char**) ;

int add_patterns_from_blob_to_list(
 struct object_id *oid,
 const char *base, int baselen,
 struct pattern_list *pl)
{
 char *buf;
 size_t size;
 int r;

 r = do_read_blob(oid, ((void*)0), &size, &buf);
 if (r != 1)
  return r;

 add_patterns_from_buffer(buf, size, base, baselen, pl);
 return 0;
}
