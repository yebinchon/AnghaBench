; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.resource = type { i32 }
%struct.deferred_device = type { i32, %struct.resource*, %struct.amba_device* }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@deferred_devices_lock = common dso_local global i32 0, align 4
@deferred_devices = common dso_local global i32 0, align 4
@deferred_retry_work = common dso_local global i32 0, align 4
@DEFERRED_DEVICE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amba_device_add(%struct.amba_device* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.deferred_device*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %8 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %9 = load %struct.resource*, %struct.resource** %5, align 8
  %10 = call i32 @amba_device_try_add(%struct.amba_device* %8, %struct.resource* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EPROBE_DEFER, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.deferred_device* @kmalloc(i32 24, i32 %16)
  store %struct.deferred_device* %17, %struct.deferred_device** %7, align 8
  %18 = load %struct.deferred_device*, %struct.deferred_device** %7, align 8
  %19 = icmp ne %struct.deferred_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %15
  %24 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %25 = load %struct.deferred_device*, %struct.deferred_device** %7, align 8
  %26 = getelementptr inbounds %struct.deferred_device, %struct.deferred_device* %25, i32 0, i32 2
  store %struct.amba_device* %24, %struct.amba_device** %26, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = load %struct.deferred_device*, %struct.deferred_device** %7, align 8
  %29 = getelementptr inbounds %struct.deferred_device, %struct.deferred_device* %28, i32 0, i32 1
  store %struct.resource* %27, %struct.resource** %29, align 8
  store i32 0, i32* %6, align 4
  %30 = call i32 @mutex_lock(i32* @deferred_devices_lock)
  %31 = call i64 @list_empty(i32* @deferred_devices)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @DEFERRED_DEVICE_TIMEOUT, align 4
  %35 = call i32 @schedule_delayed_work(i32* @deferred_retry_work, i32 %34)
  br label %36

36:                                               ; preds = %33, %23
  %37 = load %struct.deferred_device*, %struct.deferred_device** %7, align 8
  %38 = getelementptr inbounds %struct.deferred_device, %struct.deferred_device* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %38, i32* @deferred_devices)
  %40 = call i32 @mutex_unlock(i32* @deferred_devices_lock)
  br label %41

41:                                               ; preds = %36, %2
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @amba_device_try_add(%struct.amba_device*, %struct.resource*) #1

declare dso_local %struct.deferred_device* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
