
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hrz_dev ;


 int inl (scalar_t__) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 rd_regl (const hrz_dev * dev, unsigned char reg) {
  return le32_to_cpu (inl (dev->iobase + reg));
}
