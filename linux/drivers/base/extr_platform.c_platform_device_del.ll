; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.resource*, i32, i64, i32 }
%struct.resource = type { i64 }

@platform_devid_ida = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_device_del(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call i32 @IS_ERR_OR_NULL(%struct.platform_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 4
  %11 = call i32 @device_del(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ida_simple_remove(i32* @platform_devid_ida, i32 %19)
  %21 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %16, %8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = load %struct.resource*, %struct.resource** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %34, i64 %36
  store %struct.resource* %37, %struct.resource** %4, align 8
  %38 = load %struct.resource*, %struct.resource** %4, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.resource*, %struct.resource** %4, align 8
  %44 = call i32 @release_resource(%struct.resource* %43)
  br label %45

45:                                               ; preds = %42, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %25

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.platform_device*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
