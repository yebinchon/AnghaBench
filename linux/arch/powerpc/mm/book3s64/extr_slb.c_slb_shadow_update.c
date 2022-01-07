
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slb_shadow {TYPE_1__* save_area; } ;
typedef enum slb_index { ____Placeholder_slb_index } slb_index ;
struct TYPE_2__ {int esid; int vsid; } ;


 int WRITE_ONCE (int ,int ) ;
 int cpu_to_be64 (int ) ;
 struct slb_shadow* get_slb_shadow () ;
 int mk_esid_data (unsigned long,int,int) ;
 int mk_vsid_data (unsigned long,int,unsigned long) ;

__attribute__((used)) static inline void slb_shadow_update(unsigned long ea, int ssize,
         unsigned long flags,
         enum slb_index index)
{
 struct slb_shadow *p = get_slb_shadow();






 WRITE_ONCE(p->save_area[index].esid, 0);
 WRITE_ONCE(p->save_area[index].vsid, cpu_to_be64(mk_vsid_data(ea, ssize, flags)));
 WRITE_ONCE(p->save_area[index].esid, cpu_to_be64(mk_esid_data(ea, ssize, index)));
}
