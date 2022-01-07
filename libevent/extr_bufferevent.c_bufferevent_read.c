
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int input; } ;


 size_t evbuffer_remove (int ,void*,size_t) ;

size_t
bufferevent_read(struct bufferevent *bufev, void *data, size_t size)
{
 return (evbuffer_remove(bufev->input, data, size));
}
