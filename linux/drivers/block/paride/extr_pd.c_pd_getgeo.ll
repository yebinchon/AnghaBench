; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pd_unit* }
%struct.pd_unit = type { i32, i32, i32, i32, i64 }
%struct.hd_geometry = type { i32, i32, i32 }

@PD_LOG_HEADS = common dso_local global i32 0, align 4
@PD_LOG_SECTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @pd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.pd_unit*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pd_unit*, %struct.pd_unit** %9, align 8
  store %struct.pd_unit* %10, %struct.pd_unit** %5, align 8
  %11 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %12 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i32, i32* @PD_LOG_HEADS, align 4
  %17 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %18 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PD_LOG_SECTS, align 4
  %20 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %21 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %23 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %26 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %29 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sdiv i32 %24, %31
  %33 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %34 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %51

35:                                               ; preds = %2
  %36 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %37 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %40 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %42 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %45 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %47 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %50 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
