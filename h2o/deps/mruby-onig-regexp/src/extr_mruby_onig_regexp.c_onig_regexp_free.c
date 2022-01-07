
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int OnigRegex ;


 int onig_free (int ) ;

__attribute__((used)) static void
onig_regexp_free(mrb_state *mrb, void *p) {
  onig_free((OnigRegex) p);
}
