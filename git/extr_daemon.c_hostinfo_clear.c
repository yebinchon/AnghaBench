
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostinfo {int tcp_port; int ip_address; int canon_hostname; int hostname; } ;


 int strbuf_release (int *) ;

__attribute__((used)) static void hostinfo_clear(struct hostinfo *hi)
{
 strbuf_release(&hi->hostname);
 strbuf_release(&hi->canon_hostname);
 strbuf_release(&hi->ip_address);
 strbuf_release(&hi->tcp_port);
}
