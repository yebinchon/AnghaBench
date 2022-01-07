; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_bdev_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_bdev_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.skd_device* }
%struct.skd_device = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: CMD[%s] getgeo device\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @skd_bdev_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_bdev_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca %struct.skd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.skd_device*, %struct.skd_device** %11, align 8
  store %struct.skd_device* %12, %struct.skd_device** %6, align 8
  %13 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %14 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.block_device*, %struct.block_device** %4, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %27 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %2
  %31 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %32 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_capacity(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %36 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %35, i32 0, i32 0
  store i32 64, i32* %36, align 4
  %37 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %38 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %37, i32 0, i32 1
  store i32 255, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 16320
  %41 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %42 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @get_capacity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
