; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_system-bus.c_ps3_mmio_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_system-bus.c_ps3_mmio_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3_mmio_region = type { i64, i64, i32, i32*, %struct.ps3_system_bus_device* }

@ps3_mmio_sb_region_ops = common dso_local global i32 0, align 4
@ps3_mmio_ioc0_region_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_mmio_region_init(%struct.ps3_system_bus_device* %0, %struct.ps3_mmio_region* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps3_system_bus_device*, align 8
  %8 = alloca %struct.ps3_mmio_region*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %7, align 8
  store %struct.ps3_mmio_region* %1, %struct.ps3_mmio_region** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %7, align 8
  %13 = load %struct.ps3_mmio_region*, %struct.ps3_mmio_region** %8, align 8
  %14 = getelementptr inbounds %struct.ps3_mmio_region, %struct.ps3_mmio_region* %13, i32 0, i32 4
  store %struct.ps3_system_bus_device* %12, %struct.ps3_system_bus_device** %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.ps3_mmio_region*, %struct.ps3_mmio_region** %8, align 8
  %17 = getelementptr inbounds %struct.ps3_mmio_region, %struct.ps3_mmio_region* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.ps3_mmio_region*, %struct.ps3_mmio_region** %8, align 8
  %20 = getelementptr inbounds %struct.ps3_mmio_region, %struct.ps3_mmio_region* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ps3_mmio_region*, %struct.ps3_mmio_region** %8, align 8
  %23 = getelementptr inbounds %struct.ps3_mmio_region, %struct.ps3_mmio_region* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %7, align 8
  %25 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %5
  %28 = load %struct.ps3_mmio_region*, %struct.ps3_mmio_region** %8, align 8
  %29 = getelementptr inbounds %struct.ps3_mmio_region, %struct.ps3_mmio_region* %28, i32 0, i32 3
  store i32* @ps3_mmio_sb_region_ops, i32** %29, align 8
  br label %37

30:                                               ; preds = %5
  %31 = load %struct.ps3_mmio_region*, %struct.ps3_mmio_region** %8, align 8
  %32 = getelementptr inbounds %struct.ps3_mmio_region, %struct.ps3_mmio_region* %31, i32 0, i32 3
  store i32* @ps3_mmio_ioc0_region_ops, i32** %32, align 8
  br label %37

33:                                               ; preds = %5
  %34 = call i32 (...) @BUG()
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %38

37:                                               ; preds = %30, %27
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
