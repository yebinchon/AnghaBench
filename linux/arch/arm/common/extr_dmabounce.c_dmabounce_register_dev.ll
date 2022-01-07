; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_dmabounce_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_dmabounce_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dmabounce_device_info* }
%struct.dmabounce_device_info = type { i32 (%struct.device.0*, i32, i64)*, %struct.TYPE_4__, i32, i64, i64, i64, i32, i32, %struct.device*, %struct.TYPE_4__ }
%struct.device.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not allocated dmabounce_device_info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"small_dmabounce_pool\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"dmabounce: could not allocate DMA pool for %ld byte objects\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"large_dmabounce_pool\00", align 1
@dmabounce_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"dmabounce: registered device\0A\00", align 1
@dev_attr_dmabounce_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmabounce_register_dev(%struct.device* %0, i64 %1, i64 %2, i32 (%struct.device*, i32, i64)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.device*, i32, i64)*, align 8
  %10 = alloca %struct.dmabounce_device_info*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (%struct.device*, i32, i64)* %3, i32 (%struct.device*, i32, i64)** %9, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.dmabounce_device_info* @kmalloc(i32 64, i32 %12)
  store %struct.dmabounce_device_info* %13, %struct.dmabounce_device_info** %10, align 8
  %14 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %15 = icmp ne %struct.dmabounce_device_info* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %81

21:                                               ; preds = %4
  %22 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %23 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %22, i32 0, i32 1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @dmabounce_init_pool(%struct.TYPE_4__* %23, %struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  br label %77

33:                                               ; preds = %21
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %38 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %37, i32 0, i32 9
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @dmabounce_init_pool(%struct.TYPE_4__* %38, %struct.device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %71

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %52 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %51, i32 0, i32 8
  store %struct.device* %50, %struct.device** %52, align 8
  %53 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %54 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %53, i32 0, i32 7
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %57 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %56, i32 0, i32 6
  %58 = call i32 @rwlock_init(i32* %57)
  %59 = load i32 (%struct.device*, i32, i64)*, i32 (%struct.device*, i32, i64)** %9, align 8
  %60 = bitcast i32 (%struct.device*, i32, i64)* %59 to i32 (%struct.device.0*, i32, i64)*
  %61 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %62 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %61, i32 0, i32 0
  store i32 (%struct.device.0*, i32, i64)* %60, i32 (%struct.device.0*, i32, i64)** %62, align 8
  %63 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store %struct.dmabounce_device_info* %63, %struct.dmabounce_device_info** %66, align 8
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @set_dma_ops(%struct.device* %67, i32* @dmabounce_ops)
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %81

71:                                               ; preds = %44
  %72 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %73 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dma_pool_destroy(i32 %75)
  br label %77

77:                                               ; preds = %71, %29
  %78 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %10, align 8
  %79 = call i32 @kfree(%struct.dmabounce_device_info* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %49, %16
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.dmabounce_device_info* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dmabounce_init_pool(%struct.TYPE_4__*, %struct.device*, i8*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @set_dma_ops(%struct.device*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.dmabounce_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
