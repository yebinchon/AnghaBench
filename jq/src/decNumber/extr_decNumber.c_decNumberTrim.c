
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decNumber ;
typedef int decContext ;
typedef int Int ;


 int DECUNCONT ;
 int DECUNRESU ;
 int DECUNUSED ;
 int DEC_INIT_BASE ;
 scalar_t__ decCheckOperands (int ,int ,int *,int ) ;
 int decContextDefault (int *,int ) ;
 int * decTrim (int *,int *,int ,int,int *) ;

decNumber * decNumberTrim(decNumber *dn) {
  Int dropped;
  decContext set;



  decContextDefault(&set, DEC_INIT_BASE);
  return decTrim(dn, &set, 0, 1, &dropped);
  }
