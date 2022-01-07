
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {unsigned int flags; } ;



void
evhttp_uri_set_flags(struct evhttp_uri *uri, unsigned flags)
{
 uri->flags = flags;
}
