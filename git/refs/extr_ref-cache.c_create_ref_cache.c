
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct ref_cache {int root; int * fill_ref_dir; struct ref_store* ref_store; } ;
typedef int fill_ref_dir_fn ;


 int create_dir_entry (struct ref_cache*,char*,int ,int) ;
 struct ref_cache* xcalloc (int,int) ;

struct ref_cache *create_ref_cache(struct ref_store *refs,
       fill_ref_dir_fn *fill_ref_dir)
{
 struct ref_cache *ret = xcalloc(1, sizeof(*ret));

 ret->ref_store = refs;
 ret->fill_ref_dir = fill_ref_dir;
 ret->root = create_dir_entry(ret, "", 0, 1);
 return ret;
}
