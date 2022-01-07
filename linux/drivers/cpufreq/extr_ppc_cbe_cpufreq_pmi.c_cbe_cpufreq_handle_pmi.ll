; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ppc_cbe_cpufreq_pmi.c_cbe_cpufreq_handle_pmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ppc_cbe_cpufreq_pmi.c_cbe_cpufreq_handle_pmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.cpufreq_policy = type { %struct.TYPE_4__*, %struct.freq_qos_request* }
%struct.TYPE_4__ = type { i32 }
%struct.freq_qos_request = type { i32 }

@PMI_TYPE_FREQ_CHANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"cbe_handle_pmi: node: %d max_freq: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cpufreq policy not found cpu%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to update freq constraint: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"limiting node %d to slow mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @cbe_cpufreq_handle_pmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbe_cpufreq_handle_pmi(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.freq_qos_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PMI_TYPE_FREQ_CHANGE, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @cbe_node_to_cpu(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %23)
  store %struct.cpufreq_policy* %24, %struct.cpufreq_policy** %2, align 8
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %26 = icmp ne %struct.cpufreq_policy* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %55

30:                                               ; preds = %1
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 1
  %33 = load %struct.freq_qos_request*, %struct.freq_qos_request** %32, align 8
  store %struct.freq_qos_request* %33, %struct.freq_qos_request** %3, align 8
  %34 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @freq_qos_update_request(%struct.freq_qos_request* %34, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %52

48:                                               ; preds = %30
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %54 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %53)
  br label %55

55:                                               ; preds = %52, %27
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cbe_node_to_cpu(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @freq_qos_update_request(%struct.freq_qos_request*, i32) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
