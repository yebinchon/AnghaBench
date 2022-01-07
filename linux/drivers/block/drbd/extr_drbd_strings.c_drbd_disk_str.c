
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;


 int D_UP_TO_DATE ;
 char const** drbd_disk_s_names ;

const char *drbd_disk_str(enum drbd_disk_state s)
{
 return s > D_UP_TO_DATE ? "TOO_LARGE" : drbd_disk_s_names[s];
}
