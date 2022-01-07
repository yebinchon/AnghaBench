; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_slow_virt_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_slow_virt_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PUD_PAGE_MASK = common dso_local global i64 0, align 8
@PMD_PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @slow_virt_to_phys(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32* @lookup_address(i64 %10, i32* %6)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %40 [
    i32 129, label %18
    i32 128, label %29
  ]

18:                                               ; preds = %1
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pud_pfn(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @PUD_PAGE_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %5, align 8
  br label %51

29:                                               ; preds = %1
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pmd_pfn(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = shl i64 %33, %34
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @PMD_PAGE_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  store i64 %39, i64* %5, align 8
  br label %51

40:                                               ; preds = %1
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pte_pfn(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = shl i64 %44, %45
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @PAGE_MASK, align 8
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %40, %29, %18
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = or i64 %52, %53
  ret i64 %54
}

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pud_pfn(i32) #1

declare dso_local i32 @pmd_pfn(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
