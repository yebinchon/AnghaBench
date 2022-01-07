; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLB_ENTRY_SIZE_MASK = common dso_local global i64 0, align 8
@TLB_ENTRY_SIZE = common dso_local global i32 0, align 4
@ASID_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @TLB_ENTRY_SIZE_MASK, align 8
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @TLB_ENTRY_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* @TLB_ENTRY_SIZE_MASK, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = call i64 (...) @read_mmu_entryhi()
  %22 = load i64, i64* @ASID_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %44, %2
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %29, %30
  %32 = call i32 @write_mmu_entryhi(i64 %31)
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %3, align 8
  %38 = call i32 (...) @tlb_probe()
  %39 = call i32 (...) @read_mmu_index()
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = call i32 (...) @tlb_invalid_indexed()
  br label %44

44:                                               ; preds = %42, %28
  br label %24

45:                                               ; preds = %24
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @restore_asid_inv_utlb(i64 %46, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_mmu_entryhi(...) #1

declare dso_local i32 @write_mmu_entryhi(i64) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_mmu_index(...) #1

declare dso_local i32 @tlb_invalid_indexed(...) #1

declare dso_local i32 @restore_asid_inv_utlb(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
