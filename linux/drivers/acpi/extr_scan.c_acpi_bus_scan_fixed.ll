; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_scan_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_scan_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@acpi_gbl_FADT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ACPI_FADT_POWER_BUTTON = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_POWER_BUTTON = common dso_local global i32 0, align 4
@ACPI_STA_DEFAULT = common dso_local global i32 0, align 4
@ACPI_FADT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_SLEEP_BUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_bus_scan_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_scan_fixed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %6 = load i32, i32* @ACPI_FADT_POWER_BUTTON, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %0
  store %struct.acpi_device* null, %struct.acpi_device** %3, align 8
  %10 = load i32, i32* @ACPI_BUS_TYPE_POWER_BUTTON, align 4
  %11 = load i32, i32* @ACPI_STA_DEFAULT, align 4
  %12 = call i32 @acpi_add_single_object(%struct.acpi_device** %3, i32* null, i32 %10, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %60

17:                                               ; preds = %9
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = call i32 @device_attach(i32* %22)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %60

28:                                               ; preds = %17
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  %31 = call i32 @device_init_wakeup(i32* %30, i32 1)
  br label %32

32:                                               ; preds = %28, %0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %34 = load i32, i32* @ACPI_FADT_SLEEP_BUTTON, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  store %struct.acpi_device* null, %struct.acpi_device** %4, align 8
  %38 = load i32, i32* @ACPI_BUS_TYPE_SLEEP_BUTTON, align 4
  %39 = load i32, i32* @ACPI_STA_DEFAULT, align 4
  %40 = call i32 @acpi_add_single_object(%struct.acpi_device** %4, i32* null, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %1, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 0
  %51 = call i32 @device_attach(i32* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %32
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4
  br label %58

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %58, %43, %26, %15
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @acpi_add_single_object(%struct.acpi_device**, i32*, i32, i32) #1

declare dso_local i32 @device_attach(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
