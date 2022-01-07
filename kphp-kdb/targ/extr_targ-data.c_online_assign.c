
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLIST_COUNT ;
 scalar_t__* ocntT ;
 int online_increment (int,scalar_t__) ;

__attribute__((used)) static inline void online_assign (int p, int val) {
  online_increment (p, val - ocntT[OLIST_COUNT + p]);
}
