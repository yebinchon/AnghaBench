
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double CLOCKS_PER_SEC ;
 double clock () ;
 double start ;

__attribute__((used)) static double current_time () {
  return (clock() - start) / CLOCKS_PER_SEC;
}
