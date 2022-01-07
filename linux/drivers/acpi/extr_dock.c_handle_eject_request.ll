; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_handle_eject_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_handle_eject_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dock_station = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@UNDOCK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unable to undock!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dock_station*, i32)* @handle_eject_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_eject_request(%struct.dock_station* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dock_station*, align 8
  %5 = alloca i32, align 4
  store %struct.dock_station* %0, %struct.dock_station** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %7 = call i64 @dock_in_progress(%struct.dock_station* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UNDOCK_EVENT, align 4
  %16 = call i32 @dock_event(%struct.dock_station* %13, i32 %14, i32 %15)
  %17 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %18 = call i32 @hot_remove_dock_devices(%struct.dock_station* %17)
  %19 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %20 = call i32 @undock(%struct.dock_station* %19)
  %21 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %22 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @acpi_evaluate_lck(i32 %23, i32 0)
  %25 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %26 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @acpi_evaluate_ej0(i32 %27)
  %29 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %30 = call i64 @dock_present(%struct.dock_station* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %12
  %33 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %34 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @acpi_handle_err(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %12
  %40 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %41 = call i32 @complete_undock(%struct.dock_station* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %32, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @dock_in_progress(%struct.dock_station*) #1

declare dso_local i32 @dock_event(%struct.dock_station*, i32, i32) #1

declare dso_local i32 @hot_remove_dock_devices(%struct.dock_station*) #1

declare dso_local i32 @undock(%struct.dock_station*) #1

declare dso_local i32 @acpi_evaluate_lck(i32, i32) #1

declare dso_local i32 @acpi_evaluate_ej0(i32) #1

declare dso_local i64 @dock_present(%struct.dock_station*) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

declare dso_local i32 @complete_undock(%struct.dock_station*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
