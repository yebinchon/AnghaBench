
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_update {char const* refname; struct ref_update* parent_update; } ;



__attribute__((used)) static const char *original_update_refname(struct ref_update *update)
{
 while (update->parent_update)
  update = update->parent_update;

 return update->refname;
}
