; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_device_to_hwpath.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_device_to_hwpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device*, i32* }
%struct.hardware_path = type { i32 }
%struct.parisc_device = type { i32 }

@parisc_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_to_hwpath(%struct.device* %0, %struct.hardware_path* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hardware_path*, align 8
  %5 = alloca %struct.parisc_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.hardware_path* %1, %struct.hardware_path** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, @parisc_bus_type
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.parisc_device* @to_parisc_device(%struct.device* %11)
  store %struct.parisc_device* %12, %struct.parisc_device** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  %16 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %17 = call i32 @get_node_path(%struct.device* %15, %struct.hardware_path* %16)
  %18 = load %struct.parisc_device*, %struct.parisc_device** %5, align 8
  %19 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %22 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i64 @dev_is_pci(%struct.device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %30 = call i32 @get_node_path(%struct.device* %28, %struct.hardware_path* %29)
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %10
  ret void
}

declare dso_local %struct.parisc_device* @to_parisc_device(%struct.device*) #1

declare dso_local i32 @get_node_path(%struct.device*, %struct.hardware_path*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
