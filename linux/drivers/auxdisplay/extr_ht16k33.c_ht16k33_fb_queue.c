
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht16k33_fbdev {int refresh_rate; int work; } ;
struct ht16k33_priv {struct ht16k33_fbdev fbdev; } ;


 int HZ ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void ht16k33_fb_queue(struct ht16k33_priv *priv)
{
 struct ht16k33_fbdev *fbdev = &priv->fbdev;

 schedule_delayed_work(&fbdev->work,
         msecs_to_jiffies(HZ / fbdev->refresh_rate));
}
