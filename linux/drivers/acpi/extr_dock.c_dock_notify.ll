; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_dock_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_dock_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.dock_station = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DOCK_IS_DOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unable to dock!\0A\00", align 1
@DOCK_EVENT = common dso_local global i32 0, align 4
@immediate_undock = common dso_local global i32 0, align 4
@DOCK_IS_ATA = common dso_local global i32 0, align 4
@UNDOCK_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dock_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dock_station*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.dock_station* @find_dock_station(i32 %12)
  store %struct.dock_station* %13, %struct.dock_station** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %15 = icmp ne %struct.dock_station* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %104

19:                                               ; preds = %2
  %20 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %21 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DOCK_IS_DOCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 128, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26, %19
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %103 [
    i32 130, label %32
    i32 129, label %32
    i32 128, label %78
  ]

32:                                               ; preds = %30, %30
  %33 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %34 = call i32 @dock_in_progress(%struct.dock_station* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %32
  %37 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %38 = call i32 @acpi_device_enumerated(%struct.acpi_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %42 = call i32 @begin_dock(%struct.dock_station* %41)
  %43 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %44 = call i32 @dock(%struct.dock_station* %43)
  %45 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %46 = call i32 @dock_present(%struct.dock_station* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @acpi_handle_err(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %52 = call i32 @complete_dock(%struct.dock_station* %51)
  br label %103

53:                                               ; preds = %40
  %54 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @hotplug_dock_devices(%struct.dock_station* %54, i32 %55)
  %57 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %58 = call i32 @complete_dock(%struct.dock_station* %57)
  %59 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DOCK_EVENT, align 4
  %62 = call i32 @dock_event(%struct.dock_station* %59, i32 %60, i32 %61)
  %63 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %64 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @acpi_evaluate_lck(i32 %65, i32 1)
  %67 = call i32 (...) @acpi_update_all_gpes()
  br label %103

68:                                               ; preds = %36, %32
  %69 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %70 = call i32 @dock_present(%struct.dock_station* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %74 = call i32 @dock_in_progress(%struct.dock_station* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  br label %103

77:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  store i32 128, i32* %5, align 4
  br label %78

78:                                               ; preds = %30, %77
  %79 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %80 = call i32 @begin_undock(%struct.dock_station* %79)
  %81 = load i32, i32* @immediate_undock, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %85 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DOCK_IS_ATA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83, %78
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %83
  %94 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @handle_eject_request(%struct.dock_station* %94, i32 %95)
  br label %102

97:                                               ; preds = %90
  %98 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @UNDOCK_EVENT, align 4
  %101 = call i32 @dock_event(%struct.dock_station* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %30, %102, %76, %53, %48
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %16
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.dock_station* @find_dock_station(i32) #1

declare dso_local i32 @dock_in_progress(%struct.dock_station*) #1

declare dso_local i32 @acpi_device_enumerated(%struct.acpi_device*) #1

declare dso_local i32 @begin_dock(%struct.dock_station*) #1

declare dso_local i32 @dock(%struct.dock_station*) #1

declare dso_local i32 @dock_present(%struct.dock_station*) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

declare dso_local i32 @complete_dock(%struct.dock_station*) #1

declare dso_local i32 @hotplug_dock_devices(%struct.dock_station*, i32) #1

declare dso_local i32 @dock_event(%struct.dock_station*, i32, i32) #1

declare dso_local i32 @acpi_evaluate_lck(i32, i32) #1

declare dso_local i32 @acpi_update_all_gpes(...) #1

declare dso_local i32 @begin_undock(%struct.dock_station*) #1

declare dso_local i32 @handle_eject_request(%struct.dock_station*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
