
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_trafprm {unsigned int min_pcr; unsigned int max_pcr; int pcr; } ;


 unsigned int ATM_MAX_PCR ;
 int DBG_QOS ;
 int EINVAL ;
 int PRINTD (int ,char*,...) ;

__attribute__((used)) static int atm_pcr_check (struct atm_trafprm * tp, unsigned int pcr) {

  if (tp->min_pcr == ATM_MAX_PCR)
    PRINTD (DBG_QOS, "luser gave min_pcr = ATM_MAX_PCR");
  else if (tp->min_pcr < 0)
    PRINTD (DBG_QOS, "luser gave negative min_pcr");
  else if (tp->min_pcr && tp->min_pcr > pcr)
    PRINTD (DBG_QOS, "pcr less than min_pcr");
  else



    if ((0) && tp->max_pcr == ATM_MAX_PCR)
      PRINTD (DBG_QOS, "luser gave max_pcr = ATM_MAX_PCR");
    else if ((tp->max_pcr != ATM_MAX_PCR) && tp->max_pcr < 0)
      PRINTD (DBG_QOS, "luser gave negative max_pcr");
    else if (tp->max_pcr && tp->max_pcr != ATM_MAX_PCR && tp->max_pcr < pcr)
      PRINTD (DBG_QOS, "pcr greater than max_pcr");
    else {

      PRINTD (DBG_QOS, "xBR(pcr) OK");
      return 0;
    }
  PRINTD (DBG_QOS, "pcr=%u, tp: min_pcr=%d, pcr=%d, max_pcr=%d",
   pcr, tp->min_pcr, tp->pcr, tp->max_pcr);
  return -EINVAL;
}
