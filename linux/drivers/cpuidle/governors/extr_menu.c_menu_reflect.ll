; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_menu_reflect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_menu_reflect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.menu_device = type { i32, i32 }

@menu_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_device*, i32)* @menu_reflect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_reflect(%struct.cpuidle_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.menu_device*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.menu_device* @this_cpu_ptr(i32* @menu_devices)
  store %struct.menu_device* %6, %struct.menu_device** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %9 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %11 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = call i32 (...) @tick_nohz_idle_got_tick()
  %13 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %14 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local %struct.menu_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @tick_nohz_idle_got_tick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
