
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ key_len; int flags; int key; } ;
typedef TYPE_1__ wsec_pmk_t ;
typedef int wlc_param ;
typedef int pmk ;


 int PARAM_MODE ;
 int SET ;
 int WLC_SET_WSEC_PMK ;
 scalar_t__ WSEC_MAX_PSK_LEN ;
 int WSEC_PASSPHRASE ;
 int interface ;
 scalar_t__ strlen (char*) ;
 int strncpy (int ,char*,scalar_t__) ;
 int wl_ioctl (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static int wlc_pmk(wlc_param param, void *data, void *value)
{
 int ret = -1;
 char *str = (char *) value;
 wsec_pmk_t pmk;



 if ((param & PARAM_MODE) == SET) {
  strncpy(pmk.key, str, WSEC_MAX_PSK_LEN);
  pmk.key_len = strlen(str);

  if (pmk.key_len > WSEC_MAX_PSK_LEN)
   pmk.key_len = WSEC_MAX_PSK_LEN;

  pmk.flags = WSEC_PASSPHRASE;

  ret = wl_ioctl(interface, WLC_SET_WSEC_PMK, &pmk, sizeof(pmk));
 }

 return ret;
}
