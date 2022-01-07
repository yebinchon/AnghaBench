
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int flags; int retarget_time; int ad_id; } ;


 int ADF_PERIODIC ;
 int RETARGET_AD_TIMEOUT ;
 int fprintf (int ,char*,int,struct advert*,int) ;
 int log_last_ts ;
 int reinsert_retarget_ad_last (struct advert*) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static inline void apply_periodic_ad_state (struct advert *A) {
  if (A->flags & ADF_PERIODIC) {
    reinsert_retarget_ad_last (A);
    A->retarget_time = ((log_last_ts + (RETARGET_AD_TIMEOUT < 3600 ? 3600 : RETARGET_AD_TIMEOUT)) / 3600) * 3600;
    if (verbosity > 1) {
      fprintf (stderr, "inserting ad #%d (%p) into retarget queue, retarget_time=%d\n", A->ad_id, A, A->retarget_time);
    }
  }
}
