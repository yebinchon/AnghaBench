; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c_cpuidle_get_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c_cpuidle_get_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpuidle_driver* @cpuidle_get_driver() #0 {
  %1 = alloca %struct.cpuidle_driver*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @get_cpu()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cpuidle_driver* @__cpuidle_get_cpu_driver(i32 %4)
  store %struct.cpuidle_driver* %5, %struct.cpuidle_driver** %1, align 8
  %6 = call i32 (...) @put_cpu()
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %1, align 8
  ret %struct.cpuidle_driver* %7
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.cpuidle_driver* @__cpuidle_get_cpu_driver(i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
