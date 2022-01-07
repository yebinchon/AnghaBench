
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_qsi_info_block {unsigned long cpu_speed; } ;
typedef int si ;


 int ECAG_CPU_ATTRIBUTE ;
 unsigned long __ecag (int ,int ) ;
 unsigned long cf_diag_cpu_speed ;
 scalar_t__ cpum_sf_avail () ;
 int memset (struct hws_qsi_info_block*,int ,int) ;
 int qsi (struct hws_qsi_info_block*) ;
 scalar_t__ test_facility (int) ;

__attribute__((used)) static void cf_diag_get_cpu_speed(void)
{
 if (cpum_sf_avail()) {
  struct hws_qsi_info_block si;

  memset(&si, 0, sizeof(si));
  if (!qsi(&si)) {
   cf_diag_cpu_speed = si.cpu_speed;
   return;
  }
 }

 if (test_facility(34)) {
  unsigned long mhz = __ecag(ECAG_CPU_ATTRIBUTE, 0);

  if (mhz != -1UL)
   cf_diag_cpu_speed = mhz & 0xffffffff;
 }
}
