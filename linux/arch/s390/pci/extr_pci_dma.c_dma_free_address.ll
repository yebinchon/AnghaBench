; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_free_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_free_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i64, i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@s390_iommu_strict = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i32)* @dma_free_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_free_address(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zpci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @to_pci_dev(%struct.device* %10)
  %12 = call %struct.zpci_dev* @to_zpci(i32 %11)
  store %struct.zpci_dev* %12, %struct.zpci_dev** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %47

29:                                               ; preds = %3
  %30 = load i64, i64* @s390_iommu_strict, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %34 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bitmap_clear(i32 %35, i64 %36, i32 %37)
  br label %46

39:                                               ; preds = %29
  %40 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %41 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bitmap_set(i32 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %49 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_clear(i32, i64, i32) #1

declare dso_local i32 @bitmap_set(i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
