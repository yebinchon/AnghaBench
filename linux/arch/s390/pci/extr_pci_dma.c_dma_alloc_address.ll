; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_alloc_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_alloc_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i64, i32, i64, i32, i32, i32 }

@s390_iommu_strict = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i32)* @dma_alloc_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_alloc_address(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zpci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @to_pci_dev(%struct.device* %9)
  %11 = call %struct.zpci_dev* @to_zpci(i32 %10)
  store %struct.zpci_dev* %11, %struct.zpci_dev** %6, align 8
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @__dma_alloc_iommu(%struct.device* %16, i64 %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %61

24:                                               ; preds = %2
  %25 = load i32, i32* @s390_iommu_strict, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %24
  %28 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %29 = call i64 @zpci_refresh_global(%struct.zpci_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %79

32:                                               ; preds = %27
  %33 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %34 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %40 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %43 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bitmap_andnot(i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %50 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bitmap_zero(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %32, %24
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @__dma_alloc_iommu(%struct.device* %54, i64 0, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %79

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %67 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %69 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %73 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = mul i64 %75, %76
  %78 = add i64 %74, %77
  store i64 %78, i64* %3, align 8
  br label %85

79:                                               ; preds = %59, %31
  %80 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %81 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %79, %61
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__dma_alloc_iommu(%struct.device*, i64, i32) #1

declare dso_local i64 @zpci_refresh_global(%struct.zpci_dev*) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
