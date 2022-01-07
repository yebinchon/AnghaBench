; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_get_clear_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_get_clear_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i32*, i64, i64)* @get_clear_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clear_flush(%struct.mm_struct* %0, i64 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vm_area_struct, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @huge_ptep_get(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @pte_valid(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %22

22:                                               ; preds = %45, %5
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @ptep_get_and_clear(%struct.mm_struct* %27, i64 %28, i32* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @pte_dirty(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @pte_mkdirty(i32 %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @pte_young(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @pte_mkyoung(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  br label %22

53:                                               ; preds = %22
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %58 = call i32 @TLB_FLUSH_VMA(%struct.mm_struct* %57, i32 0)
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @flush_tlb_range(%struct.vm_area_struct* %16, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %53
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i32 @pte_valid(i32) #1

declare dso_local i32 @ptep_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i64 @pte_young(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i32 @TLB_FLUSH_VMA(%struct.mm_struct*, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
