; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @blkif_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_capacity(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %13 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %12, i32 0, i32 0
  store i32 255, i32* %13, align 4
  %14 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %15 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %14, i32 0, i32 1
  store i32 63, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %18 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %21 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = call i32 @sector_div(i32 %16, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %27 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %29 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %33 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %37 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %44 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %43, i32 0, i32 2
  store i32 65535, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %2
  ret i32 0
}

declare dso_local i32 @get_capacity(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
