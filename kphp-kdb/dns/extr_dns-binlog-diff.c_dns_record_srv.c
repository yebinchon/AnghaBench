
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_dns_record_srv {int name; } ;


 int add_record (struct lev_dns_record_srv*,int,int ,int ) ;
 int dns_type_srv ;

__attribute__((used)) static int dns_record_srv (struct lev_dns_record_srv *E, int s) {
  return add_record (E, s, dns_type_srv, E->name);
}
