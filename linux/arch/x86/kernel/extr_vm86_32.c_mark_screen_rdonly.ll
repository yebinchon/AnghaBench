; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_vm86_32.c_mark_screen_rdonly.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_vm86_32.c_mark_screen_rdonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @mark_screen_rdonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_screen_rdonly(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = call i32* @pgd_offset(%struct.mm_struct* %14, i32 655360)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @pgd_none_or_clear_bad(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %80

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @p4d_offset(i32* %21, i32 655360)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @p4d_none_or_clear_bad(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %80

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @pud_offset(i32* %28, i32 655360)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @pud_none_or_clear_bad(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %80

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @pmd_offset(i32* %35, i32 655360)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @pmd_trans_huge(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %43 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %42, i32 655360)
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %3, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @split_huge_pmd(%struct.vm_area_struct* %44, i32* %45, i32 655360)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @pmd_none_or_clear_bad(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %80

52:                                               ; preds = %47
  %53 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @pte_offset_map_lock(%struct.mm_struct* %53, i32* %54, i32 655360, i32** %4)
  store i32* %55, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %73, %52
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pte_present(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pte_wrprotect(i32 %67)
  %69 = call i32 @set_pte(i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @pte_unmap_unlock(i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %76, %51, %33, %26, %19
  %81 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %82 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %81, i32 0, i32 0
  %83 = call i32 @up_write(i32* %82)
  %84 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = mul nsw i32 32, %85
  %87 = add nsw i32 655360, %86
  %88 = load i32, i32* @PAGE_SHIFT, align 4
  %89 = call i32 @flush_tlb_mm_range(%struct.mm_struct* %84, i32 655360, i32 %87, i32 %88, i32 0)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i32) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32* @p4d_offset(i32*, i32) #1

declare dso_local i64 @p4d_none_or_clear_bad(i32*) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i32) #1

declare dso_local i32 @split_huge_pmd(%struct.vm_area_struct*, i32*, i32) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i32, i32**) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @flush_tlb_mm_range(%struct.mm_struct*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
