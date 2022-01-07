; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_mm.c_ps3_dma_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_mm.c_ps3_dma_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ps3_system_bus_device = type { i32 }
%struct.ps3_dma_region = type { i32, i32, i64, i64, i32*, %struct.ps3_system_bus_device* }

@map = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@USE_DYNAMIC_DMA = common dso_local global i32 0, align 4
@ps3_dma_sb_region_ops = common dso_local global i32 0, align 4
@ps3_dma_sb_region_linear_ops = common dso_local global i32 0, align 4
@ps3_dma_ioc0_region_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_dma_region_init(%struct.ps3_system_bus_device* %0, %struct.ps3_dma_region* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps3_system_bus_device*, align 8
  %9 = alloca %struct.ps3_dma_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %8, align 8
  store %struct.ps3_dma_region* %1, %struct.ps3_dma_region** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @__pa(i8* %18)
  %20 = call i64 @ps3_mm_phys_to_lpar(i32 %19)
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i64 [ %20, %17 ], [ 0, %21 ]
  store i64 %23, i64* %14, align 8
  %24 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %8, align 8
  %25 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %26 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %25, i32 0, i32 5
  store %struct.ps3_system_bus_device* %24, %struct.ps3_system_bus_device** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %29 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %32 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %14, align 8
  %34 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %35 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %37 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 2, i32 0), align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %22
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 1, i32 0), align 8
  %43 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %44 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %41, %22
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* %13, align 8
  br label %59

52:                                               ; preds = %47
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0), align 8
  %54 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %55 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = call i64 @_ALIGN_UP(i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %50
  %60 = phi i64 [ %51, %50 ], [ %58, %52 ]
  %61 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %62 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %8, align 8
  %64 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %76 [
    i32 128, label %66
    i32 129, label %73
  ]

66:                                               ; preds = %59
  %67 = load i32, i32* @USE_DYNAMIC_DMA, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32* @ps3_dma_sb_region_ops, i32* @ps3_dma_sb_region_linear_ops
  %71 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %72 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  br label %80

73:                                               ; preds = %59
  %74 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %9, align 8
  %75 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %74, i32 0, i32 4
  store i32* @ps3_dma_ioc0_region_ops, i32** %75, align 8
  br label %80

76:                                               ; preds = %59
  %77 = call i32 (...) @BUG()
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %73, %66
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %76
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i64 @ps3_mm_phys_to_lpar(i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i64 @_ALIGN_UP(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
