
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int flags; int ad_id; int users; int disabled_since; } ;


 int ADF_ANCIENT ;
 int ADF_DELAYED ;
 int ADF_ON ;
 int active_ads ;
 int assert (int) ;
 int deactivate_ad (struct advert*) ;
 int fprintf (int ,char*,int,int) ;
 int now ;
 int process_lru_ads () ;
 int reinsert_lru_ad_last (struct advert*) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static int ad_disable (struct advert *A) {
  if (!A) {
    return 0;
  }
  if (!(A->flags & ADF_ON)) {
    return 1;
  }
  assert (!(A->flags & ADF_ANCIENT));

  A->flags &= ~ADF_ON;
  active_ads--;
  A->disabled_since = now;

  if (!(A->flags & ADF_DELAYED)) {
    deactivate_ad (A);
  } else {
    A->flags &= ~ADF_DELAYED;
  }

  if (verbosity > 2) {
    fprintf (stderr, "disabled previously enabled ad #%d: %d users\n", A->ad_id, A->users);
  }

  reinsert_lru_ad_last (A);
  process_lru_ads ();

  return 1;
}
