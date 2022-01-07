
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_qos {int txtp; } ;


 int CBRICG_FRAC_BITS ;
 int CBRICG_MAX ;
 int DPRINTK (char*,int,char,int) ;
 int atm_pcr_goal (int *) ;

__attribute__((used)) static int pcr_to_cbricg(const struct atm_qos *qos)
{
 int rounddown = 0;
 int x, icg, pcr = atm_pcr_goal(&qos->txtp);
 if (pcr == 0)
  return 0;
 if (pcr < 0) {
  rounddown = 1;
  pcr = -pcr;
 }
 x = pcr * 27;
 icg = (3125 << (9 + CBRICG_FRAC_BITS)) - (x << CBRICG_FRAC_BITS);
 if (rounddown)
  icg += x - 1;
 icg /= x;
 if (icg > CBRICG_MAX)
  icg = CBRICG_MAX;
 DPRINTK("pcr_to_cbricg: pcr=%d rounddown=%c icg=%d\n",
     pcr, rounddown ? 'Y' : 'N', icg);
 return icg;
}
