; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_book3e_hugetlbpage.c_book3e_hugetlb_preload.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_book3e_hugetlbpage.c_book3e_hugetlb_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPRN_MAS0 = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i64 0, align 8
@PTE_WIMGE_SHIFT = common dso_local global i64 0, align 8
@MAS2_WIMGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PTE_BAP_SHIFT = common dso_local global i64 0, align 8
@MAS3_BAP_MASK = common dso_local global i64 0, align 8
@MAS3_SW = common dso_local global i64 0, align 8
@MAS3_UW = common dso_local global i64 0, align 8
@SPRN_MAS1 = common dso_local global i32 0, align 4
@SPRN_MAS2 = common dso_local global i32 0, align 4
@MMU_FTR_USE_PAIRED_MAS = common dso_local global i32 0, align 4
@SPRN_MAS7_MAS3 = common dso_local global i32 0, align 4
@MMU_FTR_BIG_PHYS = common dso_local global i32 0, align 4
@SPRN_MAS7 = common dso_local global i32 0, align 4
@SPRN_MAS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i32)* @book3e_hugetlb_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @book3e_hugetlb_preload(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @is_kernel_addr(i64 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %132

21:                                               ; preds = %3
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  store %struct.mm_struct* %24, %struct.mm_struct** %14, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = call i64 @vma_mmu_pagesize(%struct.vm_area_struct* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @__ilog2(i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = sub i64 %29, 10
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @local_irq_save(i64 %31)
  %33 = call i32 (...) @book3e_tlb_lock()
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @book3e_tlb_exists(i64 %34, i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %21
  %43 = call i32 (...) @book3e_tlb_unlock()
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  br label %132

46:                                               ; preds = %21
  %47 = call i32 (...) @tlb1_next()
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* @SPRN_MAS0, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @MAS0_ESEL(i32 %49)
  %51 = call i64 @MAS0_TLBSEL(i32 1)
  %52 = or i64 %50, %51
  %53 = call i32 @mtspr(i32 %48, i64 %52)
  %54 = load i64, i64* @MAS1_VALID, align 8
  %55 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @MAS1_TID(i32 %58)
  %60 = or i64 %54, %59
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @MAS1_TSIZE(i64 %61)
  %63 = or i64 %60, %62
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %12, align 8
  %66 = shl i64 1, %65
  %67 = sub i64 %66, 1
  %68 = xor i64 %67, -1
  %69 = and i64 %64, %68
  store i64 %69, i64* %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @pte_val(i32 %70)
  %72 = load i64, i64* @PTE_WIMGE_SHIFT, align 8
  %73 = lshr i64 %71, %72
  %74 = load i64, i64* @MAS2_WIMGE_MASK, align 8
  %75 = and i64 %73, %74
  %76 = load i64, i64* %8, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @pte_pfn(i32 %78)
  %80 = load i64, i64* @PAGE_SHIFT, align 8
  %81 = shl i64 %79, %80
  store i64 %81, i64* %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @pte_val(i32 %82)
  %84 = load i64, i64* @PTE_BAP_SHIFT, align 8
  %85 = lshr i64 %83, %84
  %86 = load i64, i64* @MAS3_BAP_MASK, align 8
  %87 = and i64 %85, %86
  %88 = load i64, i64* %9, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @pte_dirty(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %46
  %94 = load i64, i64* @MAS3_SW, align 8
  %95 = load i64, i64* @MAS3_UW, align 8
  %96 = or i64 %94, %95
  %97 = xor i64 %96, -1
  %98 = load i64, i64* %9, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %93, %46
  %101 = load i32, i32* @SPRN_MAS1, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @mtspr(i32 %101, i64 %102)
  %104 = load i32, i32* @SPRN_MAS2, align 4
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @mtspr(i32 %104, i64 %105)
  %107 = load i32, i32* @MMU_FTR_USE_PAIRED_MAS, align 4
  %108 = call i64 @mmu_has_feature(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load i32, i32* @SPRN_MAS7_MAS3, align 4
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @mtspr(i32 %111, i64 %112)
  br label %128

114:                                              ; preds = %100
  %115 = load i32, i32* @MMU_FTR_BIG_PHYS, align 4
  %116 = call i64 @mmu_has_feature(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* @SPRN_MAS7, align 4
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @upper_32_bits(i64 %120)
  %122 = call i32 @mtspr(i32 %119, i64 %121)
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i32, i32* @SPRN_MAS3, align 4
  %125 = load i64, i64* %9, align 8
  %126 = call i64 @lower_32_bits(i64 %125)
  %127 = call i32 @mtspr(i32 %124, i64 %126)
  br label %128

128:                                              ; preds = %123, %110
  call void asm sideeffect "tlbwe", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %129 = call i32 (...) @book3e_tlb_unlock()
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @local_irq_restore(i64 %130)
  br label %132

132:                                              ; preds = %128, %42, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i64 @vma_mmu_pagesize(%struct.vm_area_struct*) #1

declare dso_local i64 @__ilog2(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @book3e_tlb_lock(...) #1

declare dso_local i32 @book3e_tlb_exists(i64, i32) #1

declare dso_local i32 @book3e_tlb_unlock(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @tlb1_next(...) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i64 @MAS0_ESEL(i32) #1

declare dso_local i64 @MAS0_TLBSEL(i32) #1

declare dso_local i64 @MAS1_TID(i32) #1

declare dso_local i64 @MAS1_TSIZE(i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i64 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2757}
