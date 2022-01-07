; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mm-nds32.c_pgd_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mm-nds32.c_pgd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@NR_PAGETABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgd_free(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pmd_none(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %47

17:                                               ; preds = %10
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @pmd_bad(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pmd_ERROR(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @pmd_clear(i32* %26)
  br label %47

28:                                               ; preds = %17
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.page* @pmd_page(i32 %30)
  store %struct.page* %31, %struct.page** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @pmd_clear(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = bitcast i32* %34 to i64*
  %36 = call i32 @virt_to_page(i64* %35)
  %37 = load i32, i32* @NR_PAGETABLE, align 4
  %38 = call i32 @dec_zone_page_state(i32 %36, i32 %37)
  %39 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i32 @pte_free(%struct.mm_struct* %39, %struct.page* %40)
  %42 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %43 = call i32 @mm_dec_nr_ptes(%struct.mm_struct* %42)
  %44 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @pmd_free(%struct.mm_struct* %44, i32* %45)
  br label %47

47:                                               ; preds = %28, %22, %16
  %48 = load i32*, i32** %4, align 8
  %49 = ptrtoint i32* %48 to i64
  %50 = call i32 @free_pages(i64 %49, i32 0)
  br label %51

51:                                               ; preds = %47, %9
  ret void
}

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i32 @pmd_ERROR(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @dec_zone_page_state(i32, i32) #1

declare dso_local i32 @virt_to_page(i64*) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, %struct.page*) #1

declare dso_local i32 @mm_dec_nr_ptes(%struct.mm_struct*) #1

declare dso_local i32 @pmd_free(%struct.mm_struct*, i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
