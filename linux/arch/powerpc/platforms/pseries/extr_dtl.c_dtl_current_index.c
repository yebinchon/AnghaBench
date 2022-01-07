
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct dtl {int cpu; } ;
struct TYPE_2__ {int dtl_idx; } ;


 int be64_to_cpu (int ) ;
 TYPE_1__ lppaca_of (int ) ;

__attribute__((used)) static u64 dtl_current_index(struct dtl *dtl)
{
 return be64_to_cpu(lppaca_of(dtl->cpu).dtl_idx);
}
