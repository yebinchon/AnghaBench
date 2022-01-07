; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_free_sksb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_free_sksb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, %struct.skd_special_context }
%struct.skd_special_context = type { %struct.TYPE_2__, i64, i32*, i64, i32* }
%struct.TYPE_2__ = type { i64, i32* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_free_sksb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_free_sksb(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca %struct.skd_special_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %4 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %5 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %4, i32 0, i32 2
  store %struct.skd_special_context* %5, %struct.skd_special_context** %3, align 8
  %6 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %7 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %8 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %11 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %14 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %17 = call i32 @skd_free_dma(%struct.skd_device* %6, i32 %9, i32* %12, i64 %15, i32 %16)
  %18 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %19 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %21 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %23 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %24 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %27 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %30 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @skd_free_dma(%struct.skd_device* %22, i32 %25, i32* %28, i64 %31, i32 %32)
  %34 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %35 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %37 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %39 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %40 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %44 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @skd_free_sg_list(%struct.skd_device* %38, i32* %42, i64 %46)
  %48 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %49 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %52 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @skd_free_dma(%struct.skd_device*, i32, i32*, i64, i32) #1

declare dso_local i32 @skd_free_sg_list(%struct.skd_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
