; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-api.c_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-api.c_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_channel*)* }
%struct.dma_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_info*, align 8
  %4 = alloca %struct.dma_channel*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dma_info* @get_dma_info(i32 %5)
  store %struct.dma_info* %6, %struct.dma_info** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.dma_channel* @get_dma_channel(i32 %7)
  store %struct.dma_channel* %8, %struct.dma_channel** %4, align 8
  %9 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %10 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.dma_channel*)*, i32 (%struct.dma_channel*)** %12, align 8
  %14 = icmp ne i32 (%struct.dma_channel*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %17 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dma_channel*)*, i32 (%struct.dma_channel*)** %19, align 8
  %21 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %22 = call i32 %20(%struct.dma_channel* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %25 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %24, i32 0, i32 0
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  ret void
}

declare dso_local %struct.dma_info* @get_dma_info(i32) #1

declare dso_local %struct.dma_channel* @get_dma_channel(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
