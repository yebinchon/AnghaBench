; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ppc_cbe_cpufreq_pmi.c_cbe_cpufreq_pmi_policy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ppc_cbe_cpufreq_pmi.c_cbe_cpufreq_pmi_policy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.freq_qos_request* }
%struct.freq_qos_request = type { i32 }

@cbe_cpufreq_has_pmi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbe_cpufreq_pmi_policy_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.freq_qos_request*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 0
  %6 = load %struct.freq_qos_request*, %struct.freq_qos_request** %5, align 8
  store %struct.freq_qos_request* %6, %struct.freq_qos_request** %3, align 8
  %7 = load i64, i64* @cbe_cpufreq_has_pmi, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %11 = call i32 @freq_qos_remove_request(%struct.freq_qos_request* %10)
  %12 = load %struct.freq_qos_request*, %struct.freq_qos_request** %3, align 8
  %13 = call i32 @kfree(%struct.freq_qos_request* %12)
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @freq_qos_remove_request(%struct.freq_qos_request*) #1

declare dso_local i32 @kfree(%struct.freq_qos_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
