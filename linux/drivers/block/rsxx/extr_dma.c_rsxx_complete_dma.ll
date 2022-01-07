; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_complete_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_complete_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rsxx_dma = type { i32, i32 (i32, i32, i32)* }

@DMA_SW_ERR = common dso_local global i32 0, align 4
@DMA_HW_FAULT = common dso_local global i32 0, align 4
@DMA_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*, i32)* @rsxx_complete_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_complete_dma(%struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_dma_ctrl*, align 8
  %5 = alloca %struct.rsxx_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma_ctrl** %4, align 8
  store %struct.rsxx_dma* %1, %struct.rsxx_dma** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DMA_SW_ERR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DMA_HW_FAULT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DMA_CANCELLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %41 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %40, i32 0, i32 1
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %41, align 8
  %43 = icmp ne i32 (i32, i32, i32)* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %46 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %45, i32 0, i32 1
  %47 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %46, align 8
  %48 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %52 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = call i32 %47(i32 %50, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %44, %39
  %60 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %4, align 8
  %61 = load %struct.rsxx_dma*, %struct.rsxx_dma** %5, align 8
  %62 = call i32 @rsxx_free_dma(%struct.rsxx_dma_ctrl* %60, %struct.rsxx_dma* %61)
  ret void
}

declare dso_local i32 @rsxx_free_dma(%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
