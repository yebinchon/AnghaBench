; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sh-cpufreq.c_sh_cpufreq_cpu_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sh-cpufreq.c_sh_cpufreq_cpu_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"CPU Frequencies - Minimum %u.%03u MHz, Maximum %u.%03u MHz.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @sh_cpufreq_cpu_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cpufreq_cpu_ready(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.device* @get_cpu_device(i32 %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 1000
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %15, 1000
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 1000
  %25 = call i32 @dev_info(%struct.device* %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %20, i32 %24)
  ret void
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
