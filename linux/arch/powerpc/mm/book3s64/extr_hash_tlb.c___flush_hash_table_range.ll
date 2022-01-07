; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_tlb.c___flush_hash_table_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_tlb.c___flush_hash_table_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_hash_table_range(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = call i64 @_ALIGN_DOWN(i64 %12, i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = call i64 @_ALIGN_UP(i64 %15, i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %28

28:                                               ; preds = %75, %3
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32* @find_current_mm_pte(i32 %35, i64 %36, i32* %7, i32* %8)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %75

41:                                               ; preds = %32
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @pte_val(i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @trace_hugepage_invalidate(i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %75

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @hpte_do_hugepage_flush(%struct.mm_struct* %62, i64 %63, i32* %64, i64 %65)
  br label %74

67:                                               ; preds = %57
  %68 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @hpte_need_flush(%struct.mm_struct* %68, i64 %69, i32* %70, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74, %56, %40
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %5, align 8
  br label %28

79:                                               ; preds = %28
  %80 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @local_irq_restore(i64 %81)
  ret void
}

declare dso_local i64 @_ALIGN_DOWN(i64, i64) #1

declare dso_local i64 @_ALIGN_UP(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i32* @find_current_mm_pte(i32, i64, i32*, i32*) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @trace_hugepage_invalidate(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hpte_do_hugepage_flush(%struct.mm_struct*, i64, i32*, i64) #1

declare dso_local i32 @hpte_need_flush(%struct.mm_struct*, i64, i32*, i64, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
