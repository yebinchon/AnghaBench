
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hrz_dev ;


 int inw (scalar_t__) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 rd_regw (const hrz_dev * dev, unsigned char reg) {
  return le16_to_cpu (inw (dev->iobase + reg));
}
