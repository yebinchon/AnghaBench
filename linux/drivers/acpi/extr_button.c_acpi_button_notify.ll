; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_button_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_button_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_button = type { i32, i32, %struct.input_dev*, i32 }
%struct.input_dev = type { i32, i32, i32 }

@ACPI_BUTTON_TYPE_LID = common dso_local global i32 0, align 4
@KEY_SLEEP = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_button_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_button_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_button*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %9)
  store %struct.acpi_button* %10, %struct.acpi_button** %5, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %90 [
    i32 128, label %12
    i32 129, label %13
  ]

12:                                               ; preds = %2
  store i32 129, i32* %4, align 4
  br label %13

13:                                               ; preds = %2, %12
  %14 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %14, i32 0, i32 2
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ACPI_BUTTON_TYPE_LID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %13
  %23 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %23, i32 0, i32 2
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %28, i32 0, i32 2
  %30 = load %struct.input_dev*, %struct.input_dev** %29, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %33, i32 0, i32 2
  %35 = load %struct.input_dev*, %struct.input_dev** %34, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %42 = call i32 @acpi_lid_update_state(%struct.acpi_device* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %22
  br label %89

44:                                               ; preds = %13
  %45 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 0
  %47 = call i32 @acpi_pm_wakeup_event(i32* %46)
  %48 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %49 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %94

53:                                               ; preds = %44
  %54 = load i32, i32* @KEY_SLEEP, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @test_bit(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @KEY_SLEEP, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @KEY_POWER, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %8, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @input_report_key(%struct.input_dev* %66, i32 %67, i32 1)
  %69 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %70 = call i32 @input_sync(%struct.input_dev* %69)
  %71 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @input_report_key(%struct.input_dev* %71, i32 %72, i32 0)
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = call i32 @input_sync(%struct.input_dev* %74)
  %76 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %81 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %80, i32 0, i32 0
  %82 = call i32 @dev_name(i32* %81)
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %85 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = call i32 @acpi_bus_generate_netlink_event(i32 %79, i32 %82, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %64, %43
  br label %94

90:                                               ; preds = %2
  %91 = load i32, i32* @ACPI_DB_INFO, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @ACPI_DEBUG_PRINT(i32 %92)
  br label %94

94:                                               ; preds = %90, %89, %52
  ret void
}

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_lid_update_state(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_pm_wakeup_event(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
