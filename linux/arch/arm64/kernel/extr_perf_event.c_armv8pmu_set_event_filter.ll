; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_set_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_set_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_perf_event = type { i64 }
%struct.perf_event_attr = type { i64, i64, i64, i32, i64, i64 }

@EPERM = common dso_local global i32 0, align 4
@ARMV8_PMU_INCLUDE_EL2 = common dso_local global i64 0, align 8
@ARMV8_PMU_EXCLUDE_EL1 = common dso_local global i64 0, align 8
@ARMV8_PMU_EXCLUDE_EL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_perf_event*, %struct.perf_event_attr*)* @armv8pmu_set_event_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_set_event_filter(%struct.hw_perf_event* %0, %struct.perf_event_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca i64, align 8
  store %struct.hw_perf_event* %0, %struct.hw_perf_event** %4, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %87

14:                                               ; preds = %2
  %15 = call i64 (...) @is_kernel_in_hyp_mode()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %24 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @ARMV8_PMU_INCLUDE_EL2, align 8
  %29 = load i64, i64* %6, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %22, %17
  %32 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* @ARMV8_PMU_EXCLUDE_EL1, align 8
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i64, i64* @ARMV8_PMU_EXCLUDE_EL0, align 8
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %45, %40
  br label %65

50:                                               ; preds = %14
  %51 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @ARMV8_PMU_INCLUDE_EL2, align 8
  %62 = load i64, i64* %6, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %60, %55, %50
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %67 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i64, i64* @ARMV8_PMU_EXCLUDE_EL1, align 8
  %72 = load i64, i64* %6, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %76 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i64, i64* @ARMV8_PMU_EXCLUDE_EL0, align 8
  %81 = load i64, i64* %6, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %86 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @is_kernel_in_hyp_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
