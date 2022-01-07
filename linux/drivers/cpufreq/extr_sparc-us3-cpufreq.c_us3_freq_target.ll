; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us3-cpufreq.c_us3_freq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us3-cpufreq.c_us3_freq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@SAFARI_CFG_DIV_1 = common dso_local global i64 0, align 8
@SAFARI_CFG_DIV_2 = common dso_local global i64 0, align 8
@SAFARI_CFG_DIV_32 = common dso_local global i64 0, align 8
@update_safari_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @us3_freq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us3_freq_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @sparc64_get_clock_tick(i32 %11)
  %13 = sdiv i32 %12, 1000
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %28 [
    i32 0, label %16
    i32 1, label %20
    i32 2, label %24
  ]

16:                                               ; preds = %2
  %17 = load i64, i64* @SAFARI_CFG_DIV_1, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = udiv i64 %18, 1
  store i64 %19, i64* %7, align 8
  br label %30

20:                                               ; preds = %2
  %21 = load i64, i64* @SAFARI_CFG_DIV_2, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = udiv i64 %22, 2
  store i64 %23, i64* %7, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load i64, i64* @SAFARI_CFG_DIV_32, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = udiv i64 %26, 32
  store i64 %27, i64* %7, align 8
  br label %30

28:                                               ; preds = %2
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %24, %20, %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @update_safari_cfg, align 4
  %33 = call i32 @smp_call_function_single(i32 %31, i32 %32, i64* %6, i32 1)
  ret i32 %33
}

declare dso_local i32 @sparc64_get_clock_tick(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
