; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.kmem_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skd_device*, %struct.kmem_cache*, i32*, i32, i32)* @skd_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skd_alloc_dma(%struct.skd_device* %0, %struct.kmem_cache* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.skd_device*, align 8
  %8 = alloca %struct.kmem_cache*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i8*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %7, align 8
  store %struct.kmem_cache* %1, %struct.kmem_cache** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %15 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @kmem_cache_alloc(%struct.kmem_cache* %18, i32 %19)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %43

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %28 = call i32 @kmem_cache_size(%struct.kmem_cache* %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @dma_map_single(%struct.device* %25, i8* %26, i32 %28, i32 %29)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %12, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @dma_mapping_error(%struct.device* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @kmem_cache_free(%struct.kmem_cache* %38, i8* %39)
  store i8* null, i8** %13, align 8
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i8*, i8** %13, align 8
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %41, %23
  %44 = load i8*, i8** %6, align 8
  ret i8* %44
}

declare dso_local i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @kmem_cache_size(%struct.kmem_cache*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
