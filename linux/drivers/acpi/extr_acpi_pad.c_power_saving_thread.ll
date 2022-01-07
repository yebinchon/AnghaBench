; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_power_saving_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_power_saving_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@__const.power_saving_thread.param = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@current = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@round_robin_time = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@idle_pct = common dso_local global i32 0, align 4
@tsc_detected_unstable = common dso_local global i64 0, align 8
@tsc_marked_unstable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TSC halts in idle\00", align 1
@power_saving_mwait_eax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @power_saving_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_saving_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sched_param, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = bitcast %struct.sched_param* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.sched_param* @__const.power_saving_thread.param to i8*), i64 4, i1 false)
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @current, align 4
  %13 = load i32, i32* @SCHED_RR, align 4
  %14 = call i32 @sched_setscheduler(i32 %12, i32 %13, %struct.sched_param* %3)
  br label %15

15:                                               ; preds = %87, %1
  %16 = call i32 (...) @kthread_should_stop()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %88

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @round_robin_time, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @jiffies, align 4
  %28 = call i64 @time_before(i64 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @jiffies, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @round_robin_cpu(i32 %32)
  br label %34

34:                                               ; preds = %30, %19
  store i32 0, i32* %4, align 4
  %35 = load i32, i32* @jiffies, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = load i32, i32* @idle_pct, align 4
  %38 = sub nsw i32 100, %37
  %39 = mul nsw i32 %36, %38
  %40 = sdiv i32 %39, 100
  %41 = add nsw i32 %35, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %70, %34
  %44 = call i32 (...) @need_resched()
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i64, i64* @tsc_detected_unstable, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @tsc_marked_unstable, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 @mark_tsc_unstable(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @tsc_marked_unstable, align 4
  br label %55

55:                                               ; preds = %53, %50, %47
  %56 = call i32 (...) @local_irq_disable()
  %57 = call i32 (...) @tick_broadcast_enable()
  %58 = call i32 (...) @tick_broadcast_enter()
  %59 = call i32 (...) @stop_critical_timings()
  %60 = load i32, i32* @power_saving_mwait_eax, align 4
  %61 = call i32 @mwait_idle_with_hints(i32 %60, i32 1)
  %62 = call i32 (...) @start_critical_timings()
  %63 = call i32 (...) @tick_broadcast_exit()
  %64 = call i32 (...) @local_irq_enable()
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @jiffies, align 4
  %67 = call i64 @time_before(i64 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %55
  br label %43

71:                                               ; preds = %69, %43
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @HZ, align 4
  %77 = load i32, i32* @idle_pct, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sdiv i32 %78, 100
  %80 = call i32 @schedule_timeout_killable(i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = call i32 (...) @need_resched()
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (...) @schedule()
  br label %87

87:                                               ; preds = %85, %81
  br label %15

88:                                               ; preds = %15
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @exit_round_robin(i32 %89)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i32 @kthread_should_stop(...) #2

declare dso_local i64 @time_before(i64, i32) #2

declare dso_local i32 @round_robin_cpu(i32) #2

declare dso_local i32 @need_resched(...) #2

declare dso_local i32 @mark_tsc_unstable(i8*) #2

declare dso_local i32 @local_irq_disable(...) #2

declare dso_local i32 @tick_broadcast_enable(...) #2

declare dso_local i32 @tick_broadcast_enter(...) #2

declare dso_local i32 @stop_critical_timings(...) #2

declare dso_local i32 @mwait_idle_with_hints(i32, i32) #2

declare dso_local i32 @start_critical_timings(...) #2

declare dso_local i32 @tick_broadcast_exit(...) #2

declare dso_local i32 @local_irq_enable(...) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @schedule_timeout_killable(i32) #2

declare dso_local i32 @schedule(...) #2

declare dso_local i32 @exit_round_robin(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
