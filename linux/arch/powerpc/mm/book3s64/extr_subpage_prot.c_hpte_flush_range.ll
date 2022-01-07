; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_subpage_prot.c_hpte_flush_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_subpage_prot.c_hpte_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32)* @hpte_flush_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpte_flush_range(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32* @pgd_offset(%struct.mm_struct* %12, i64 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @pgd_none(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %66

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @pud_offset(i32* %21, i64 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pud_none(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %66

29:                                               ; preds = %20
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32* @pmd_offset(i32* %30, i64 %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pmd_none(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %66

38:                                               ; preds = %29
  %39 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32* @pte_offset_map_lock(%struct.mm_struct* %39, i32* %40, i64 %41, i32** %11)
  store i32* %42, i32** %10, align 8
  %43 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %44

44:                                               ; preds = %57, %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @pte_update(%struct.mm_struct* %48, i64 %49, i32* %50, i32 0, i32 0, i32 0)
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %10, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  br label %44

60:                                               ; preds = %44
  %61 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @pte_unmap_unlock(i32* %63, i32* %64)
  br label %66

66:                                               ; preds = %60, %37, %28, %19
  ret void
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i32 @pte_update(%struct.mm_struct*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
