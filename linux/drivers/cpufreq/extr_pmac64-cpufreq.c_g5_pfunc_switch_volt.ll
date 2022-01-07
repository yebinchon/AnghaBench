; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac64-cpufreq.c_g5_pfunc_switch_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac64-cpufreq.c_g5_pfunc_switch_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUFREQ_HIGH = common dso_local global i32 0, align 4
@pfunc_cpu0_volt_high = common dso_local global i64 0, align 8
@pfunc_cpu1_volt_high = common dso_local global i64 0, align 8
@pfunc_cpu0_volt_low = common dso_local global i64 0, align 8
@pfunc_cpu1_volt_low = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @g5_pfunc_switch_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g5_pfunc_switch_volt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @CPUFREQ_HIGH, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i64, i64* @pfunc_cpu0_volt_high, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* @pfunc_cpu0_volt_high, align 8
  %11 = call i32 @pmf_call_one(i64 %10, i32* null)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @pfunc_cpu1_volt_high, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @pfunc_cpu1_volt_high, align 8
  %17 = call i32 @pmf_call_one(i64 %16, i32* null)
  br label %18

18:                                               ; preds = %15, %12
  br label %32

19:                                               ; preds = %1
  %20 = load i64, i64* @pfunc_cpu0_volt_low, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @pfunc_cpu0_volt_low, align 8
  %24 = call i32 @pmf_call_one(i64 %23, i32* null)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @pfunc_cpu1_volt_low, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @pfunc_cpu1_volt_low, align 8
  %30 = call i32 @pmf_call_one(i64 %29, i32* null)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  %33 = call i32 @usleep_range(i32 10000, i32 10000)
  ret void
}

declare dso_local i32 @pmf_call_one(i64, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
