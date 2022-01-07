; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxtet_device = type { %struct.TYPE_2__, %struct.moxtet* }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.moxtet = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@moxtet_bus_type = common dso_local global i32 0, align 4
@moxtet_dev_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.moxtet_device* (%struct.moxtet*)* @moxtet_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.moxtet_device* @moxtet_alloc_device(%struct.moxtet* %0) #0 {
  %2 = alloca %struct.moxtet_device*, align 8
  %3 = alloca %struct.moxtet*, align 8
  %4 = alloca %struct.moxtet_device*, align 8
  store %struct.moxtet* %0, %struct.moxtet** %3, align 8
  %5 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %6 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @get_device(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.moxtet_device* null, %struct.moxtet_device** %2, align 8
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.moxtet_device* @kzalloc(i32 32, i32 %12)
  store %struct.moxtet_device* %13, %struct.moxtet_device** %4, align 8
  %14 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %15 = icmp ne %struct.moxtet_device* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %18 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @put_device(i32 %19)
  store %struct.moxtet_device* null, %struct.moxtet_device** %2, align 8
  br label %42

21:                                               ; preds = %11
  %22 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %23 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %24 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %23, i32 0, i32 1
  store %struct.moxtet* %22, %struct.moxtet** %24, align 8
  %25 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %26 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %29 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %32 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* @moxtet_bus_type, i32** %33, align 8
  %34 = load i32, i32* @moxtet_dev_release, align 4
  %35 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %36 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %39 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %38, i32 0, i32 0
  %40 = call i32 @device_initialize(%struct.TYPE_2__* %39)
  %41 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  store %struct.moxtet_device* %41, %struct.moxtet_device** %2, align 8
  br label %42

42:                                               ; preds = %21, %16, %10
  %43 = load %struct.moxtet_device*, %struct.moxtet_device** %2, align 8
  ret %struct.moxtet_device* %43
}

declare dso_local i32 @get_device(i32) #1

declare dso_local %struct.moxtet_device* @kzalloc(i32, i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
