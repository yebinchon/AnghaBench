; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_hswep_cbox_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_hswep_cbox_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i64 }

@EXTRA_REG_NONE = common dso_local global i64 0, align 8
@SNBEP_PMON_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @hswep_cbox_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hswep_cbox_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 2
  store %struct.hw_perf_event_extra* %11, %struct.hw_perf_event_extra** %6, align 8
  %12 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXTRA_REG_NONE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %19 = call i32 @uncore_shared_reg_config(%struct.intel_uncore_box* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @wrmsrl(i64 %22, i32 %23)
  %25 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 32
  %31 = call i32 @wrmsrl(i64 %28, i32 %30)
  br label %32

32:                                               ; preds = %17, %2
  %33 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SNBEP_PMON_CTL_EN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @wrmsrl(i64 %35, i32 %40)
  ret void
}

declare dso_local i32 @uncore_shared_reg_config(%struct.intel_uncore_box*, i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
