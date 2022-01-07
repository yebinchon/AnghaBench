; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c_ebus_dma_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ebus.c_ebus_dma_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_dma_info = type { i32, i32, i32, i64, i32 }

@EBUS_DMA_FLAG_USE_EBDMA_HANDLER = common dso_local global i32 0, align 4
@ebus_dma_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EBDMA_CSR = common dso_local global i64 0, align 8
@EBDMA_CSR_INT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebus_dma_irq_enable(%struct.ebus_dma_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebus_dma_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ebus_dma_info* %0, %struct.ebus_dma_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %2
  %11 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %12 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EBUS_DMA_FLAG_USE_EBDMA_HANDLER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %19 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ebus_dma_irq, align 4
  %22 = load i32, i32* @IRQF_SHARED, align 4
  %23 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %24 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %27 = call i64 @request_irq(i32 %20, i32 %21, i32 %22, i32 %25, %struct.ebus_dma_info* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %98

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %35 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %34, i32 0, i32 2
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %39 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EBDMA_CSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @EBDMA_CSR_INT_EN, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %49 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EBDMA_CSR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %55 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %54, i32 0, i32 2
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %97

58:                                               ; preds = %2
  %59 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %60 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %59, i32 0, i32 2
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %64 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EBDMA_CSR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @EBDMA_CSR_INT_EN, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %75 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EBDMA_CSR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %81 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %80, i32 0, i32 2
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %85 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @EBUS_DMA_FLAG_USE_EBDMA_HANDLER, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %58
  %91 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %92 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %4, align 8
  %95 = call i32 @free_irq(i32 %93, %struct.ebus_dma_info* %94)
  br label %96

96:                                               ; preds = %90, %58
  br label %97

97:                                               ; preds = %96, %33
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.ebus_dma_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.ebus_dma_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
