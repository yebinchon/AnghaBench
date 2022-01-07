; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_do_set_cpu_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_do_set_cpu_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@do_set_cpu_speed.prev_l3cr = internal global i64 0, align 8
@CPUFREQ_LOW = common dso_local global i32 0, align 4
@CPU_FTR_L3CR = common dso_local global i32 0, align 4
@L3CR_L3E = common dso_local global i64 0, align 8
@CPUFREQ_HIGH = common dso_local global i32 0, align 4
@hi_freq = common dso_local global i32 0, align 4
@low_freq = common dso_local global i32 0, align 4
@cur_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @do_set_cpu_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_cpu_speed(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CPUFREQ_LOW, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* @CPU_FTR_L3CR, align 4
  %11 = call i64 @cpu_has_feature(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = call i64 (...) @_get_L3CR()
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @L3CR_L3E, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %21 = call i32 @_set_L3CR(i64 0)
  br label %22

22:                                               ; preds = %19, %13
  br label %23

23:                                               ; preds = %22, %9, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CPUFREQ_LOW, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @set_speed_proc(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CPUFREQ_HIGH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %23
  %33 = load i32, i32* @CPU_FTR_L3CR, align 4
  %34 = call i64 @cpu_has_feature(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = call i64 (...) @_get_L3CR()
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %39 = load i64, i64* @L3CR_L3E, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %48 = call i32 @_set_L3CR(i64 %47)
  br label %49

49:                                               ; preds = %46, %42, %36
  br label %50

50:                                               ; preds = %49, %32, %23
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @CPUFREQ_HIGH, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @hi_freq, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @low_freq, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* @cur_freq, align 4
  ret i32 0
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @_get_L3CR(...) #1

declare dso_local i32 @_set_L3CR(i64) #1

declare dso_local i32 @set_speed_proc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
