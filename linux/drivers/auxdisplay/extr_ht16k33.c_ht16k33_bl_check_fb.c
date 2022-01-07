
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht16k33_priv {int dummy; } ;
struct fb_info {struct ht16k33_priv* par; } ;
struct backlight_device {int dummy; } ;


 struct ht16k33_priv* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int ht16k33_bl_check_fb(struct backlight_device *bl, struct fb_info *fi)
{
 struct ht16k33_priv *priv = bl_get_data(bl);

 return (fi == ((void*)0)) || (fi->par == priv);
}
