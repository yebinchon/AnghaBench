; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_transport_class.c_transport_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_transport_class.c_transport_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.transport_class = type { i32 (%struct.transport_container*, %struct.device.0*, %struct.device.0*)* }
%struct.transport_container = type { i32 }
%struct.device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transport_configure(%struct.attribute_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.transport_class*, align 8
  %8 = alloca %struct.transport_container*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %9 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %10 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.transport_class* @class_to_transport_class(i32 %11)
  store %struct.transport_class* %12, %struct.transport_class** %7, align 8
  %13 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %14 = call %struct.transport_container* @attribute_container_to_transport_container(%struct.attribute_container* %13)
  store %struct.transport_container* %14, %struct.transport_container** %8, align 8
  %15 = load %struct.transport_class*, %struct.transport_class** %7, align 8
  %16 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %15, i32 0, i32 0
  %17 = load i32 (%struct.transport_container*, %struct.device.0*, %struct.device.0*)*, i32 (%struct.transport_container*, %struct.device.0*, %struct.device.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.transport_container*, %struct.device.0*, %struct.device.0*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.transport_class*, %struct.transport_class** %7, align 8
  %21 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %20, i32 0, i32 0
  %22 = load i32 (%struct.transport_container*, %struct.device.0*, %struct.device.0*)*, i32 (%struct.transport_container*, %struct.device.0*, %struct.device.0*)** %21, align 8
  %23 = load %struct.transport_container*, %struct.transport_container** %8, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = bitcast %struct.device* %24 to %struct.device.0*
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = bitcast %struct.device* %26 to %struct.device.0*
  %28 = call i32 %22(%struct.transport_container* %23, %struct.device.0* %25, %struct.device.0* %27)
  br label %29

29:                                               ; preds = %19, %3
  ret i32 0
}

declare dso_local %struct.transport_class* @class_to_transport_class(i32) #1

declare dso_local %struct.transport_container* @attribute_container_to_transport_container(%struct.attribute_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
