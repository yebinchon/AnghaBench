
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_load_tickets_file ;
 int test_memcached_ticket_update ;
 int test_serialize_tickets ;

void test_src__ssl_c(void)
{
    subtest("load-tickets-file", test_load_tickets_file);
    subtest("serialize-tickets", test_serialize_tickets);
    subtest("memcached-ticket-update", test_memcached_ticket_update);
}
