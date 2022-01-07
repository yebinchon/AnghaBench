; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_isa.c_isa_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_isa.c_isa_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.isa_driver* }
%struct.isa_driver = type { i64 (%struct.device.0*, i32)* }
%struct.device.0 = type opaque
%struct.device_driver = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @isa_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.isa_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %7 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %8 = call %struct.isa_driver* @to_isa_driver(%struct.device_driver* %7)
  store %struct.isa_driver* %8, %struct.isa_driver** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.isa_driver*, %struct.isa_driver** %10, align 8
  %12 = load %struct.isa_driver*, %struct.isa_driver** %6, align 8
  %13 = icmp eq %struct.isa_driver* %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.isa_driver*, %struct.isa_driver** %6, align 8
  %16 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %15, i32 0, i32 0
  %17 = load i64 (%struct.device.0*, i32)*, i64 (%struct.device.0*, i32)** %16, align 8
  %18 = icmp ne i64 (%struct.device.0*, i32)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.isa_driver*, %struct.isa_driver** %6, align 8
  %21 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %20, i32 0, i32 0
  %22 = load i64 (%struct.device.0*, i32)*, i64 (%struct.device.0*, i32)** %21, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = bitcast %struct.device* %23 to %struct.device.0*
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call %struct.TYPE_2__* @to_isa_dev(%struct.device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 %22(%struct.device.0* %24, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19, %14
  store i32 1, i32* %3, align 4
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  store %struct.isa_driver* null, %struct.isa_driver** %34, align 8
  br label %35

35:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.isa_driver* @to_isa_driver(%struct.device_driver*) #1

declare dso_local %struct.TYPE_2__* @to_isa_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
