
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {int dummy; } ;
struct TYPE_2__ {int nodat_stack; } ;


 int CALL_ON_STACK (int ,int ,int,struct kimage*) ;
 TYPE_1__ S390_lowcore ;
 int do_start_kdump ;

__attribute__((used)) static bool kdump_csum_valid(struct kimage *image)
{






 return 0;

}
