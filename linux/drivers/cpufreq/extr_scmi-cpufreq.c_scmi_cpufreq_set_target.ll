; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scmi-cpufreq.c_scmi_cpufreq_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scmi-cpufreq.c_scmi_cpufreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.scmi_perf_ops* }
%struct.scmi_perf_ops = type { i32 (%struct.TYPE_7__*, i32, i32, i32)* }
%struct.cpufreq_policy = type { %struct.TYPE_5__, i32, %struct.TYPE_6__*, %struct.scmi_data* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.scmi_data = type { i32 }

@handle = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @scmi_cpufreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_cpufreq_set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_data*, align 8
  %7 = alloca %struct.scmi_perf_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 3
  %11 = load %struct.scmi_data*, %struct.scmi_data** %10, align 8
  store %struct.scmi_data* %11, %struct.scmi_data** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @handle, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.scmi_perf_ops*, %struct.scmi_perf_ops** %13, align 8
  store %struct.scmi_perf_ops* %14, %struct.scmi_perf_ops** %7, align 8
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.scmi_perf_ops*, %struct.scmi_perf_ops** %7, align 8
  %24 = getelementptr inbounds %struct.scmi_perf_ops, %struct.scmi_perf_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @handle, align 8
  %27 = load %struct.scmi_data*, %struct.scmi_data** %6, align 8
  %28 = getelementptr inbounds %struct.scmi_data, %struct.scmi_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 1000
  %32 = call i32 %25(%struct.TYPE_7__* %26, i32 %29, i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %2
  %36 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %37 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @arch_set_freq_scale(i32 %38, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %35, %2
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @arch_set_freq_scale(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
