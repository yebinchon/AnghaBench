; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_pgtable.c_pgtable_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_pgtable.c_pgtable_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"pgd_cache\00", align 1
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@PTE_MAGNITUDE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SLAB_PANIC = common dso_local global i32 0, align 4
@pgd_ctor = common dso_local global i32* null, align 8
@pgd_cachep = common dso_local global i8* null, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@pmd_cachep = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgtable_cache_init() #0 {
  %1 = load i32, i32* @PTRS_PER_PGD, align 4
  %2 = load i32, i32* @PTE_MAGNITUDE, align 4
  %3 = shl i32 1, %2
  %4 = mul nsw i32 %1, %3
  %5 = load i32, i32* @PAGE_SIZE, align 4
  %6 = load i32, i32* @SLAB_PANIC, align 4
  %7 = load i32*, i32** @pgd_ctor, align 8
  %8 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32* %7)
  store i8* %8, i8** @pgd_cachep, align 8
  ret void
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
