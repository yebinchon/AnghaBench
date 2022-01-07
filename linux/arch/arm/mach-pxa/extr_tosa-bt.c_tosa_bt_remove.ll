; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_tosa-bt.c_tosa_bt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_tosa-bt.c_tosa_bt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tosa_bt_data* }
%struct.tosa_bt_data = type { i32, i32 }
%struct.rfkill = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tosa_bt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bt_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tosa_bt_data*, align 8
  %4 = alloca %struct.rfkill*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %7, align 8
  store %struct.tosa_bt_data* %8, %struct.tosa_bt_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.rfkill* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.rfkill* %10, %struct.rfkill** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @platform_set_drvdata(%struct.platform_device* %11, i32* null)
  %13 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %14 = icmp ne %struct.rfkill* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %17 = call i32 @rfkill_unregister(%struct.rfkill* %16)
  %18 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %19 = call i32 @rfkill_destroy(%struct.rfkill* %18)
  br label %20

20:                                               ; preds = %15, %1
  store %struct.rfkill* null, %struct.rfkill** %4, align 8
  %21 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %3, align 8
  %22 = call i32 @tosa_bt_off(%struct.tosa_bt_data* %21)
  %23 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %3, align 8
  %24 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_free(i32 %25)
  %27 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %3, align 8
  %28 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_free(i32 %29)
  ret i32 0
}

declare dso_local %struct.rfkill* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @rfkill_unregister(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i32 @tosa_bt_off(%struct.tosa_bt_data*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
