; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_huge_ptep_set_wrprotect.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_huge_ptep_set_wrprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huge_ptep_set_wrprotect(%struct.mm_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  %17 = call i32 @pte_cont(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ptep_set_wrprotect(%struct.mm_struct* %20, i64 %21, i32* %22)
  br label %67

24:                                               ; preds = %3
  %25 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @find_num_contig(%struct.mm_struct* %25, i64 %26, i32* %27, i64* %12)
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @get_clear_flush(%struct.mm_struct* %32, i64 %33, i32* %34, i64 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @pte_wrprotect(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @pte_pgprot(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @pte_pfn(i32 %42)
  store i64 %43, i64* %7, align 8
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %56, %24
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @pfn_pte(i64 %52, i32 %53)
  %55 = call i32 @set_pte_at(%struct.mm_struct* %49, i64 %50, i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %44

67:                                               ; preds = %19, %44
  ret void
}

declare dso_local i32 @pte_cont(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @ptep_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @find_num_contig(%struct.mm_struct*, i64, i32*, i64*) #1

declare dso_local i32 @get_clear_flush(%struct.mm_struct*, i64, i32*, i64, i32) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_pgprot(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
