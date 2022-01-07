
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int TT_FAIL (char*) ;

__attribute__((used)) static void
sender_errorcb(struct bufferevent *bev, short what, void *ctx)
{
 TT_FAIL(("Got sender error %d",(int)what));
}
