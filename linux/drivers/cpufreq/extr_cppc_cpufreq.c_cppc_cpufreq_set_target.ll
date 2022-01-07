; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_cpudata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_policy = type { i64, i32 }
%struct.cpufreq_freqs = type { i32, i32 }

@all_cpu_data = common dso_local global %struct.cppc_cpudata** null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to set target on CPU:%d. ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @cppc_cpufreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppc_cpufreq_set_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cppc_cpudata*, align 8
  %9 = alloca %struct.cpufreq_freqs, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.cppc_cpudata**, %struct.cppc_cpudata*** @all_cpu_data, align 8
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.cppc_cpudata*, %struct.cppc_cpudata** %12, i64 %15
  %17 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %16, align 8
  store %struct.cppc_cpudata* %17, %struct.cppc_cpudata** %8, align 8
  %18 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @cppc_cpufreq_khz_to_perf(%struct.cppc_cpudata* %18, i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %8, align 8
  %23 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %8, align 8
  %32 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %41 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %40, %struct.cpufreq_freqs* %9)
  %42 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %8, align 8
  %43 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %8, align 8
  %46 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %45, i32 0, i32 1
  %47 = call i32 @cppc_set_perf(i32 %44, %struct.TYPE_2__* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %48, %struct.cpufreq_freqs* %9, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %29
  %56 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %8, align 8
  %57 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %29
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %27
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @cppc_cpufreq_khz_to_perf(%struct.cppc_cpudata*, i32) #1

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i32 @cppc_set_perf(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
