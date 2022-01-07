; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sh-cpufreq.c_sh_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sh-cpufreq.c_sh_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_target = type { i32, %struct.cpufreq_policy* }

@__sh_cpufreq_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @sh_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpufreq_target, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.cpufreq_target, %struct.cpufreq_target* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.cpufreq_target, %struct.cpufreq_target* %7, i32 0, i32 1
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_policy* %11, %struct.cpufreq_policy** %10, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @__sh_cpufreq_target, align 4
  %16 = call i32 @work_on_cpu(i32 %14, i32 %15, %struct.cpufreq_target* %7)
  ret i32 %16
}

declare dso_local i32 @work_on_cpu(i32, i32, %struct.cpufreq_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
