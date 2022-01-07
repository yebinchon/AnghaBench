; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c___ebus_dma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c___ebus_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_dma_info = type { i64 }

@EBDMA_CSR_RESET = common dso_local global i32 0, align 4
@EBDMA_CSR = common dso_local global i64 0, align 8
@EBUS_DMA_RESET_TIMEOUT = common dso_local global i32 0, align 4
@EBDMA_CSR_DRAIN = common dso_local global i32 0, align 4
@EBDMA_CSR_CYC_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ebus_dma_info*, i32)* @__ebus_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ebus_dma_reset(%struct.ebus_dma_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ebus_dma_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ebus_dma_info* %0, %struct.ebus_dma_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @EBDMA_CSR_RESET, align 4
  %8 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %9 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EBDMA_CSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = call i32 @udelay(i32 1)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUS_DMA_RESET_TIMEOUT, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %39, %18
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %25 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EBDMA_CSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EBDMA_CSR_DRAIN, align 4
  %32 = load i32, i32* @EBDMA_CSR_CYC_PEND, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %42

37:                                               ; preds = %23
  %38 = call i32 @udelay(i32 10)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  br label %20

42:                                               ; preds = %17, %36, %20
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
