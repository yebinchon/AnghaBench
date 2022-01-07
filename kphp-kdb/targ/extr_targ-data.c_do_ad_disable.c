
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int flags; } ;


 int ADF_ON ;
 int LEV_TARG_AD_OFF ;
 int ad_disable (struct advert*) ;
 int ad_is_ancient (int) ;
 int alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int) ;
 struct advert* get_ad_f (int,int ) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_disable (int ad_id) {
  struct advert *A = get_ad_f (ad_id, 0);
  if (!A && verbosity > 0 && !ad_is_ancient (ad_id)) {
    fprintf (stderr, "warning: disabling undefined ad %d\n", ad_id);
  }
  if (A && (A->flags & ADF_ON)) {
    alloc_log_event (LEV_TARG_AD_OFF, 8, ad_id);
    ad_disable (A);
    return 1;
  }
  return 0;
}
