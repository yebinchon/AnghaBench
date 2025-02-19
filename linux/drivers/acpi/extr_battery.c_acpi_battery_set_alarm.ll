; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ACPI_BATTERY_ALARM_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BTP\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Alarm set to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_set_alarm(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %6 = call i32 @acpi_battery_present(%struct.acpi_battery* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @ACPI_BATTERY_ALARM_PRESENT, align 4
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %10, i32 0, i32 3
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %8
  %18 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @acpi_execute_simple_method(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %17
  %40 = load i32, i32* @ACPI_DB_INFO, align 4
  %41 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %36, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @acpi_battery_present(%struct.acpi_battery*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
