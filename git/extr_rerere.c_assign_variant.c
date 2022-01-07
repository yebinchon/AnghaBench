
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_id {int variant; struct rerere_dir* collection; } ;
struct rerere_dir {int status_nr; int * status; } ;


 int fit_variant (struct rerere_dir*,int) ;

__attribute__((used)) static void assign_variant(struct rerere_id *id)
{
 int variant;
 struct rerere_dir *rr_dir = id->collection;

 variant = id->variant;
 if (variant < 0) {
  for (variant = 0; variant < rr_dir->status_nr; variant++)
   if (!rr_dir->status[variant])
    break;
 }
 fit_variant(rr_dir, variant);
 id->variant = variant;
}
