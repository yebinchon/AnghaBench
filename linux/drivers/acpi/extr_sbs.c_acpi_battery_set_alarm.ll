; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i32, %struct.acpi_sbs* }
%struct.acpi_sbs = type { i32, i64 }

@SMBUS_READ_WORD = common dso_local global i32 0, align 4
@ACPI_SBS_MANAGER = common dso_local global i32 0, align 4
@SMBUS_WRITE_WORD = common dso_local global i32 0, align 4
@ACPI_SBS_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_set_alarm(%struct.acpi_battery* %0) #0 {
  %2 = alloca %struct.acpi_battery*, align 8
  %3 = alloca %struct.acpi_sbs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_battery* %0, %struct.acpi_battery** %2, align 8
  %7 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %7, i32 0, i32 2
  %9 = load %struct.acpi_sbs*, %struct.acpi_sbs** %8, align 8
  store %struct.acpi_sbs* %9, %struct.acpi_sbs** %3, align 8
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %11 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 12
  %14 = shl i32 1, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %1
  %20 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SMBUS_READ_WORD, align 4
  %24 = load i32, i32* @ACPI_SBS_MANAGER, align 4
  %25 = call i32 @acpi_smbus_read(i32 %22, i32 %23, i32 %24, i32 1, i32* %4)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %60

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 61440
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 4095
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SMBUS_WRITE_WORD, align 4
  %44 = load i32, i32* @ACPI_SBS_MANAGER, align 4
  %45 = call i32 @acpi_smbus_write(i32 %42, i32 %43, i32 %44, i32 1, i32* %4, i32 2)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %60

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SMBUS_WRITE_WORD, align 4
  %56 = load i32, i32* @ACPI_SBS_BATTERY, align 4
  %57 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %58 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %57, i32 0, i32 1
  %59 = call i32 @acpi_smbus_write(i32 %54, i32 %55, i32 %56, i32 1, i32* %58, i32 2)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %51, %48, %28
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @acpi_smbus_read(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_smbus_write(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
