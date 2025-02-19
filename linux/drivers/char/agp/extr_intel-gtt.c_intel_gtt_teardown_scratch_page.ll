; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_teardown_scratch_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_teardown_scratch_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@intel_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_gtt_teardown_scratch_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_gtt_teardown_scratch_page() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 8
  %2 = call i32 @set_pages_wb(i32 %1, i32 1)
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 3), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %10 = call i32 @pci_unmap_page(i32 %6, i32 %7, i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %5, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 8
  %13 = call i32 @__free_page(i32 %12)
  ret void
}

declare dso_local i32 @set_pages_wb(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
