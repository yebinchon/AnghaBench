; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_thread_busy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_thread_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i64 }
%struct.timespec = type { i32 }

@num_max_busy_us = common dso_local global i64 0, align 8
@kipmid_max_busy_us = common dso_local global i32* null, align 8
@SI_SM_CALL_WITH_DELAY = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.smi_info*, %struct.timespec*)* @ipmi_thread_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_thread_busy_wait(i32 %0, %struct.smi_info* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smi_info*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  store i32 %0, i32* %5, align 4
  store %struct.smi_info* %1, %struct.smi_info** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.smi_info*, %struct.smi_info** %6, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @num_max_busy_us, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** @kipmid_max_busy_us, align 8
  %17 = load %struct.smi_info*, %struct.smi_info** %6, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SI_SM_CALL_WITH_DELAY, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load %struct.timespec*, %struct.timespec** %7, align 8
  %31 = call i32 @ipmi_si_set_not_busy(%struct.timespec* %30)
  br label %57

32:                                               ; preds = %25
  %33 = load %struct.timespec*, %struct.timespec** %7, align 8
  %34 = call i32 @ipmi_si_is_busy(%struct.timespec* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.timespec*, %struct.timespec** %7, align 8
  %38 = call i32 @ktime_get_ts(%struct.timespec* %37)
  %39 = load %struct.timespec*, %struct.timespec** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @NSEC_PER_USEC, align 4
  %42 = mul i32 %40, %41
  %43 = call i32 @timespec_add_ns(%struct.timespec* %39, i32 %42)
  br label %56

44:                                               ; preds = %32
  %45 = call i32 @ktime_get_ts(%struct.timespec* %9)
  %46 = load %struct.timespec*, %struct.timespec** %7, align 8
  %47 = call i64 @timespec_compare(%struct.timespec* %9, %struct.timespec* %46)
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.timespec*, %struct.timespec** %7, align 8
  %54 = call i32 @ipmi_si_set_not_busy(%struct.timespec* %53)
  store i32 0, i32* %4, align 4
  br label %58

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %29
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ipmi_si_set_not_busy(%struct.timespec*) #1

declare dso_local i32 @ipmi_si_is_busy(%struct.timespec*) #1

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #1

declare dso_local i32 @timespec_add_ns(%struct.timespec*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @timespec_compare(%struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
