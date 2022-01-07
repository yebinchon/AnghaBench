; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cpufreq_policy = type { i64, %struct.freq_qos_request*, i32, %struct.TYPE_4__, i32, i32 }
%struct.freq_qos_request = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@INTEL_CPUFREQ_TRANSITION_LATENCY = common dso_local global i32 0, align 4
@INTEL_CPUFREQ_TRANSITION_DELAY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@hwp_active = common dso_local global i64 0, align 8
@global = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FREQ_QOS_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to add min-freq constraint (%d)\0A\00", align 1
@FREQ_QOS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to add max-freq constraint (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @intel_cpufreq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_cpufreq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.freq_qos_request*, align 8
  %10 = alloca %struct.cpudata*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.device* @get_cpu_device(i64 %14)
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.device*, %struct.device** %11, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %129

21:                                               ; preds = %1
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %23 = call i32 @__intel_pstate_cpu_init(%struct.cpufreq_policy* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %129

28:                                               ; preds = %21
  %29 = load i32, i32* @INTEL_CPUFREQ_TRANSITION_LATENCY, align 4
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @INTEL_CPUFREQ_TRANSITION_DELAY, align 4
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %37 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.freq_qos_request* @kcalloc(i32 2, i32 4, i32 %42)
  store %struct.freq_qos_request* %43, %struct.freq_qos_request** %9, align 8
  %44 = load %struct.freq_qos_request*, %struct.freq_qos_request** %9, align 8
  %45 = icmp ne %struct.freq_qos_request* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %125

49:                                               ; preds = %28
  %50 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %51 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %52 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %50, i64 %53
  %55 = load %struct.cpudata*, %struct.cpudata** %54, align 8
  store %struct.cpudata* %55, %struct.cpudata** %10, align 8
  %56 = load i64, i64* @hwp_active, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %60 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @intel_pstate_get_hwp_max(i64 %61, i32* %5, i32* %4)
  br label %68

63:                                               ; preds = %49
  %64 = load %struct.cpudata*, %struct.cpudata** %10, align 8
  %65 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global, i32 0, i32 0), align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i32 @DIV_ROUND_UP(i32 %71, i32 100)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.cpudata*, %struct.cpudata** %10, align 8
  %74 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global, i32 0, i32 1), align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @DIV_ROUND_UP(i32 %81, i32 100)
  store i32 %82, i32* %7, align 4
  %83 = load %struct.cpudata*, %struct.cpudata** %10, align 8
  %84 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %90 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %89, i32 0, i32 2
  %91 = load %struct.freq_qos_request*, %struct.freq_qos_request** %9, align 8
  %92 = load i32, i32* @FREQ_QOS_MIN, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @freq_qos_add_request(i32* %90, %struct.freq_qos_request* %91, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %68
  %98 = load %struct.device*, %struct.device** %11, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %122

101:                                              ; preds = %68
  %102 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %103 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %102, i32 0, i32 2
  %104 = load %struct.freq_qos_request*, %struct.freq_qos_request** %9, align 8
  %105 = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %104, i64 1
  %106 = load i32, i32* @FREQ_QOS_MAX, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @freq_qos_add_request(i32* %103, %struct.freq_qos_request* %105, i32 %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.device*, %struct.device** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %119

115:                                              ; preds = %101
  %116 = load %struct.freq_qos_request*, %struct.freq_qos_request** %9, align 8
  %117 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %118 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %117, i32 0, i32 1
  store %struct.freq_qos_request* %116, %struct.freq_qos_request** %118, align 8
  store i32 0, i32* %2, align 4
  br label %129

119:                                              ; preds = %111
  %120 = load %struct.freq_qos_request*, %struct.freq_qos_request** %9, align 8
  %121 = call i32 @freq_qos_remove_request(%struct.freq_qos_request* %120)
  br label %122

122:                                              ; preds = %119, %97
  %123 = load %struct.freq_qos_request*, %struct.freq_qos_request** %9, align 8
  %124 = call i32 @kfree(%struct.freq_qos_request* %123)
  br label %125

125:                                              ; preds = %122, %46
  %126 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %127 = call i32 @intel_pstate_exit_perf_limits(%struct.cpufreq_policy* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %115, %26, %18
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.device* @get_cpu_device(i64) #1

declare dso_local i32 @__intel_pstate_cpu_init(%struct.cpufreq_policy*) #1

declare dso_local %struct.freq_qos_request* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @intel_pstate_get_hwp_max(i64, i32*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @freq_qos_add_request(i32*, %struct.freq_qos_request*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @freq_qos_remove_request(%struct.freq_qos_request*) #1

declare dso_local i32 @kfree(%struct.freq_qos_request*) #1

declare dso_local i32 @intel_pstate_exit_perf_limits(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
