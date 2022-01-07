; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.vio_dev = type { i32 }
%struct.vio_driver = type { %struct.vio_device_id* }
%struct.vio_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @vio_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vio_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.vio_dev*, align 8
  %6 = alloca %struct.vio_driver*, align 8
  %7 = alloca %struct.vio_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_driver* %1, %struct.device_driver** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.vio_dev* @to_vio_dev(%struct.device* %8)
  store %struct.vio_dev* %9, %struct.vio_dev** %5, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %11 = call %struct.vio_driver* @to_vio_driver(%struct.device_driver* %10)
  store %struct.vio_driver* %11, %struct.vio_driver** %6, align 8
  %12 = load %struct.vio_driver*, %struct.vio_driver** %6, align 8
  %13 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %12, i32 0, i32 0
  %14 = load %struct.vio_device_id*, %struct.vio_device_id** %13, align 8
  store %struct.vio_device_id* %14, %struct.vio_device_id** %7, align 8
  %15 = load %struct.vio_device_id*, %struct.vio_device_id** %7, align 8
  %16 = icmp ne %struct.vio_device_id* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.vio_device_id*, %struct.vio_device_id** %7, align 8
  %19 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %20 = call i32* @vio_match_device(%struct.vio_device_id* %18, %struct.vio_dev* %19)
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ false, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local %struct.vio_driver* @to_vio_driver(%struct.device_driver*) #1

declare dso_local i32* @vio_match_device(%struct.vio_device_id*, %struct.vio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
