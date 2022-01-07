; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_free_hugepd_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_free_hugepd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@CONFIG_PPC_8xx = common dso_local global i32 0, align 4
@PTE_INDEX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i32*, i32, i64, i64, i64, i64)* @free_hugepd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hugepd_range(%struct.mmu_gather* %0, i32* %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.mmu_gather*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @hugepd_page(i32 %21)
  store i32* %22, i32** %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = sub i64 %25, 1
  %27 = xor i64 %26, -1
  store i64 %27, i64* %17, align 8
  store i32 1, i32* %18, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hugepd_shift(i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %7
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub i32 %35, %36
  %38 = shl i32 1, %37
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %34, %7
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* %11, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %105

47:                                               ; preds = %39
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %14, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %105

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i64, i64* %12, align 8
  %60 = sub i64 %59, 1
  %61 = load i64, i64* %14, align 8
  %62 = sub i64 %61, 1
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %105

65:                                               ; preds = %58
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %73, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = call i32 @__hugepd(i32 0)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  br label %66

78:                                               ; preds = %66
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp uge i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @hugepd_free(%struct.mmu_gather* %83, i32* %84)
  br label %105

86:                                               ; preds = %78
  %87 = load i32, i32* @CONFIG_PPC_8xx, align 4
  %88 = call i64 @IS_ENABLED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* @PTE_INDEX_SIZE, align 4
  %94 = call i32 @get_hugepd_cache_index(i32 %93)
  %95 = call i32 @pgtable_free_tlb(%struct.mmu_gather* %91, i32* %92, i32 %94)
  br label %104

96:                                               ; preds = %86
  %97 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %19, align 4
  %101 = sub i32 %99, %100
  %102 = call i32 @get_hugepd_cache_index(i32 %101)
  %103 = call i32 @pgtable_free_tlb(%struct.mmu_gather* %97, i32* %98, i32 %102)
  br label %104

104:                                              ; preds = %96, %90
  br label %105

105:                                              ; preds = %46, %56, %64, %104, %82
  ret void
}

declare dso_local i32* @hugepd_page(i32) #1

declare dso_local i32 @hugepd_shift(i32) #1

declare dso_local i32 @__hugepd(i32) #1

declare dso_local i32 @hugepd_free(%struct.mmu_gather*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pgtable_free_tlb(%struct.mmu_gather*, i32*, i32) #1

declare dso_local i32 @get_hugepd_cache_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
