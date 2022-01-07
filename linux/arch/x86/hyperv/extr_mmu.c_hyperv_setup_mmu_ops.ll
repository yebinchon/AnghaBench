; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_mmu.c_hyperv_setup_mmu_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_mmu.c_hyperv_setup_mmu_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ms_hyperv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@HV_X64_REMOTE_TLB_FLUSH_RECOMMENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Using hypercall for remote TLB flush\0A\00", align 1
@hyperv_flush_tlb_others = common dso_local global i32 0, align 4
@pv_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@tlb_remove_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hyperv_setup_mmu_ops() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ms_hyperv, i32 0, i32 0), align 4
  %2 = load i32, i32* @HV_X64_REMOTE_TLB_FLUSH_RECOMMENDED, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %10

6:                                                ; preds = %0
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @hyperv_flush_tlb_others, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pv_ops, i32 0, i32 0, i32 1), align 4
  %9 = load i32, i32* @tlb_remove_table, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pv_ops, i32 0, i32 0, i32 0), align 4
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
