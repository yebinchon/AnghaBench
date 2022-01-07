
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int device_id_scheme ;

__attribute__((used)) static int video_set_device_id_scheme(const struct dmi_system_id *d)
{
 device_id_scheme = 1;
 return 0;
}
