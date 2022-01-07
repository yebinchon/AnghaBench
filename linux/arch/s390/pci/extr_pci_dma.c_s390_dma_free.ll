; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32, i64)* @s390_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_dma_free(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.zpci_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call i32 @to_pci_dev(%struct.device* %12)
  %14 = call %struct.zpci_dev* @to_zpci(i32 %13)
  store %struct.zpci_dev* %14, %struct.zpci_dev** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @PAGE_ALIGN(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = udiv i64 %17, %18
  %20 = load %struct.zpci_dev*, %struct.zpci_dev** %11, align 8
  %21 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %20, i32 0, i32 0
  %22 = call i32 @atomic64_sub(i64 %19, i32* %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %27 = call i32 @s390_dma_unmap_pages(%struct.device* %23, i32 %24, i64 %25, i32 %26, i32 0)
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @get_order(i64 %30)
  %32 = call i32 @free_pages(i64 %29, i32 %31)
  ret void
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @atomic64_sub(i64, i32*) #1

declare dso_local i32 @s390_dma_unmap_pages(%struct.device*, i32, i64, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
