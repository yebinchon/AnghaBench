; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_pmd_populate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_pmd_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@SRMMU_REAL_PTRS_PER_PTE = common dso_local global i32 0, align 4
@SRMMU_ET_PTD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmd_populate(%struct.mm_struct* %0, %struct.TYPE_3__* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %9 = load %struct.page*, %struct.page** %6, align 8
  %10 = call i32 @page_to_pfn(%struct.page* %9)
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = sub nsw i32 %11, 4
  %13 = shl i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %39, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PTRS_PER_PTE, align 4
  %18 = load i32, i32* @SRMMU_REAL_PTRS_PER_PTE, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i64, i64* @SRMMU_ET_PTD, align 8
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %28, %29
  %31 = call i32 @__pte(i64 %30)
  %32 = call i32 @set_pte(i32* %27, i32 %31)
  %33 = load i32, i32* @SRMMU_REAL_PTRS_PER_PTE, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = lshr i64 %35, 4
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %15

42:                                               ; preds = %15
  ret void
}

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @__pte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
