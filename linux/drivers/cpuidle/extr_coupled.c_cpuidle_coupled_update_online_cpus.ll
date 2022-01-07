; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_update_online_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_update_online_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_coupled = type { i32, i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_coupled*)* @cpuidle_coupled_update_online_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuidle_coupled_update_online_cpus(%struct.cpuidle_coupled* %0) #0 {
  %2 = alloca %struct.cpuidle_coupled*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuidle_coupled* %0, %struct.cpuidle_coupled** %2, align 8
  %4 = load i32, i32* @cpu_online_mask, align 4
  %5 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %6 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %5, i32 0, i32 1
  %7 = call i32 @cpumask_and(i32* %3, i32 %4, i32* %6)
  %8 = call i32 @cpumask_weight(i32* %3)
  %9 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %10 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  ret void
}

declare dso_local i32 @cpumask_and(i32*, i32, i32*) #1

declare dso_local i32 @cpumask_weight(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
