
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_neverbleed_thread_data_t {int fd; } ;


 int assert (int) ;
 int close (int) ;

void dispose_thread_data(void *_thdata)
{
    struct st_neverbleed_thread_data_t *thdata = _thdata;
    assert(thdata->fd >= 0);
    close(thdata->fd);
    thdata->fd = -1;
}
