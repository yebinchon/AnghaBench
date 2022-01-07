; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.zpodd* }
%struct.zpodd = type { i32, %struct.ata_device* }
%struct.acpi_device = type { i32 }

@ODD_MECH_TYPE_UNSUPPORTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpodd_init(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zpodd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 0
  %8 = call %struct.acpi_device* @ACPI_COMPANION(i32* %7)
  store %struct.acpi_device* %8, %struct.acpi_device** %3, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 1
  %11 = load %struct.zpodd*, %struct.zpodd** %10, align 8
  %12 = icmp ne %struct.zpodd* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = icmp ne %struct.acpi_device* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %18 = call i32 @acpi_device_can_poweroff(%struct.acpi_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %13, %1
  br label %49

21:                                               ; preds = %16
  %22 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %23 = call i32 @zpodd_get_mech_type(%struct.ata_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ODD_MECH_TYPE_UNSUPPORTED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %49

28:                                               ; preds = %21
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.zpodd* @kzalloc(i32 16, i32 %29)
  store %struct.zpodd* %30, %struct.zpodd** %5, align 8
  %31 = load %struct.zpodd*, %struct.zpodd** %5, align 8
  %32 = icmp ne %struct.zpodd* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.zpodd*, %struct.zpodd** %5, align 8
  %37 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %39 = call i32 @ata_acpi_add_pm_notifier(%struct.ata_device* %38)
  %40 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %41 = load %struct.zpodd*, %struct.zpodd** %5, align 8
  %42 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %41, i32 0, i32 1
  store %struct.ata_device* %40, %struct.ata_device** %42, align 8
  %43 = load %struct.zpodd*, %struct.zpodd** %5, align 8
  %44 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %45 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %44, i32 0, i32 1
  store %struct.zpodd* %43, %struct.zpodd** %45, align 8
  %46 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 0
  %48 = call i32 @dev_pm_qos_expose_flags(i32* %47, i32 0)
  br label %49

49:                                               ; preds = %34, %33, %27, %20
  ret void
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @acpi_device_can_poweroff(%struct.acpi_device*) #1

declare dso_local i32 @zpodd_get_mech_type(%struct.ata_device*) #1

declare dso_local %struct.zpodd* @kzalloc(i32, i32) #1

declare dso_local i32 @ata_acpi_add_pm_notifier(%struct.ata_device*) #1

declare dso_local i32 @dev_pm_qos_expose_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
