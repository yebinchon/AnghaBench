; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_alarm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_alarm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_battery = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @acpi_battery_alarm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_battery_alarm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_battery*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @dev_get_drvdata(%struct.device* %11)
  %13 = call %struct.acpi_battery* @to_acpi_battery(i32 %12)
  store %struct.acpi_battery* %13, %struct.acpi_battery** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %9)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.acpi_battery*, %struct.acpi_battery** %10, align 8
  %20 = call i32 @acpi_battery_scale(%struct.acpi_battery* %19)
  %21 = mul nsw i32 1000, %20
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %18, %22
  %24 = load %struct.acpi_battery*, %struct.acpi_battery** %10, align 8
  %25 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %17, %4
  %27 = load %struct.acpi_battery*, %struct.acpi_battery** %10, align 8
  %28 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.acpi_battery*, %struct.acpi_battery** %10, align 8
  %33 = call i32 @acpi_battery_set_alarm(%struct.acpi_battery* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i64, i64* %8, align 8
  ret i64 %35
}

declare dso_local %struct.acpi_battery* @to_acpi_battery(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @acpi_battery_scale(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_set_alarm(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
