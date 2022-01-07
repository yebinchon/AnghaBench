; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLB_ENTRY_SIZE_MASK = common dso_local global i64 0, align 8
@ASID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_one(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @TLB_ENTRY_SIZE_MASK, align 8
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, %6
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = call i32 (...) @read_mmu_entryhi()
  %12 = load i32, i32* @ASID_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  %18 = call i32 @write_mmu_entryhi(i64 %17)
  %19 = call i32 (...) @tlb_probe()
  %20 = call i32 (...) @read_mmu_index()
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @tlb_invalid_indexed()
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @restore_asid_inv_utlb(i32 %26, i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @read_mmu_entryhi(...) #1

declare dso_local i32 @write_mmu_entryhi(i64) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_mmu_index(...) #1

declare dso_local i32 @tlb_invalid_indexed(...) #1

declare dso_local i32 @restore_asid_inv_utlb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
