
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regress_dns_server_table {int dummy; } ;
struct event_base {int dummy; } ;
typedef int ev_uint16_t ;


 int * dns_port ;
 int dns_sock ;
 int regress_dns_server_cb ;
 int * regress_get_dnsserver (struct event_base*,int *,int *,int ,struct regress_dns_server_table*) ;

int
regress_dnsserver(struct event_base *base, ev_uint16_t *port,
    struct regress_dns_server_table *search_table)
{
 dns_port = regress_get_dnsserver(base, port, &dns_sock,
     regress_dns_server_cb, search_table);
 return dns_port != ((void*)0);
}
