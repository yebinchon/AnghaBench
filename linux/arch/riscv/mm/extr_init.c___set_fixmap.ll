; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/mm/extr_init.c___set_fixmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/mm/extr_init.c___set_fixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIX_HOLE = common dso_local global i32 0, align 4
@__end_of_fixed_addresses = common dso_local global i32 0, align 4
@fixmap_pte = common dso_local global i32* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_fixmap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @__fix_to_virt(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @FIX_HOLE, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @__end_of_fixed_addresses, align 4
  %17 = icmp uge i32 %15, %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32*, i32** @fixmap_pte, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @pte_index(i64 %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @pgprot_val(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pfn_pte(i32 %33, i32 %34)
  %36 = call i32 @set_pte(i32* %30, i32 %35)
  br label %43

37:                                               ; preds = %18
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @pte_clear(i32* @init_mm, i64 %38, i32* %39)
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @local_flush_tlb_page(i64 %41)
  br label %43

43:                                               ; preds = %37, %29
  ret void
}

declare dso_local i64 @__fix_to_virt(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pte_index(i64) #1

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @pte_clear(i32*, i64, i32*) #1

declare dso_local i32 @local_flush_tlb_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
