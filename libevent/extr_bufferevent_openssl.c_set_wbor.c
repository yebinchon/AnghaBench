
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int write_blocked_on_read; int underlying; } ;


 int start_reading (struct bufferevent_openssl*) ;
 int stop_writing (struct bufferevent_openssl*) ;

__attribute__((used)) static int
set_wbor(struct bufferevent_openssl *bev_ssl)
{
 if (!bev_ssl->underlying)
  stop_writing(bev_ssl);
 bev_ssl->write_blocked_on_read = 1;
 return start_reading(bev_ssl);
}
