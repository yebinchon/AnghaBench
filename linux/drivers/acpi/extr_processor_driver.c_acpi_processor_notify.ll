; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_processor_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_processor_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_processor = type { i32 }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i8*)* @acpi_processor_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_processor_notify(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.acpi_processor*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.acpi_device*
  store %struct.acpi_device* %11, %struct.acpi_device** %7, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %20 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %19)
  store %struct.acpi_processor* %20, %struct.acpi_processor** %8, align 8
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %22 = icmp ne %struct.acpi_processor* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %80

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %75 [
    i32 130, label %26
    i32 129, label %51
    i32 128, label %63
  ]

26:                                               ; preds = %24
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %31 = call i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor* %30, i32 1)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %79

38:                                               ; preds = %26
  %39 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 1
  %45 = call i32 @dev_name(i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %48 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @acpi_bus_generate_netlink_event(i32 %42, i32 %45, i32 %46, i32 %49)
  br label %79

51:                                               ; preds = %24
  %52 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %53 = call i32 @acpi_processor_power_state_has_changed(%struct.acpi_processor* %52)
  %54 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 1
  %60 = call i32 @dev_name(i32* %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @acpi_bus_generate_netlink_event(i32 %57, i32 %60, i32 %61, i32 0)
  br label %79

63:                                               ; preds = %24
  %64 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %65 = call i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %64)
  %66 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 1
  %72 = call i32 @dev_name(i32* %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @acpi_bus_generate_netlink_event(i32 %69, i32 %72, i32 %73, i32 0)
  br label %79

75:                                               ; preds = %24
  %76 = load i32, i32* @ACPI_DB_INFO, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ACPI_DEBUG_PRINT(i32 %77)
  br label %79

79:                                               ; preds = %75, %63, %51, %38, %37
  br label %80

80:                                               ; preds = %79, %23, %17
  ret void
}

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor*, i32) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_processor_power_state_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
