; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_set_huge_pte_at.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_set_huge_pte_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_huge_pte_at(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
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
  %16 = call i32 @pte_present(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @pte_cont(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @set_pte_at(%struct.mm_struct* %25, i64 %26, i32* %27, i32 %28)
  br label %71

30:                                               ; preds = %4
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @find_num_contig(%struct.mm_struct* %31, i64 %32, i32* %33, i64* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @pte_pfn(i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pte_pgprot(i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @clear_flush(%struct.mm_struct* %42, i64 %43, i32* %44, i64 %45, i32 %46)
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %60, %30
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @pfn_pte(i64 %56, i32 %57)
  %59 = call i32 @set_pte_at(%struct.mm_struct* %53, i64 %54, i32* %55, i32 %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %12, align 8
  br label %48

71:                                               ; preds = %24, %48
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_cont(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @find_num_contig(%struct.mm_struct*, i64, i32*, i64*) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pte_pgprot(i32) #1

declare dso_local i32 @clear_flush(%struct.mm_struct*, i64, i32*, i64, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
