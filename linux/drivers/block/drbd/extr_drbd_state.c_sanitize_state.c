
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


union drbd_state {scalar_t__ conn; scalar_t__ pdsk; scalar_t__ disk; scalar_t__ role; int susp_fen; int susp_nod; scalar_t__ user_isp; scalar_t__ peer_isp; scalar_t__ aftr_isp; int peer; } ;
struct TYPE_9__ {scalar_t__ disk; scalar_t__ pdsk; } ;
struct drbd_device {scalar_t__ ed_uuid; TYPE_5__* resource; TYPE_3__ new_state_tmp; TYPE_2__* ldev; } ;
typedef enum sanitize_state_warnings { ____Placeholder_sanitize_state_warnings } sanitize_state_warnings ;
typedef enum drbd_fencing_p { ____Placeholder_drbd_fencing_p } drbd_fencing_p ;
typedef enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;
typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;
struct TYPE_12__ {int fencing; } ;
struct TYPE_10__ {scalar_t__ on_no_data; } ;
struct TYPE_11__ {TYPE_4__ res_opts; } ;
struct TYPE_7__ {scalar_t__* uuid; } ;
struct TYPE_8__ {TYPE_1__ md; int disk_conf; } ;


 int ABORTED_ONLINE_VERIFY ;
 int ABORTED_RESYNC ;
 int CONNECTION_LOST_NEGOTIATING ;
 scalar_t__ D_CONSISTENT ;
 scalar_t__ D_DISKLESS ;
 scalar_t__ D_FAILED ;
 scalar_t__ D_INCONSISTENT ;
 scalar_t__ D_NEGOTIATING ;
 scalar_t__ D_OUTDATED ;
 scalar_t__ D_UNKNOWN ;
 scalar_t__ D_UP_TO_DATE ;
 int FP_DONT_CARE ;
 int FP_STONITH ;
 int IMPLICITLY_UPGRADED_DISK ;
 int IMPLICITLY_UPGRADED_PDSK ;
 int NO_WARNING ;
 scalar_t__ OND_SUSPEND_IO ;
 scalar_t__ R_PRIMARY ;
 scalar_t__ R_SECONDARY ;
 int R_UNKNOWN ;
 size_t UI_CURRENT ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 scalar_t__ get_ldev_if_state (struct drbd_device*,scalar_t__) ;
 int put_ldev (struct drbd_device*) ;
 TYPE_6__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static union drbd_state sanitize_state(struct drbd_device *device, union drbd_state os,
           union drbd_state ns, enum sanitize_state_warnings *warn)
{
 enum drbd_fencing_p fp;
 enum drbd_disk_state disk_min, disk_max, pdsk_min, pdsk_max;

 if (warn)
  *warn = NO_WARNING;

 fp = FP_DONT_CARE;
 if (get_ldev(device)) {
  rcu_read_lock();
  fp = rcu_dereference(device->ldev->disk_conf)->fencing;
  rcu_read_unlock();
  put_ldev(device);
 }


 if (ns.conn < 149) {
  ns.peer_isp = 0;
  ns.peer = R_UNKNOWN;
  if (ns.pdsk > D_UNKNOWN || ns.pdsk < D_INCONSISTENT)
   ns.pdsk = D_UNKNOWN;
 }


 if (ns.conn == 142 && ns.disk == D_DISKLESS && ns.role == R_SECONDARY)
  ns.aftr_isp = 0;



 if (ns.conn > 149 && (ns.disk <= D_FAILED || ns.pdsk <= D_FAILED)) {
  if (warn)
   *warn = ns.conn == 134 || ns.conn == 133 ?
    ABORTED_ONLINE_VERIFY : ABORTED_RESYNC;
  ns.conn = 149;
 }


 if (ns.conn < 149 && ns.disk == D_NEGOTIATING &&
     get_ldev_if_state(device, D_NEGOTIATING)) {
  if (device->ed_uuid == device->ldev->md.uuid[UI_CURRENT]) {
   ns.disk = device->new_state_tmp.disk;
   ns.pdsk = device->new_state_tmp.pdsk;
  } else {
   if (warn)
    *warn = CONNECTION_LOST_NEGOTIATING;
   ns.disk = D_DISKLESS;
   ns.pdsk = D_UNKNOWN;
  }
  put_ldev(device);
 }


 if (ns.conn >= 149 && ns.conn < 152) {
  if (ns.disk == D_CONSISTENT || ns.disk == D_OUTDATED)
   ns.disk = D_UP_TO_DATE;
  if (ns.pdsk == D_CONSISTENT || ns.pdsk == D_OUTDATED)
   ns.pdsk = D_UP_TO_DATE;
 }


 disk_min = D_DISKLESS;
 disk_max = D_UP_TO_DATE;
 pdsk_min = D_INCONSISTENT;
 pdsk_max = D_UNKNOWN;
 switch ((enum drbd_conns)ns.conn) {
 case 131:
 case 144:
 case 140:
 case 128:
 case 151:
  disk_min = D_INCONSISTENT;
  disk_max = D_OUTDATED;
  pdsk_min = D_UP_TO_DATE;
  pdsk_max = D_UP_TO_DATE;
  break;
 case 134:
 case 133:
  disk_min = D_UP_TO_DATE;
  disk_max = D_UP_TO_DATE;
  pdsk_min = D_UP_TO_DATE;
  pdsk_max = D_UP_TO_DATE;
  break;
 case 149:
  disk_min = D_DISKLESS;
  disk_max = D_UP_TO_DATE;
  pdsk_min = D_DISKLESS;
  pdsk_max = D_UP_TO_DATE;
  break;
 case 132:
 case 145:
 case 141:
 case 152:
  disk_min = D_UP_TO_DATE;
  disk_max = D_UP_TO_DATE;
  pdsk_min = D_INCONSISTENT;
  pdsk_max = D_CONSISTENT;
  break;
 case 138:
  disk_min = D_INCONSISTENT;
  disk_max = D_INCONSISTENT;
  pdsk_min = D_UP_TO_DATE;
  pdsk_max = D_UP_TO_DATE;
  break;
 case 139:
  disk_min = D_UP_TO_DATE;
  disk_max = D_UP_TO_DATE;
  pdsk_min = D_INCONSISTENT;
  pdsk_max = D_INCONSISTENT;
  break;
 case 142:
 case 148:
 case 135:
 case 136:
 case 150:
 case 146:
 case 143:
 case 137:
 case 130:
 case 129:
 case 147:
  break;
 }
 if (ns.disk > disk_max)
  ns.disk = disk_max;

 if (ns.disk < disk_min) {
  if (warn)
   *warn = IMPLICITLY_UPGRADED_DISK;
  ns.disk = disk_min;
 }
 if (ns.pdsk > pdsk_max)
  ns.pdsk = pdsk_max;

 if (ns.pdsk < pdsk_min) {
  if (warn)
   *warn = IMPLICITLY_UPGRADED_PDSK;
  ns.pdsk = pdsk_min;
 }

 if (fp == FP_STONITH &&
     (ns.role == R_PRIMARY && ns.conn < 149 && ns.pdsk > D_OUTDATED) &&
     !(os.role == R_PRIMARY && os.conn < 149 && os.pdsk > D_OUTDATED))
  ns.susp_fen = 1;

 if (device->resource->res_opts.on_no_data == OND_SUSPEND_IO &&
     (ns.role == R_PRIMARY && ns.disk < D_UP_TO_DATE && ns.pdsk < D_UP_TO_DATE) &&
     !(os.role == R_PRIMARY && os.disk < D_UP_TO_DATE && os.pdsk < D_UP_TO_DATE))
  ns.susp_nod = 1;

 if (ns.aftr_isp || ns.peer_isp || ns.user_isp) {
  if (ns.conn == 139)
   ns.conn = 145;
  if (ns.conn == 138)
   ns.conn = 144;
 } else {
  if (ns.conn == 145)
   ns.conn = 139;
  if (ns.conn == 144)
   ns.conn = 138;
 }

 return ns;
}
