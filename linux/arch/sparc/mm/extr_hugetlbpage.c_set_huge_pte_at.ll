; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_set_huge_pte_at.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_set_huge_pte_at.c"
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
define dso_local void @set_huge_pte_at(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @huge_tte_to_size(i32 %15)
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @PUD_SIZE, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @PUD_SHIFT, align 4
  store i32 %22, i32* %11, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @PMD_SIZE, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @PMD_SHIFT, align 4
  store i32 %28, i32* %11, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @pte_present(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @pte_present(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %42, %32
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %54, 1
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %6, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @pte_none(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  br label %69

66:                                               ; preds = %53
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @huge_tte_to_shift(i32 %67)
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ %65, %64 ], [ %68, %66 ]
  store i32 %70, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %71

71:                                               ; preds = %88, %69
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @pte_val(i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = shl i64 %79, %81
  %83 = add i64 %78, %82
  %84 = call i32 @__pte(i64 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %71

91:                                               ; preds = %71
  %92 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @maybe_tlb_batch_add(%struct.mm_struct* %92, i64 %93, i32* %94, i32 %95, i32 0, i32 %96)
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @HPAGE_SIZE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @REAL_HPAGE_SIZE, align 8
  %105 = add i64 %103, %104
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @maybe_tlb_batch_add(%struct.mm_struct* %102, i64 %105, i32* %106, i32 %107, i32 0, i32 %108)
  br label %110

110:                                              ; preds = %101, %91
  ret void
}

declare dso_local i64 @huge_tte_to_size(i32) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @huge_tte_to_shift(i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @maybe_tlb_batch_add(%struct.mm_struct*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
