
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv_write ;
typedef int tv_read ;
struct timeval {int tv_sec; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_set_timeouts (struct bufferevent*,struct timeval*,struct timeval*) ;
 int memset (struct timeval*,int ,int) ;

void
bufferevent_settimeout(struct bufferevent *bufev,
         int timeout_read, int timeout_write)
{
 struct timeval tv_read, tv_write;
 struct timeval *ptv_read = ((void*)0), *ptv_write = ((void*)0);

 memset(&tv_read, 0, sizeof(tv_read));
 memset(&tv_write, 0, sizeof(tv_write));

 if (timeout_read) {
  tv_read.tv_sec = timeout_read;
  ptv_read = &tv_read;
 }
 if (timeout_write) {
  tv_write.tv_sec = timeout_write;
  ptv_write = &tv_write;
 }

 bufferevent_set_timeouts(bufev, ptv_read, ptv_write);
}
