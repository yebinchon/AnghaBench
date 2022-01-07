; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c_huge_pte_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c_huge_pte_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_offset(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32* @pgd_offset(%struct.mm_struct* %12, i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @pgd_present(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32* @p4d_offset(i32* %20, i64 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @p4d_present(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32* @pud_offset(i32* %28, i64 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pud_present(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @pud_large(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  store i32* %41, i32** %4, align 8
  br label %50

42:                                               ; preds = %35
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32* @pmd_offset(i32* %43, i64 %44)
  store i32* %45, i32** %11, align 8
  br label %46

46:                                               ; preds = %42, %27
  br label %47

47:                                               ; preds = %46, %19
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %4, align 8
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_present(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
