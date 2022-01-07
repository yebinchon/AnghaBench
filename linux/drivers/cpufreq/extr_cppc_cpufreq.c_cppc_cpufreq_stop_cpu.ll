; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_stop_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_stop_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_cpudata = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cpufreq_policy = type { i32 }

@all_cpu_data = common dso_local global %struct.cppc_cpudata** null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Err setting perf value:%d on CPU:%d. ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @cppc_cpufreq_stop_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppc_cpufreq_stop_cpu(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cppc_cpudata*, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.cppc_cpudata**, %struct.cppc_cpudata*** @all_cpu_data, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cppc_cpudata*, %struct.cppc_cpudata** %9, i64 %11
  %13 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %12, align 8
  store %struct.cppc_cpudata* %13, %struct.cppc_cpudata** %4, align 8
  %14 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %4, align 8
  %15 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %4, align 8
  %19 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %4, align 8
  %23 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %22, i32 0, i32 1
  %24 = call i32 @cppc_set_perf(i32 %21, %struct.TYPE_4__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %4, align 8
  %29 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @cppc_set_perf(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
