; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ppc_cbe_cpufreq_pmi.c_cbe_cpufreq_pmi_policy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ppc_cbe_cpufreq_pmi.c_cbe_cpufreq_pmi_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.freq_qos_request*, %struct.TYPE_2__*, i32 }
%struct.freq_qos_request = type { i32 }
%struct.TYPE_2__ = type { i32 }

@cbe_cpufreq_has_pmi = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FREQ_QOS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to add freq constraint (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbe_cpufreq_pmi_policy_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.freq_qos_request*, align 8
  %4 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %5 = load i32, i32* @cbe_cpufreq_has_pmi, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.freq_qos_request* @kzalloc(i32 4, i32 %9)
  store %struct.freq_qos_request* %10, %struct.freq_qos_request** %3, align 8
  %11 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %12 = icmp ne %struct.freq_qos_request* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %37

14:                                               ; preds = %8
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 2
  %17 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %18 = load i32, i32* @FREQ_QOS_MAX, align 4
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @freq_qos_add_request(i32* %16, %struct.freq_qos_request* %17, i32 %18, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %32 = call i32 @kfree(%struct.freq_qos_request* %31)
  br label %37

33:                                               ; preds = %14
  %34 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 0
  store %struct.freq_qos_request* %34, %struct.freq_qos_request** %36, align 8
  br label %37

37:                                               ; preds = %33, %28, %13, %7
  ret void
}

declare dso_local %struct.freq_qos_request* @kzalloc(i32, i32) #1

declare dso_local i32 @freq_qos_add_request(i32*, %struct.freq_qos_request*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.freq_qos_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
