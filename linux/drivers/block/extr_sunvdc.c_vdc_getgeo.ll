; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @vdc_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %8 = load %struct.block_device*, %struct.block_device** %3, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  store %struct.gendisk* %10, %struct.gendisk** %5, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %12 = call i32 @get_capacity(%struct.gendisk* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %15 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %14, i32 0, i32 0
  store i32 255, i32* %15, align 4
  %16 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %17 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %16, i32 0, i32 1
  store i32 63, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %20 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %23 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = call i32 @sector_div(i32 %18, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %29 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %31 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %35 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %39 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %46 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %45, i32 0, i32 2
  store i32 65535, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %2
  ret i32 0
}

declare dso_local i32 @get_capacity(%struct.gendisk*) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
