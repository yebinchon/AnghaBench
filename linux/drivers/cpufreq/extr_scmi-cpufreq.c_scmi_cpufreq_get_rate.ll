; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scmi-cpufreq.c_scmi_cpufreq_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scmi-cpufreq.c_scmi_cpufreq_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.scmi_perf_ops* }
%struct.scmi_perf_ops = type { i32 (%struct.TYPE_3__*, i32, i64*, i32)* }
%struct.cpufreq_policy = type { %struct.scmi_data* }
%struct.scmi_data = type { i32 }

@handle = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @scmi_cpufreq_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_cpufreq_get_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca %struct.scmi_perf_ops*, align 8
  %6 = alloca %struct.scmi_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cpufreq_policy* @cpufreq_cpu_get_raw(i32 %9)
  store %struct.cpufreq_policy* %10, %struct.cpufreq_policy** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @handle, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.scmi_perf_ops*, %struct.scmi_perf_ops** %12, align 8
  store %struct.scmi_perf_ops* %13, %struct.scmi_perf_ops** %5, align 8
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = load %struct.scmi_data*, %struct.scmi_data** %15, align 8
  store %struct.scmi_data* %16, %struct.scmi_data** %6, align 8
  %17 = load %struct.scmi_perf_ops*, %struct.scmi_perf_ops** %5, align 8
  %18 = getelementptr inbounds %struct.scmi_perf_ops, %struct.scmi_perf_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_3__*, i32, i64*, i32)*, i32 (%struct.TYPE_3__*, i32, i64*, i32)** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @handle, align 8
  %21 = load %struct.scmi_data*, %struct.scmi_data** %6, align 8
  %22 = getelementptr inbounds %struct.scmi_data, %struct.scmi_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %19(%struct.TYPE_3__* %20, i32 %23, i64* %7, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i64, i64* %7, align 8
  %30 = udiv i64 %29, 1000
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
