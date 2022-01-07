
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hrz_dev ;


 int insb (scalar_t__,void*,int ) ;

__attribute__((used)) static inline void rds_regb (const hrz_dev * dev, unsigned char reg, void * addr, u32 len) {
  insb (dev->iobase + reg, addr, len);
}
