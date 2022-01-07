; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fit_sg_descriptor = type { i32 }
%struct.skd_device = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fit_sg_descriptor* (%struct.skd_device*, i32, i32*)* @skd_cons_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fit_sg_descriptor* @skd_cons_sg_list(%struct.skd_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fit_sg_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %12 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %13 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @GFP_DMA, align 4
  %17 = load i32, i32* @__GFP_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DMA_TO_DEVICE, align 4
  %20 = call %struct.fit_sg_descriptor* @skd_alloc_dma(%struct.skd_device* %11, i32 %14, i32* %15, i32 %18, i32 %19)
  store %struct.fit_sg_descriptor* %20, %struct.fit_sg_descriptor** %7, align 8
  %21 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %22 = icmp ne %struct.fit_sg_descriptor* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %45, %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %40, i64 %42
  %44 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %49, i64 %51
  %53 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %3
  %55 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  ret %struct.fit_sg_descriptor* %55
}

declare dso_local %struct.fit_sg_descriptor* @skd_alloc_dma(%struct.skd_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
