; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pasemi_dmachan = type { i32, i64, i32* }

@dma_pdev = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pasemi_dma_free_ring(%struct.pasemi_dmachan* %0) #0 {
  %2 = alloca %struct.pasemi_dmachan*, align 8
  store %struct.pasemi_dmachan* %0, %struct.pasemi_dmachan** %2, align 8
  %3 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %4 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_pdev, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %13 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %19 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %22 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %11, i32 %17, i32* %20, i64 %23)
  %25 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %26 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %28 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %2, align 8
  %30 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
