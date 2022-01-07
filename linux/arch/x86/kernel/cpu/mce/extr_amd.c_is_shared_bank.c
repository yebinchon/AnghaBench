
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ smca; } ;


 TYPE_1__ mce_flags ;

__attribute__((used)) static inline bool is_shared_bank(int bank)
{




 if (mce_flags.smca)
  return 0;


 return (bank == 4);
}
