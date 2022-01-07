
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {size_t d; scalar_t__ magic; } ;
typedef TYPE_1__ div_info_t ;


 int assert (int) ;

void
div_init(div_info_t *div_info, size_t d) {

 assert(d != 0);





 assert(d != 1);

 uint64_t two_to_k = ((uint64_t)1 << 32);
 uint32_t magic = (uint32_t)(two_to_k / d);






 if (two_to_k % d != 0) {
  magic++;
 }
 div_info->magic = magic;



}
