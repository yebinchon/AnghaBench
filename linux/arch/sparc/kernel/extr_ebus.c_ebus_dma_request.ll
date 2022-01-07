; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c_ebus_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c_ebus_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_dma_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBDMA_CSR = common dso_local global i64 0, align 8
@EBDMA_CSR_EN_DMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EBDMA_CSR_NA_LOADED = common dso_local global i32 0, align 4
@EBDMA_COUNT = common dso_local global i64 0, align 8
@EBDMA_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebus_dma_request(%struct.ebus_dma_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebus_dma_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ebus_dma_info* %0, %struct.ebus_dma_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp uge i64 %11, 16777216
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %5, align 8
  %18 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %5, align 8
  %22 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EBDMA_CSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @EBDMA_CSR_EN_DMA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %57

34:                                               ; preds = %16
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @EBDMA_CSR_NA_LOADED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %57

42:                                               ; preds = %34
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %5, align 8
  %45 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EBDMA_COUNT, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i64 %43, i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %5, align 8
  %52 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EBDMA_ADDR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i64 %50, i64 %55)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %42, %41, %33
  %58 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %5, align 8
  %59 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
