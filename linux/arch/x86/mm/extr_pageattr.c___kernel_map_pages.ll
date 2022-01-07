; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___kernel_map_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___kernel_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kernel_map_pages(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i64 @PageHighMem(%struct.page* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %37

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @page_address(%struct.page* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @debug_check_no_locks_freed(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @__set_pages_p(%struct.page* %25, i32 %26)
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__set_pages_np(%struct.page* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = call i32 (...) @preempt_disable()
  %34 = call i32 (...) @__flush_tlb_all()
  %35 = call i32 (...) @preempt_enable()
  %36 = call i32 (...) @arch_flush_lazy_mmu_mode()
  br label %37

37:                                               ; preds = %32, %10
  ret void
}

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @debug_check_no_locks_freed(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @__set_pages_p(%struct.page*, i32) #1

declare dso_local i32 @__set_pages_np(%struct.page*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__flush_tlb_all(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @arch_flush_lazy_mmu_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
