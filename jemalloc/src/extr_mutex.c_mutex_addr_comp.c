
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int witness_t ;


 int assert (int ) ;

__attribute__((used)) static int
mutex_addr_comp(const witness_t *witness1, void *mutex1,
    const witness_t *witness2, void *mutex2) {
 assert(mutex1 != ((void*)0));
 assert(mutex2 != ((void*)0));
 uintptr_t mu1int = (uintptr_t)mutex1;
 uintptr_t mu2int = (uintptr_t)mutex2;
 if (mu1int < mu2int) {
  return -1;
 } else if (mu1int == mu2int) {
  return 0;
 } else {
  return 1;
 }
}
