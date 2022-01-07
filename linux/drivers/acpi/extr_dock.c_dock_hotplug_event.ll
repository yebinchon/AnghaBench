; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_dock_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_dock_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dock_dependent_device = type { %struct.acpi_device* }
%struct.acpi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)*, i32 (%struct.acpi_device*, i32)* }

@DOCK_CALL_FIXUP = common dso_local global i32 0, align 4
@DOCK_CALL_UEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dock_dependent_device*, i32, i32)* @dock_hotplug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dock_hotplug_event(%struct.dock_dependent_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dock_dependent_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca void (%struct.acpi_device*)*, align 8
  %9 = alloca void (%struct.acpi_device*, i32)*, align 8
  %10 = alloca i32 (%struct.acpi_device*, i32)*, align 8
  store %struct.dock_dependent_device* %0, %struct.dock_dependent_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %4, align 8
  %12 = getelementptr inbounds %struct.dock_dependent_device, %struct.dock_dependent_device* %11, i32 0, i32 0
  %13 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  store %struct.acpi_device* %13, %struct.acpi_device** %7, align 8
  %14 = call i32 (...) @acpi_lock_hp_context()
  %15 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DOCK_CALL_FIXUP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load void (%struct.acpi_device*)*, void (%struct.acpi_device*)** %28, align 8
  store void (%struct.acpi_device*)* %29, void (%struct.acpi_device*)** %8, align 8
  %30 = load void (%struct.acpi_device*)*, void (%struct.acpi_device*)** %8, align 8
  %31 = icmp ne void (%struct.acpi_device*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = call i32 (...) @acpi_unlock_hp_context()
  %34 = load void (%struct.acpi_device*)*, void (%struct.acpi_device*)** %8, align 8
  %35 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  call void %34(%struct.acpi_device* %35)
  br label %74

36:                                               ; preds = %24
  br label %71

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DOCK_CALL_UEVENT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %45, align 8
  store void (%struct.acpi_device*, i32)* %46, void (%struct.acpi_device*, i32)** %9, align 8
  %47 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %9, align 8
  %48 = icmp ne void (%struct.acpi_device*, i32)* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = call i32 (...) @acpi_unlock_hp_context()
  %51 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %9, align 8
  %52 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %53 = load i32, i32* %5, align 4
  call void %51(%struct.acpi_device* %52, i32 %53)
  br label %74

54:                                               ; preds = %41
  br label %70

55:                                               ; preds = %37
  %56 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32 (%struct.acpi_device*, i32)*, i32 (%struct.acpi_device*, i32)** %59, align 8
  store i32 (%struct.acpi_device*, i32)* %60, i32 (%struct.acpi_device*, i32)** %10, align 8
  %61 = load i32 (%struct.acpi_device*, i32)*, i32 (%struct.acpi_device*, i32)** %10, align 8
  %62 = icmp ne i32 (%struct.acpi_device*, i32)* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = call i32 (...) @acpi_unlock_hp_context()
  %65 = load i32 (%struct.acpi_device*, i32)*, i32 (%struct.acpi_device*, i32)** %10, align 8
  %66 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %65(%struct.acpi_device* %66, i32 %67)
  br label %74

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %36
  br label %72

72:                                               ; preds = %71, %19
  %73 = call i32 (...) @acpi_unlock_hp_context()
  br label %74

74:                                               ; preds = %72, %63, %49, %32
  ret void
}

declare dso_local i32 @acpi_lock_hp_context(...) #1

declare dso_local i32 @acpi_unlock_hp_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
