
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_cache {TYPE_1__* root; } ;
struct files_ref_store {struct ref_cache* loose; int base; } ;
struct TYPE_2__ {int flag; } ;


 int REF_INCOMPLETE ;
 int add_entry_to_dir (int ,int ) ;
 int create_dir_entry (struct ref_cache*,char*,int,int) ;
 struct ref_cache* create_ref_cache (int *,int ) ;
 int get_ref_dir (TYPE_1__*) ;
 int loose_fill_ref_dir ;

__attribute__((used)) static struct ref_cache *get_loose_ref_cache(struct files_ref_store *refs)
{
 if (!refs->loose) {





  refs->loose = create_ref_cache(&refs->base, loose_fill_ref_dir);


  refs->loose->root->flag &= ~REF_INCOMPLETE;





  add_entry_to_dir(get_ref_dir(refs->loose->root),
     create_dir_entry(refs->loose, "refs/", 5, 1));
 }
 return refs->loose;
}
