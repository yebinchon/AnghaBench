; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_is_degraded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_is_degraded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_is_degraded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_is_degraded(%struct.acpi_battery* %0) #0 {
  %2 = alloca %struct.acpi_battery*, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %2, align 8
  %3 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br label %20

20:                                               ; preds = %12, %7, %1
  %21 = phi i1 [ false, %7 ], [ false, %1 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
