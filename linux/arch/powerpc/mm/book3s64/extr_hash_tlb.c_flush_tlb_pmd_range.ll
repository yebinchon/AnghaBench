; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_tlb.c_flush_tlb_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_tlb.c_flush_tlb_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PMD_SIZE = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_pmd_range(%struct.mm_struct* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @PMD_SIZE, align 4
  %13 = call i64 @_ALIGN_DOWN(i64 %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = call i32 (...) @arch_enter_lazy_mmu_mode()
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32* @pte_offset_map(i32* %17, i64 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %46, %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @PTRS_PER_PTE, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = icmp ult i32* %22, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @pte_val(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @hpte_need_flush(%struct.mm_struct* %37, i64 %38, i32* %39, i64 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  br label %21

49:                                               ; preds = %21
  %50 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @local_irq_restore(i64 %51)
  ret void
}

declare dso_local i64 @_ALIGN_DOWN(i64, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @hpte_need_flush(%struct.mm_struct*, i64, i32*, i64, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
