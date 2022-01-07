
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array_entry {scalar_t__ name; scalar_t__ path; } ;


 int free (scalar_t__) ;
 scalar_t__ object_array_slopbuf ;

__attribute__((used)) static void object_array_release_entry(struct object_array_entry *ent)
{
 if (ent->name != object_array_slopbuf)
  free(ent->name);
 free(ent->path);
}
