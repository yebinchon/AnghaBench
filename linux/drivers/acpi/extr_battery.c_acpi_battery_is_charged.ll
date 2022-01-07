; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_is_charged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_is_charged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i64, i64, i64, i64 }

@ACPI_BATTERY_VALUE_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_is_charged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_is_charged(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  %4 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_BATTERY_VALUE_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %9
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %15
  %22 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %29, %20, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
