; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_sksb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_sksb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, %struct.skd_special_context }
%struct.skd_special_context = type { %struct.TYPE_2__, i32*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i64 }

@SKD_ID_INTERNAL = common dso_local global i64 0, align 8
@SKD_REQ_STATE_IDLE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_cons_sksb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_cons_sksb(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.skd_special_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %6 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %5, i32 0, i32 2
  store %struct.skd_special_context* %6, %struct.skd_special_context** %4, align 8
  %7 = load i64, i64* @SKD_ID_INTERNAL, align 8
  %8 = add nsw i64 0, %7
  %9 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %10 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i64 %8, i64* %11, align 8
  %12 = load i32, i32* @SKD_REQ_STATE_IDLE, align 4
  %13 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %14 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %17 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %18 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %21 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %20, i32 0, i32 4
  %22 = load i32, i32* @GFP_DMA, align 4
  %23 = load i32, i32* @__GFP_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %26 = call i8* @skd_alloc_dma(%struct.skd_device* %16, i32 %19, i32* %21, i32 %24, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %29 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %31 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %1
  %38 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %39 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %40 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %43 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %42, i32 0, i32 2
  %44 = load i32, i32* @GFP_DMA, align 4
  %45 = load i32, i32* @__GFP_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i8* @skd_alloc_dma(%struct.skd_device* %38, i32 %41, i32* %43, i32 %46, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %51 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %53 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %84

59:                                               ; preds = %37
  %60 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %61 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %62 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32* @skd_cons_sg_list(%struct.skd_device* %60, i32 1, i32* %63)
  %65 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %66 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %69 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %84

76:                                               ; preds = %59
  %77 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %78 = call i32 @skd_format_internal_skspcl(%struct.skd_device* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %80, %73, %56, %34
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @skd_alloc_dma(%struct.skd_device*, i32, i32*, i32, i32) #1

declare dso_local i32* @skd_cons_sg_list(%struct.skd_device*, i32, i32*) #1

declare dso_local i32 @skd_format_internal_skspcl(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
