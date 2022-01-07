; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_choose_suspend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_choose_suspend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32 }

@ACPI_STATE_D3_COLD = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ACPI_STATE_D3_HOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @ata_acpi_choose_suspend_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acpi_choose_suspend_state(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %18 = call i64 @zpodd_dev_enabled(%struct.ata_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %22 = call i64 @zpodd_zpready(%struct.ata_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @ACPI_STATE_D3_HOT, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %20, %10
  br label %27

27:                                               ; preds = %26, %9
  %28 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 1
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @acpi_pm_device_sleep_state(i32* %29, i32* null, i32 %30)
  ret i32 %31
}

declare dso_local i64 @zpodd_dev_enabled(%struct.ata_device*) #1

declare dso_local i64 @zpodd_zpready(%struct.ata_device*) #1

declare dso_local i32 @acpi_pm_device_sleep_state(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
