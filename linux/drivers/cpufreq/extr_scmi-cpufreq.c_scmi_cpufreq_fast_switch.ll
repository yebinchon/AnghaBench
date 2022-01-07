; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scmi-cpufreq.c_scmi_cpufreq_fast_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scmi-cpufreq.c_scmi_cpufreq_fast_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.scmi_perf_ops* }
%struct.scmi_perf_ops = type { i32 (%struct.TYPE_5__*, i32, i32, i32)* }
%struct.cpufreq_policy = type { %struct.TYPE_4__, i32, %struct.scmi_data* }
%struct.TYPE_4__ = type { i32 }
%struct.scmi_data = type { i32 }

@handle = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @scmi_cpufreq_fast_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_cpufreq_fast_switch(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_data*, align 8
  %7 = alloca %struct.scmi_perf_ops*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 2
  %10 = load %struct.scmi_data*, %struct.scmi_data** %9, align 8
  store %struct.scmi_data* %10, %struct.scmi_data** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @handle, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.scmi_perf_ops*, %struct.scmi_perf_ops** %12, align 8
  store %struct.scmi_perf_ops* %13, %struct.scmi_perf_ops** %7, align 8
  %14 = load %struct.scmi_perf_ops*, %struct.scmi_perf_ops** %7, align 8
  %15 = getelementptr inbounds %struct.scmi_perf_ops, %struct.scmi_perf_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @handle, align 8
  %18 = load %struct.scmi_data*, %struct.scmi_data** %6, align 8
  %19 = getelementptr inbounds %struct.scmi_data, %struct.scmi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = mul i32 %21, 1000
  %23 = call i32 %16(%struct.TYPE_5__* %17, i32 %20, i32 %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @arch_set_freq_scale(i32 %28, i32 %29, i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @arch_set_freq_scale(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
