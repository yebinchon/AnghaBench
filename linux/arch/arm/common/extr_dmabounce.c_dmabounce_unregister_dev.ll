; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_dmabounce_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_dmabounce_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dmabounce_device_info* }
%struct.dmabounce_device_info = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"Never registered with dmabounce but attemptingto unregister!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Removing from dmabounce with pending buffers!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"dmabounce: device unregistered\0A\00", align 1
@dev_attr_dmabounce_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmabounce_unregister_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dmabounce_device_info*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %6, align 8
  store %struct.dmabounce_device_info* %7, %struct.dmabounce_device_info** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.dmabounce_device_info* null, %struct.dmabounce_device_info** %10, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @set_dma_ops(%struct.device* %11, i32* null)
  %13 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %14 = icmp ne %struct.dmabounce_device_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @dev_warn(%struct.device* %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %19, i32 0, i32 3
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %35 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dma_pool_destroy(i64 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %41 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %47 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dma_pool_destroy(i64 %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %53 = call i32 @kfree(%struct.dmabounce_device_info* %52)
  %54 = load %struct.device*, %struct.device** %2, align 8
  %55 = call i32 @dev_info(%struct.device* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @set_dma_ops(%struct.device*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dma_pool_destroy(i64) #1

declare dso_local i32 @kfree(%struct.dmabounce_device_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
