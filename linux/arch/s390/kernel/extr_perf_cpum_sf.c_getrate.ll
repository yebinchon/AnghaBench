; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_getrate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_getrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_qsi_info_block = type { i32 }

@sysctl_perf_event_sample_rate = common dso_local global i64 0, align 8
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Sampling rate exceeds maximum perf sample rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, %struct.hws_qsi_info_block*)* @getrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getrate(i32 %0, i64 %1, %struct.hws_qsi_info_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.hws_qsi_info_block*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.hws_qsi_info_block* %2, %struct.hws_qsi_info_block** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.hws_qsi_info_block*, %struct.hws_qsi_info_block** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @freq_to_sample_rate(%struct.hws_qsi_info_block* %11, i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.hws_qsi_info_block*, %struct.hws_qsi_info_block** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @hw_limit_rate(%struct.hws_qsi_info_block* %14, i64 %15)
  store i64 %16, i64* %7, align 8
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.hws_qsi_info_block*, %struct.hws_qsi_info_block** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @hw_limit_rate(%struct.hws_qsi_info_block* %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.hws_qsi_info_block*, %struct.hws_qsi_info_block** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @sample_rate_to_freq(%struct.hws_qsi_info_block* %21, i64 %22)
  %24 = load i64, i64* @sysctl_perf_event_sample_rate, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @sfdbg, align 4
  %28 = call i32 @debug_sprintf_event(i32 %27, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %26, %17
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

declare dso_local i64 @freq_to_sample_rate(%struct.hws_qsi_info_block*, i64) #1

declare dso_local i64 @hw_limit_rate(%struct.hws_qsi_info_block*, i64) #1

declare dso_local i64 @sample_rate_to_freq(%struct.hws_qsi_info_block*, i64) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
