; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.platform_object = type { %struct.platform_device, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@platform_device_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @platform_device_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_object*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = add i64 16, %7
  %9 = add i64 %8, 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.platform_object* @kzalloc(i64 %9, i32 %10)
  store %struct.platform_object* %11, %struct.platform_object** %5, align 8
  %12 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %13 = icmp ne %struct.platform_object* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %16 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcpy(i32 %17, i8* %18)
  %20 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %21 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %24 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %28 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %31 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = call i32 @device_initialize(%struct.TYPE_2__* %32)
  %34 = load i32, i32* @platform_device_release, align 4
  %35 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %36 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %40 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %39, i32 0, i32 0
  %41 = call i32 @setup_pdev_dma_masks(%struct.platform_device* %40)
  br label %42

42:                                               ; preds = %14, %2
  %43 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %44 = icmp ne %struct.platform_object* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %47 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %46, i32 0, i32 0
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi %struct.platform_device* [ %47, %45 ], [ null, %48 ]
  ret %struct.platform_device* %50
}

declare dso_local %struct.platform_object* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @setup_pdev_dma_masks(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
