; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_vtime_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_vtime_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VTIMER_MAX_SLICE = common dso_local global i32 0, align 4
@smp_cpu_mtid = common dso_local global i64 0, align 8
@mt_scaling_jiffies = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mt_scaling_mult = common dso_local global i32 0, align 4
@mt_scaling_div = common dso_local global i32 0, align 4
@MT_DIAG = common dso_local global i32 0, align 4
@mt_cycles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtime_init() #0 {
  %1 = load i32, i32* @VTIMER_MAX_SLICE, align 4
  %2 = call i32 @set_vtimer(i32 %1)
  %3 = load i64, i64* @smp_cpu_mtid, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @mt_scaling_jiffies, align 4
  %7 = load i32, i32* @jiffies, align 4
  %8 = call i32 @__this_cpu_write(i32 %6, i32 %7)
  %9 = load i32, i32* @mt_scaling_mult, align 4
  %10 = call i32 @__this_cpu_write(i32 %9, i32 1)
  %11 = load i32, i32* @mt_scaling_div, align 4
  %12 = call i32 @__this_cpu_write(i32 %11, i32 1)
  %13 = load i32, i32* @MT_DIAG, align 4
  %14 = load i64, i64* @smp_cpu_mtid, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* @mt_cycles, align 4
  %17 = call i32 @this_cpu_ptr(i32 %16)
  %18 = call i32 @stcctm(i32 %13, i64 %15, i32 %17)
  br label %19

19:                                               ; preds = %5, %0
  ret void
}

declare dso_local i32 @set_vtimer(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @stcctm(i32, i64, i32) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
