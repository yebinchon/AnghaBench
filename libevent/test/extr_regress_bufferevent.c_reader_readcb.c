
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int TT_BLATHER (char*) ;
 scalar_t__ bufferevent_getfd (struct bufferevent*) ;
 int n_reads_invoked ;

__attribute__((used)) static void
reader_readcb(struct bufferevent *bev, void *ctx)
{
 TT_BLATHER(("Read invoked on %d.", (int)bufferevent_getfd(bev)));
 n_reads_invoked++;
}
