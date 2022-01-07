; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_bdev_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_bdev_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.carm_port* }
%struct.carm_port = type { i32, i64, i64 }
%struct.hd_geometry = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @carm_bdev_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_bdev_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.carm_port*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.carm_port*, %struct.carm_port** %9, align 8
  store %struct.carm_port* %10, %struct.carm_port** %5, align 8
  %11 = load %struct.carm_port*, %struct.carm_port** %5, align 8
  %12 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %16 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.carm_port*, %struct.carm_port** %5, align 8
  %18 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %22 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.carm_port*, %struct.carm_port** %5, align 8
  %24 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %27 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
