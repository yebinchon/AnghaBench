
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_dir {int status_nr; scalar_t__ status; int status_alloc; } ;


 int ALLOC_GROW (scalar_t__,int,int ) ;
 int memset (scalar_t__,char,int) ;

__attribute__((used)) static void fit_variant(struct rerere_dir *rr_dir, int variant)
{
 variant++;
 ALLOC_GROW(rr_dir->status, variant, rr_dir->status_alloc);
 if (rr_dir->status_nr < variant) {
  memset(rr_dir->status + rr_dir->status_nr,
         '\0', variant - rr_dir->status_nr);
  rr_dir->status_nr = variant;
 }
}
