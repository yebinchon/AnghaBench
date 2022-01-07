; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us2e-cpufreq.c_us2e_freq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us2e-cpufreq.c_us2e_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__us2e_freq_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @us2e_freq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us2e_freq_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @sparc64_get_clock_tick(i32 %6)
  %8 = sdiv i32 %7, 1000
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @__us2e_freq_get, align 4
  %12 = call i64 @smp_call_function_single(i32 %10, i32 %11, i64* %5, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @estar_to_divisor(i64 %17)
  %19 = udiv i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @sparc64_get_clock_tick(i32) #1

declare dso_local i64 @smp_call_function_single(i32, i32, i64*, i32) #1

declare dso_local i64 @estar_to_divisor(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
