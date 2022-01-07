; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_page_table_free_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_page_table_free_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_table_free_rcu(%struct.mmu_gather* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.mmu_gather*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %12 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %7, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = call i32 @__pa(i64* %14)
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = lshr i32 %15, %16
  %18 = call %struct.page* @pfn_to_page(i32 %17)
  store %struct.page* %18, %struct.page** %8, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %20 = call i64 @mm_alloc_pgste(%struct.mm_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @gmap_unlink(%struct.mm_struct* %23, i64* %24, i64 %25)
  %27 = load i64*, i64** %5, align 8
  %28 = call i32 @__pa(i64* %27)
  %29 = or i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** %5, align 8
  %32 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = call i32 @tlb_remove_table(%struct.mmu_gather* %32, i64* %33)
  br label %88

35:                                               ; preds = %3
  %36 = load i64*, i64** %5, align 8
  %37 = call i32 @__pa(i64* %36)
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = load i32, i32* @PTRS_PER_PTE, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = udiv i64 %41, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.page*, %struct.page** %8, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 1
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 24
  %55 = shl i32 17, %54
  %56 = call i32 @atomic_xor_bits(i32* %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = lshr i32 %57, 24
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 3
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %35
  %63 = load %struct.page*, %struct.page** %8, align 8
  %64 = getelementptr inbounds %struct.page, %struct.page* %63, i32 0, i32 0
  %65 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %64, i32* %67)
  br label %73

69:                                               ; preds = %35
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = getelementptr inbounds %struct.page, %struct.page* %70, i32 0, i32 0
  %72 = call i32 @list_del(i32* %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %75 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load i64*, i64** %5, align 8
  %79 = call i32 @__pa(i64* %78)
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 1, %80
  %82 = or i32 %79, %81
  %83 = zext i32 %82 to i64
  %84 = inttoptr i64 %83 to i64*
  store i64* %84, i64** %5, align 8
  %85 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = call i32 @tlb_remove_table(%struct.mmu_gather* %85, i64* %86)
  br label %88

88:                                               ; preds = %73, %22
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i64 @mm_alloc_pgste(%struct.mm_struct*) #1

declare dso_local i32 @gmap_unlink(%struct.mm_struct*, i64*, i64) #1

declare dso_local i32 @tlb_remove_table(%struct.mmu_gather*, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_xor_bits(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
