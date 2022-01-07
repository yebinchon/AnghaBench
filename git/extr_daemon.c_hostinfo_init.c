
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostinfo {int tcp_port; int ip_address; int canon_hostname; int hostname; } ;


 int memset (struct hostinfo*,int ,int) ;
 int strbuf_init (int *,int ) ;

__attribute__((used)) static void hostinfo_init(struct hostinfo *hi)
{
 memset(hi, 0, sizeof(*hi));
 strbuf_init(&hi->hostname, 0);
 strbuf_init(&hi->canon_hostname, 0);
 strbuf_init(&hi->ip_address, 0);
 strbuf_init(&hi->tcp_port, 0);
}
