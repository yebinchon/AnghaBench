; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_snap_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_snap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@BAD_SNAP_INDEX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i64, i64*)* @rbd_snap_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_snap_size(%struct.rbd_device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %12 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rbd_image_format_valid(i32 %13)
  %15 = call i32 @rbd_assert(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @CEPH_NOSNAP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %21 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %27 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @rbd_dev_snap_index(%struct.rbd_device* %31, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @BAD_SNAP_INDEX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %30
  %41 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %42 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  br label %60

49:                                               ; preds = %25
  store i64 0, i64* %9, align 8
  %50 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @_rbd_dev_v2_snap_size(%struct.rbd_device* %50, i64 %51, i32* null, i64* %9)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %62

57:                                               ; preds = %49
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %40
  br label %61

61:                                               ; preds = %60, %19
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %55, %37
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_image_format_valid(i32) #1

declare dso_local i64 @rbd_dev_snap_index(%struct.rbd_device*, i64) #1

declare dso_local i32 @_rbd_dev_v2_snap_size(%struct.rbd_device*, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
