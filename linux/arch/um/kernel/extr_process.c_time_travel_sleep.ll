; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_time_travel_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_time_travel_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_travel_time = common dso_local global i64 0, align 8
@time_travel_mode = common dso_local global i64 0, align 8
@TT_MODE_INFCPU = common dso_local global i64 0, align 8
@time_travel_timer_mode = common dso_local global i64 0, align 8
@TT_TMR_PERIODIC = common dso_local global i64 0, align 8
@time_travel_timer_expiry = common dso_local global i64 0, align 8
@time_travel_timer_interval = common dso_local global i64 0, align 8
@TT_TMR_DISABLED = common dso_local global i64 0, align 8
@TT_TMR_ONESHOT = common dso_local global i64 0, align 8
@TT_MODE_BASIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @time_travel_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_travel_sleep(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @time_travel_time, align 8
  %5 = load i64, i64* %2, align 8
  %6 = add i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @time_travel_mode, align 8
  %8 = load i64, i64* @TT_MODE_INFCPU, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @os_timer_disable()
  br label %12

12:                                               ; preds = %10, %1
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i64, i64* @time_travel_timer_mode, align 8
  %15 = load i64, i64* @TT_TMR_PERIODIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* @time_travel_timer_expiry, align 8
  %19 = load i64, i64* @time_travel_time, align 8
  %20 = icmp ult i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = load i64, i64* @time_travel_timer_expiry, align 8
  %25 = load i64, i64* @time_travel_timer_interval, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @time_travel_set_timer_expiry(i64 %26)
  br label %13

28:                                               ; preds = %21
  %29 = load i64, i64* @time_travel_timer_mode, align 8
  %30 = load i64, i64* @TT_TMR_DISABLED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i64, i64* @time_travel_timer_expiry, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i64, i64* @time_travel_timer_mode, align 8
  %38 = load i64, i64* @TT_TMR_ONESHOT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @TT_TMR_DISABLED, align 8
  %42 = call i32 @time_travel_set_timer_mode(i64 %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* @time_travel_mode, align 8
  %45 = load i64, i64* @TT_MODE_BASIC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @time_travel_timer_expiry, align 8
  %49 = call i32 @time_travel_set_time(i64 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = call i32 (...) @deliver_alarm()
  br label %55

52:                                               ; preds = %32, %28
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @time_travel_set_time(i64 %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = load i64, i64* @time_travel_mode, align 8
  %57 = load i64, i64* @TT_MODE_INFCPU, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i64, i64* @time_travel_timer_mode, align 8
  %61 = load i64, i64* @TT_TMR_PERIODIC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @time_travel_timer_interval, align 8
  %65 = call i32 @os_timer_set_interval(i64 %64)
  br label %76

66:                                               ; preds = %59
  %67 = load i64, i64* @time_travel_timer_mode, align 8
  %68 = load i64, i64* @TT_TMR_ONESHOT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* @time_travel_timer_expiry, align 8
  %72 = load i64, i64* %3, align 8
  %73 = sub i64 %71, %72
  %74 = call i32 @os_timer_one_shot(i64 %73)
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %55
  ret void
}

declare dso_local i32 @os_timer_disable(...) #1

declare dso_local i32 @time_travel_set_timer_expiry(i64) #1

declare dso_local i32 @time_travel_set_timer_mode(i64) #1

declare dso_local i32 @time_travel_set_time(i64) #1

declare dso_local i32 @deliver_alarm(...) #1

declare dso_local i32 @os_timer_set_interval(i64) #1

declare dso_local i32 @os_timer_one_shot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
