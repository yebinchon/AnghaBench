
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum slb_index { ____Placeholder_slb_index } slb_index ;
struct TYPE_4__ {TYPE_1__* save_area; } ;
struct TYPE_3__ {int esid; } ;


 int WRITE_ONCE (int ,int ) ;
 int cpu_to_be64 (int) ;
 TYPE_2__* get_slb_shadow () ;

__attribute__((used)) static inline void slb_shadow_clear(enum slb_index index)
{
 WRITE_ONCE(get_slb_shadow()->save_area[index].esid, cpu_to_be64(index));
}
