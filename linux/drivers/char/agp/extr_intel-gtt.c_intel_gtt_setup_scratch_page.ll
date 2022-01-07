; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_setup_scratch_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_setup_scratch_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.page*, i32, i32, i64 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_gtt_setup_scratch_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gtt_setup_scratch_page() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load i32, i32* @GFP_DMA32, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @__GFP_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.page* @alloc_page(i32 %8)
  store %struct.page* %9, %struct.page** %2, align 8
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = icmp eq %struct.page* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %40

15:                                               ; preds = %0
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @set_pages_uc(%struct.page* %16, i32 1)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 3), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 2), align 4
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %25 = call i32 @pci_map_page(i32 %21, %struct.page* %22, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 2), align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pci_dma_mapping_error(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %40

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 8
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.page*, %struct.page** %2, align 8
  %37 = call i32 @page_to_phys(%struct.page* %36)
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 8
  br label %38

38:                                               ; preds = %35, %33
  %39 = load %struct.page*, %struct.page** %2, align 8
  store %struct.page* %39, %struct.page** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %38, %30, %12
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @set_pages_uc(%struct.page*, i32) #1

declare dso_local i32 @pci_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
