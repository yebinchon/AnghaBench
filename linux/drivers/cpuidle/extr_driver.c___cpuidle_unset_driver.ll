; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c___cpuidle_unset_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c___cpuidle_unset_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32 }

@cpuidle_curr_driver = common dso_local global %struct.cpuidle_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_driver*)* @__cpuidle_unset_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cpuidle_unset_driver(%struct.cpuidle_driver* %0) #0 {
  %2 = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %2, align 8
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8
  %5 = icmp eq %struct.cpuidle_driver* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.cpuidle_driver* null, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
