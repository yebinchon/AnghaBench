; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_free_chan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_free_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_dmachan = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pasemi_dma_free_chan(%struct.pasemi_dmachan* %0) #0 {
  %2 = alloca %struct.pasemi_dmachan*, align 8
  store %struct.pasemi_dmachan* %0, %struct.pasemi_dmachan** %2, align 8
  %3 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %4 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %9 = call i32 @pasemi_dma_free_ring(%struct.pasemi_dmachan* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %12 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 129
  switch i32 %14, label %25 [
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %10
  %16 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %17 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pasemi_free_rx_chan(i32 %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %22 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pasemi_free_tx_chan(i32 %23)
  br label %25

25:                                               ; preds = %10, %20, %15
  %26 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %27 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  ret void
}

declare dso_local i32 @pasemi_dma_free_ring(%struct.pasemi_dmachan*) #1

declare dso_local i32 @pasemi_free_rx_chan(i32) #1

declare dso_local i32 @pasemi_free_tx_chan(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
