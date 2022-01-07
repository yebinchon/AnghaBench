; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_fetch_global_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_fetch_global_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@sun4v_chip_type = common dso_local global i64 0, align 8
@SUN4V_CHIP_NIAGARA4 = common dso_local global i64 0, align 8
@xcall_fetch_glob_pmu_n4 = common dso_local global i32 0, align 4
@xcall_fetch_glob_pmu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_fetch_global_pmu() #0 {
  %1 = load i64, i64* @tlb_type, align 8
  %2 = load i64, i64* @hypervisor, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @sun4v_chip_type, align 8
  %6 = load i64, i64* @SUN4V_CHIP_NIAGARA4, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 @smp_cross_call(i32* @xcall_fetch_glob_pmu_n4, i32 0, i32 0, i32 0)
  br label %12

10:                                               ; preds = %4, %0
  %11 = call i32 @smp_cross_call(i32* @xcall_fetch_glob_pmu, i32 0, i32 0, i32 0)
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @smp_cross_call(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
