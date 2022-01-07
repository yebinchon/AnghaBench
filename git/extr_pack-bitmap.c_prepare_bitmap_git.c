
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct bitmap_index {int dummy; } ;


 int free_bitmap_index (struct bitmap_index*) ;
 int load_pack_bitmap (struct bitmap_index*) ;
 int open_pack_bitmap (struct repository*,struct bitmap_index*) ;
 struct bitmap_index* xcalloc (int,int) ;

struct bitmap_index *prepare_bitmap_git(struct repository *r)
{
 struct bitmap_index *bitmap_git = xcalloc(1, sizeof(*bitmap_git));

 if (!open_pack_bitmap(r, bitmap_git) && !load_pack_bitmap(bitmap_git))
  return bitmap_git;

 free_bitmap_index(bitmap_git);
 return ((void*)0);
}
