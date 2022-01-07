
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int EV_READ ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int bufferevent_write (struct bufferevent*,char const*,int ) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int strlen (char const*) ;
 int test_ok ;

__attribute__((used)) static void
http_half_writecb(struct bufferevent *bev, void *arg)
{
 if (evbuffer_get_length(bufferevent_get_output(bev)) == 0) {
  if (!test_ok) {
   const char http_request[] = "host\r\n"
    "Connection: close\r\n"
    "\r\n";
   bufferevent_write(bev, http_request, strlen(http_request));
  }

  bufferevent_enable(bev, EV_READ);
  test_ok++;
 }
}
