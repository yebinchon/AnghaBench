
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;


 int D_DISKLESS ;
 int D_FAILED ;
 int D_INCONSISTENT ;
 int D_OUTDATED ;
 int D_UNKNOWN ;

__attribute__((used)) static bool lost_contact_to_peer_data(enum drbd_disk_state os, enum drbd_disk_state ns)
{
 if ((os >= D_INCONSISTENT && os != D_UNKNOWN && os != D_OUTDATED)
 && (ns < D_INCONSISTENT || ns == D_UNKNOWN || ns == D_OUTDATED))
  return 1;







 if (os == D_UNKNOWN
 && (ns == D_DISKLESS || ns == D_FAILED || ns == D_OUTDATED))
  return 1;

 return 0;
}
