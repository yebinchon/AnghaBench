
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_latency_info {int lock; scalar_t__ scale_lat; int * scale_grp; scalar_t__ last_scale_event; int scale_cookie; } ;
struct iolatency_grp {struct child_latency_info child_lat; } ;
struct blkcg_gq {scalar_t__ parent; } ;


 int DEFAULT_SCALE_COOKIE ;
 int atomic_set (int *,int ) ;
 struct iolatency_grp* blkg_to_lat (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iolatency_clear_scaling(struct blkcg_gq *blkg)
{
 if (blkg->parent) {
  struct iolatency_grp *iolat = blkg_to_lat(blkg->parent);
  struct child_latency_info *lat_info;
  if (!iolat)
   return;

  lat_info = &iolat->child_lat;
  spin_lock(&lat_info->lock);
  atomic_set(&lat_info->scale_cookie, DEFAULT_SCALE_COOKIE);
  lat_info->last_scale_event = 0;
  lat_info->scale_grp = ((void*)0);
  lat_info->scale_lat = 0;
  spin_unlock(&lat_info->lock);
 }
}
