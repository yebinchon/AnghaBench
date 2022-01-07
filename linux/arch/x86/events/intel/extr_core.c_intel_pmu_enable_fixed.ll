; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_enable_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_enable_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.hw_perf_event }
%struct.TYPE_5__ = type { i64 }
%struct.hw_perf_event = type { i32, i32, i32 }

@INTEL_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ARCH_PERFMON_EVENTSEL_ANY = common dso_local global i32 0, align 4
@ICL_FIXED_0_ADAPTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @intel_pmu_enable_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_enable_fixed(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %3, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 8
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ANY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %46, %43
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %61, 4
  %63 = zext i32 %62 to i64
  %64 = shl i64 15, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 1, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %56
  %69 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i32, i32* @ICL_FIXED_0_ADAPTIVE, align 4
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %76, 4
  %78 = shl i32 %75, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @ICL_FIXED_0_ADAPTIVE, align 4
  %82 = load i32, i32* %4, align 4
  %83 = mul nsw i32 %82, 4
  %84 = shl i32 %81, %83
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %74, %68, %56
  %88 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %89 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @rdmsrl(i32 %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %101 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @wrmsrl(i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
