
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;


 int RAND_MAX ;
 scalar_t__ rand () ;

vec_t Random( void ){
 return (vec_t) rand() / RAND_MAX;
}
