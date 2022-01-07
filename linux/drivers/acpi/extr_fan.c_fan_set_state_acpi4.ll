; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_fan_set_state_acpi4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_fan_set_state_acpi4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.acpi_fan = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_FSL\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to set state by _FSL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i64)* @fan_set_state_acpi4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_set_state_acpi4(%struct.acpi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_fan*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = call %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.acpi_fan* %9, %struct.acpi_fan** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %12 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @acpi_execute_simple_method(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
