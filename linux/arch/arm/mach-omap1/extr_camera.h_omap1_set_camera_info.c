
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap1_cam_platform_data {int dummy; } ;


 int omap1_camera_init (struct omap1_cam_platform_data*) ;

__attribute__((used)) static inline void omap1_set_camera_info(struct omap1_cam_platform_data *info)
{
 omap1_camera_init(info);
}
