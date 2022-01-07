; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_aperfmperf.c_aperfmperf_get_khz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_aperfmperf.c_aperfmperf_get_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cpu_khz = common dso_local global i32 0, align 4
@X86_FEATURE_APERFMPERF = common dso_local global i32 0, align 4
@HK_FLAG_MISC = common dso_local global i32 0, align 4
@samples = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aperfmperf_get_khz(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @cpu_khz, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load i32, i32* @X86_FEATURE_APERFMPERF, align 4
  %9 = call i32 @boot_cpu_has(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @HK_FLAG_MISC, align 4
  %15 = call i32 @housekeeping_cpu(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (...) @ktime_get()
  %21 = call i32 @aperfmperf_snapshot_cpu(i32 %19, i32 %20, i32 1)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @samples, i32 0, i32 0), align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @per_cpu(i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %17, %11, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @housekeeping_cpu(i32, i32) #1

declare dso_local i32 @aperfmperf_snapshot_cpu(i32, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @per_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
