; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_bts_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_bts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32, %struct.perf_event_attr }
%struct.perf_event_attr = type { i64, i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@x86_lbr_exclusive_lbr = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@hw_perf_lbr_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @intel_pmu_bts_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_bts_config(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  store %struct.perf_event_attr* %6, %struct.perf_event_attr** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call i32 @intel_pmu_has_bts(%struct.perf_event* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %11
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load i32, i32* @x86_lbr_exclusive_lbr, align 4
  %35 = call i64 @x86_add_exclusive(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @hw_perf_lbr_event_destroy, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %37, %30, %22, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @intel_pmu_has_bts(%struct.perf_event*) #1

declare dso_local i64 @x86_add_exclusive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
