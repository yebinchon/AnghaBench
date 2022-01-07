; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_huge_ptep_get_and_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_huge_ptep_get_and_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PUD_SIZE = common dso_local global i64 0, align 8
@PUD_SHIFT = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i32 0, align 4
@HPAGE_SIZE = common dso_local global i64 0, align 8
@REAL_HPAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huge_ptep_get_and_clear(%struct.mm_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = call i64 @huge_tte_to_size(i32 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @PUD_SIZE, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @PUD_SHIFT, align 4
  store i32 %22, i32* %10, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @PMD_SIZE, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @PMD_SHIFT, align 4
  store i32 %28, i32* %10, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @pte_none(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @huge_tte_to_shift(i32 %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @pte_present(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 %59, 1
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %5, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %74, %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = call i32 @__pte(i64 0)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @maybe_tlb_batch_add(%struct.mm_struct* %78, i64 %79, i32* %80, i32 %81, i32 0, i32 %82)
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @HPAGE_SIZE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %77
  %88 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @REAL_HPAGE_SIZE, align 8
  %91 = add i64 %89, %90
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @maybe_tlb_batch_add(%struct.mm_struct* %88, i64 %91, i32* %92, i32 %93, i32 0, i32 %94)
  br label %96

96:                                               ; preds = %87, %77
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i64 @huge_tte_to_size(i32) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @huge_tte_to_shift(i32) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i32 @maybe_tlb_batch_add(%struct.mm_struct*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
