
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int OnigRegion ;


 int onig_region_free (int *,int) ;

__attribute__((used)) static void
match_data_free(mrb_state* mrb, void* p) {
  (void)mrb;
  onig_region_free((OnigRegion*)p, 1);
}
