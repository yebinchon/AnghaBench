; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_dvma.c_dvma_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_dvma.c_dvma_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_KERNEL = common dso_local global i32 0, align 4
@ptelist = common dso_local global i64* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @dvma_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dvma_page(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to i64*
  %10 = load volatile i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to i64*
  store volatile i64 %11, i64* %13, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @virt_to_pfn(i64 %14)
  %16 = load i32, i32* @PAGE_KERNEL, align 4
  %17 = call i32 @pfn_pte(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @pte_val(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64*, i64** @ptelist, align 8
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, 1044480
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @sun3_put_pte(i64 %30, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64*, i64** @ptelist, align 8
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, 1044480
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  store i64 %33, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %2
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @PAGE_MASK, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = add i64 %41, %45
  ret i64 %46
}

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @virt_to_pfn(i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @sun3_put_pte(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
