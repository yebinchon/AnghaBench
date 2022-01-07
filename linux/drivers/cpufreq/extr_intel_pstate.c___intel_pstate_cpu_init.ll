; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c___intel_pstate_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c___intel_pstate_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.cpufreq_policy = type { i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@global = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@hwp_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @__intel_pstate_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_pstate_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpudata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @intel_pstate_init_cpu(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %16, i64 %19
  %21 = load %struct.cpudata*, %struct.cpudata** %20, align 8
  store %struct.cpudata* %21, %struct.cpudata** %4, align 8
  %22 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %23 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %22, i32 0, i32 0
  store i32 255, i32* %23, align 8
  %24 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %25 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %27 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %31 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %29, %33
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %38 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %42 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %49 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %53 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %51, %55
  %57 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %58 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = call i32 (...) @update_turbo_state()
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global, i32 0, i32 0), align 8
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global, i32 0, i32 1), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global, i32 0, i32 0), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %15
  %65 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %66 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  br label %74

69:                                               ; preds = %15
  %70 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %71 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i32 [ %68, %64 ], [ %73, %69 ]
  %76 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %77 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %80 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %84 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* @hwp_active, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %74
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global, i32 0, i32 0), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %95 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  br label %103

98:                                               ; preds = %90
  %99 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %100 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i32 [ %97, %93 ], [ %102, %98 ]
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %107 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %105, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %114 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %103
  br label %117

117:                                              ; preds = %116, %74
  %118 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %119 = call i32 @intel_pstate_init_acpi_perf_limits(%struct.cpufreq_policy* %118)
  %120 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %121 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %120, i32 0, i32 3
  store i32 1, i32* %121, align 8
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %13
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @intel_pstate_init_cpu(i64) #1

declare dso_local i32 @update_turbo_state(...) #1

declare dso_local i32 @intel_pstate_init_acpi_perf_limits(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
