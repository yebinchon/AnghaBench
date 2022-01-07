
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * file; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubd_add (int,char**) ;
 TYPE_1__* ubd_devs ;
 int ubd_lock ;
 int ubd_setup_common (char*,int*,char**) ;

__attribute__((used)) static int ubd_config(char *str, char **error_out)
{
 int n, ret;





 str = kstrdup(str, GFP_KERNEL);
 if (str == ((void*)0)) {
  *error_out = "Failed to allocate memory";
  return -ENOMEM;
 }

 ret = ubd_setup_common(str, &n, error_out);
 if (ret)
  goto err_free;

 if (n == -1) {
  ret = 0;
  goto err_free;
 }

 mutex_lock(&ubd_lock);
 ret = ubd_add(n, error_out);
 if (ret)
  ubd_devs[n].file = ((void*)0);
 mutex_unlock(&ubd_lock);

out:
 return ret;

err_free:
 kfree(str);
 goto out;
}
