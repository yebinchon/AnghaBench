; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh5.c_tlb_wire_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh5.c_tlb_wire_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@dtlb_entry = common dso_local global i64 0, align 8
@dtlb_entries = common dso_local global i64* null, align 8
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_wire_entry(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @dtlb_entry, align 8
  %11 = load i64*, i64** @dtlb_entries, align 8
  %12 = call i64 @ARRAY_SIZE(i64* %11)
  %13 = icmp eq i64 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = call i64 (...) @sh64_get_wired_dtlb_entry()
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64*, i64** @dtlb_entries, align 8
  %21 = load i64, i64* @dtlb_entry, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @dtlb_entry, align 8
  %23 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %19, i64* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @pte_val(i32 %24)
  %26 = load i64, i64* @_PAGE_FLAGS_HARDWARE_MASK, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* @PAGE_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %8, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (...) @get_asid()
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @sh64_setup_tlb_slot(i64 %32, i64 %33, i32 %34, i64 %35)
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @sh64_get_wired_dtlb_entry(...) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @sh64_setup_tlb_slot(i64, i64, i32, i64) #1

declare dso_local i32 @get_asid(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
