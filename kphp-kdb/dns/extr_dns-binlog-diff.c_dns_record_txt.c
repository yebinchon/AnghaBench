
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_dns_record_txt {int name; } ;


 int add_record (struct lev_dns_record_txt*,int,int ,int ) ;
 int dns_type_txt ;

__attribute__((used)) static int dns_record_txt (struct lev_dns_record_txt *E, int s) {
  return add_record (E, s, dns_type_txt, E->name);
}
