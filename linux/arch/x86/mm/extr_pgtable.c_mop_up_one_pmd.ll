; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_mop_up_one_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_mop_up_one_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*)* @mop_up_one_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mop_up_one_pmd(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pgd_val(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @pgd_page_vaddr(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @pgd_clear(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @pgd_val(i32 %18)
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = call i32 @paravirt_release_pmd(i32 %21)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @pmd_free(%struct.mm_struct* %23, i32* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %27 = call i32 @mm_dec_nr_pmds(%struct.mm_struct* %26)
  br label %28

28:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i64 @pgd_page_vaddr(i32) #1

declare dso_local i32 @pgd_clear(i32*) #1

declare dso_local i32 @paravirt_release_pmd(i32) #1

declare dso_local i32 @pmd_free(%struct.mm_struct*, i32*) #1

declare dso_local i32 @mm_dec_nr_pmds(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
