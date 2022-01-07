; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_figure_loop_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_figure_loop_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i64, i32, %struct.block_device*, i32 }
%struct.block_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EFBIG = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i64, i64)* @figure_loop_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @figure_loop_size(%struct.loop_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.block_device*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %14 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @get_size(i64 %11, i64 %12, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %19 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %18, i32 0, i32 3
  %20 = load %struct.block_device*, %struct.block_device** %19, align 8
  store %struct.block_device* %20, %struct.block_device** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EFBIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %32 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %39 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %42 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %49 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %52 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @set_capacity(i32 %53, i64 %54)
  %56 = load %struct.block_device*, %struct.block_device** %10, align 8
  %57 = load %struct.block_device*, %struct.block_device** %10, align 8
  %58 = getelementptr inbounds %struct.block_device, %struct.block_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @get_capacity(i32 %59)
  %61 = shl i64 %60, 9
  %62 = call i32 @bd_set_size(%struct.block_device* %56, i64 %61)
  %63 = load %struct.block_device*, %struct.block_device** %10, align 8
  %64 = getelementptr inbounds %struct.block_device, %struct.block_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_2__* @disk_to_dev(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* @KOBJ_CHANGE, align 4
  %69 = call i32 @kobject_uevent(i32* %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %50, %27
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @get_size(i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @bd_set_size(%struct.block_device*, i64) #1

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
