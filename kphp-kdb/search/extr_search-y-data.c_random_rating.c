
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 int lrand48 () ;

__attribute__((used)) static int random_rating (item_t *I) {
  return lrand48 ();
}
