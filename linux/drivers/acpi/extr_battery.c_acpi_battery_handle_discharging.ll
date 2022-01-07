; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_handle_discharging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_handle_discharging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i64 }

@battery_ac_is_broken = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_handle_discharging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_handle_discharging(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  %4 = load i64, i64* @battery_ac_is_broken, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @power_supply_is_system_supplied()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6, %1
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %9, %6
  %17 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @power_supply_is_system_supplied(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
