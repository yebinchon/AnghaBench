
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdso_data {int dummy; } ;
struct TYPE_2__ {int seq_count; } ;


 int smp_wmb () ;
 TYPE_1__* vdso_data ;

__attribute__((used)) static void vdso_write_begin(struct vdso_data *vdata)
{
 ++vdso_data->seq_count;
 smp_wmb();
}
