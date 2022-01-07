; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_technology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_technology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1
@POWER_SUPPLY_TECHNOLOGY_NiCd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1
@POWER_SUPPLY_TECHNOLOGY_NiMH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"LION\00", align 1
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"LiP\00", align 1
@POWER_SUPPLY_TECHNOLOGY_LIPO = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_technology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_technology(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  %4 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_NiCd, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_NiMH, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %11
  %20 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LIPO, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_UNKNOWN, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %25, %17, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
