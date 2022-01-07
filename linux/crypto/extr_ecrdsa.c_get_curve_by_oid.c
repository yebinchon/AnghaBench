
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecc_curve {int dummy; } ;
typedef enum OID { ____Placeholder_OID } OID ;
 struct ecc_curve const gost_cp256a ;
 struct ecc_curve const gost_cp256b ;
 struct ecc_curve const gost_cp256c ;
 struct ecc_curve const gost_tc512a ;
 struct ecc_curve const gost_tc512b ;

__attribute__((used)) static const struct ecc_curve *get_curve_by_oid(enum OID oid)
{
 switch (oid) {
 case 137:
 case 133:
  return &gost_cp256a;
 case 136:
 case 132:
  return &gost_cp256b;
 case 135:
 case 131:
  return &gost_cp256c;
 case 130:
  return &gost_tc512a;
 case 129:
  return &gost_tc512b;

 case 134:
 case 128:
 default:
  return ((void*)0);
 }
}
