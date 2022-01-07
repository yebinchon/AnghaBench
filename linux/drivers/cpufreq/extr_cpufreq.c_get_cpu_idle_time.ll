; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_get_cpu_idle_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_get_cpu_idle_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_cpu_idle_time(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i64* [ %13, %12 ], [ null, %14 ]
  %17 = call i64 @get_cpu_idle_time_us(i32 %9, i64* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = call i64 @get_cpu_idle_time_jiffy(i32 %21, i64* %22)
  store i64 %23, i64* %4, align 8
  br label %36

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i64*, i64** %6, align 8
  %30 = call i64 @get_cpu_iowait_time_us(i32 %28, i64* %29)
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %20
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i64 @get_cpu_idle_time_us(i32, i64*) #1

declare dso_local i64 @get_cpu_idle_time_jiffy(i32, i64*) #1

declare dso_local i64 @get_cpu_iowait_time_us(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
