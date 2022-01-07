
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int watch_mutex; int watch_cookie; } ;


 char* RBD_LOCK_COOKIE_PREFIX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*,int ) ;

__attribute__((used)) static void format_lock_cookie(struct rbd_device *rbd_dev, char *buf)
{
 mutex_lock(&rbd_dev->watch_mutex);
 sprintf(buf, "%s %llu", RBD_LOCK_COOKIE_PREFIX, rbd_dev->watch_cookie);
 mutex_unlock(&rbd_dev->watch_mutex);
}
