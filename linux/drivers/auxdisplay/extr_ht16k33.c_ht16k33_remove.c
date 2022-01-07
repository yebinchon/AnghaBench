
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ht16k33_fbdev {scalar_t__ buffer; int info; int work; } ;
struct ht16k33_priv {struct ht16k33_fbdev fbdev; } ;


 int cancel_delayed_work_sync (int *) ;
 int framebuffer_release (int ) ;
 int free_page (unsigned long) ;
 struct ht16k33_priv* i2c_get_clientdata (struct i2c_client*) ;
 int unregister_framebuffer (int ) ;

__attribute__((used)) static int ht16k33_remove(struct i2c_client *client)
{
 struct ht16k33_priv *priv = i2c_get_clientdata(client);
 struct ht16k33_fbdev *fbdev = &priv->fbdev;

 cancel_delayed_work_sync(&fbdev->work);
 unregister_framebuffer(fbdev->info);
 framebuffer_release(fbdev->info);
 free_page((unsigned long) fbdev->buffer);

 return 0;
}
