; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_sbs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_sbs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_sbs = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_SBS_BAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_sbs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_sbs_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_sbs*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = call %struct.acpi_sbs* @acpi_driver_data(%struct.acpi_device* %12)
  store %struct.acpi_sbs* %13, %struct.acpi_sbs** %4, align 8
  %14 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %15 = icmp ne %struct.acpi_sbs* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %11
  %20 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @acpi_smbus_unregister_callback(i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %35, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MAX_SBS_BAT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @acpi_battery_remove(%struct.acpi_sbs* %32, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %40 = call i32 @acpi_charger_remove(%struct.acpi_sbs* %39)
  %41 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %44, i32 0, i32 0
  %46 = call i32 @mutex_destroy(i32* %45)
  %47 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %48 = call i32 @kfree(%struct.acpi_sbs* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %38, %16, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.acpi_sbs* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_smbus_unregister_callback(i32) #1

declare dso_local i32 @acpi_battery_remove(%struct.acpi_sbs*, i32) #1

declare dso_local i32 @acpi_charger_remove(%struct.acpi_sbs*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.acpi_sbs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
