; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_iommu_demap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_iommu_demap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@HV_EOK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"pci_iotsb_demap() failed with error: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i64, i64, i64)* @dma_4v_iommu_demap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_iommu_demap(%struct.device* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* %14, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  br label %18

18:                                               ; preds = %51, %6
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @DMA_BIT_MASK(i32 32)
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @HV_PCI_TSBID(i32 0, i64 %24)
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @pci_sun4v_iommu_demap(i64 %23, i32 %25, i64 %26)
  store i64 %27, i64* %13, align 8
  br label %44

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @pci_sun4v_iotsb_demap(i64 %29, i64 %30, i64 %31, i64 %32, i64* %13)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* @HV_EOK, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %40, %28
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %18, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_sun4v_iommu_demap(i64, i32, i64) #1

declare dso_local i32 @HV_PCI_TSBID(i32, i64) #1

declare dso_local i64 @pci_sun4v_iotsb_demap(i64, i64, i64, i64, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
