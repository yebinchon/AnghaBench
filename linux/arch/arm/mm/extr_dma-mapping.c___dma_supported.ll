; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___dma_supported.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___dma_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@max_pfn = common dso_local global i32 0, align 4
@arm_dma_pfn_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"Coherent DMA mask %#llx (pfn %#lx-%#lx) covers a smaller range of system memory than the DMA zone pfn 0x0-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @__dma_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_supported(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @max_pfn, align 4
  %10 = load i32, i32* @arm_dma_pfn_limit, align 4
  %11 = call i64 @min(i32 %9, i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dma_to_pfn(%struct.device* %12, i32 %13)
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dma_to_pfn(%struct.device* %24, i32 0)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dma_to_pfn(%struct.device* %26, i32 %27)
  %29 = add nsw i32 %28, 1
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %29, i64 %31)
  br label %33

33:                                               ; preds = %21, %18
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @dma_to_pfn(%struct.device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
