; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/kasan/extr_kasan_init_32.c_kasan_populate_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/kasan/extr_kasan_init_32.c_kasan_populate_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kasan_early_shadow_page = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @kasan_populate_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kasan_populate_pte(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @kasan_early_shadow_page, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @kasan_early_shadow_page, align 8
  %10 = call i32 @__pa(i64 %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PTRS_PER_PTE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @PHYS_PFN(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pfn_pte(i32 %19, i32 %20)
  %22 = call i32 @__set_pte_at(i32* @init_mm, i64 %16, i32* %17, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %3, align 8
  br label %11

28:                                               ; preds = %11
  ret void
}

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @__set_pte_at(i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @PHYS_PFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
