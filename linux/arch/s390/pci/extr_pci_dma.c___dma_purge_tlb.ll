; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___dma_purge_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___dma_purge_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32, i32, i32, i64, i32 }

@ZPCI_PTE_VALID_MASK = common dso_local global i32 0, align 4
@ZPCI_PTE_VALID = common dso_local global i32 0, align 4
@s390_iommu_strict = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*, i32, i64, i32)* @__dma_purge_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_purge_tlb(%struct.zpci_dev* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zpci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @ZPCI_PTE_VALID_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @ZPCI_PTE_VALID, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %19 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %83

23:                                               ; preds = %17
  br label %29

24:                                               ; preds = %4
  %25 = load i32, i32* @s390_iommu_strict, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %83

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 32
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @PAGE_ALIGN(i64 %36)
  %38 = call i32 @zpci_refresh_trans(i32 %34, i32 %35, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %29
  %44 = load i32, i32* @s390_iommu_strict, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %80, label %46

46:                                               ; preds = %43
  %47 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %48 = call i64 @zpci_refresh_global(%struct.zpci_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %81

51:                                               ; preds = %46
  %52 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %53 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bitmap_andnot(i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %70 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %73 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bitmap_zero(i32 %71, i32 %74)
  %76 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %77 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %51, %43, %29
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %27, %22
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @zpci_refresh_trans(i32, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @zpci_refresh_global(%struct.zpci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
