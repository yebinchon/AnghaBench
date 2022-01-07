; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_cpus_waiting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_cpus_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_coupled = type { i32, i32 }

@WAITING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_coupled*)* @cpuidle_coupled_cpus_waiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuidle_coupled_cpus_waiting(%struct.cpuidle_coupled* %0) #0 {
  %2 = alloca %struct.cpuidle_coupled*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuidle_coupled* %0, %struct.cpuidle_coupled** %2, align 8
  %4 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %5 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %4, i32 0, i32 1
  %6 = call i32 @atomic_read(i32* %5)
  %7 = load i32, i32* @WAITING_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %11 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
