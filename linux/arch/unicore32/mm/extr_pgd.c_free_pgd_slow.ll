; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_pgd.c_free_pgd_slow.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_pgd.c_free_pgd_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pgd_slow(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @pmd_off(i32* %11, i32 0)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @pmd_none(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %45

18:                                               ; preds = %10
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @pmd_bad(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pmd_ERROR(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @pmd_clear(i32* %27)
  br label %45

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pmd_pgtable(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @pmd_clear(i32* %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pte_free(%struct.mm_struct* %35, i32 %36)
  %38 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %39 = call i32 @mm_dec_nr_ptes(%struct.mm_struct* %38)
  %40 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @pmd_free(%struct.mm_struct* %40, i32* %41)
  %43 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %44 = call i32 @mm_dec_nr_pmds(%struct.mm_struct* %43)
  br label %45

45:                                               ; preds = %29, %23, %17
  %46 = load i32*, i32** %4, align 8
  %47 = ptrtoint i32* %46 to i64
  %48 = call i32 @free_pages(i64 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %9
  ret void
}

declare dso_local i32* @pmd_off(i32*, i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i32 @pmd_ERROR(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @pmd_pgtable(i32) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32) #1

declare dso_local i32 @mm_dec_nr_ptes(%struct.mm_struct*) #1

declare dso_local i32 @pmd_free(%struct.mm_struct*, i32*) #1

declare dso_local i32 @mm_dec_nr_pmds(%struct.mm_struct*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
