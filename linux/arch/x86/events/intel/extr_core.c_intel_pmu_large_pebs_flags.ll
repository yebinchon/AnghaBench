; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_large_pebs_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_large_pebs_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PERF_SAMPLE_TIME = common dso_local global i64 0, align 8
@PERF_SAMPLE_REGS_USER = common dso_local global i64 0, align 8
@PEBS_GP_REGS = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_event*)* @intel_pmu_large_pebs_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_pmu_large_pebs_flags(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* @PERF_SAMPLE_TIME, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* @PERF_SAMPLE_REGS_USER, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PEBS_GP_REGS, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i64, i64* @PERF_SAMPLE_REGS_USER, align 8
  %37 = load i64, i64* @PERF_SAMPLE_REGS_INTR, align 8
  %38 = or i64 %36, %37
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %3, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %35, %26
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
