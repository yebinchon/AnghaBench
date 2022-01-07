
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int heads ;
 int sectors ;

__attribute__((used)) static inline unsigned long round_to_cyl(long sect)
{
 int cyl_size = heads * sectors;

 return sect + cyl_size - (sect % cyl_size);
}
