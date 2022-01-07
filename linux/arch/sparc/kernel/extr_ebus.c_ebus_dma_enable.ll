; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c_ebus_dma_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c_ebus_dma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_dma_info = type { i32, i64 }

@EBDMA_CSR = common dso_local global i64 0, align 8
@EBDMA_CSR_EN_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ebus_dma_enable(%struct.ebus_dma_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ebus_dma_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ebus_dma_info* %0, %struct.ebus_dma_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %9 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %13 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EBDMA_CSR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @EBDMA_CSR_EN_DMA, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @EBDMA_CSR_EN_DMA, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EBDMA_CSR_EN_DMA, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EBDMA_CSR_EN_DMA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %40 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EBDMA_CSR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %47 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
