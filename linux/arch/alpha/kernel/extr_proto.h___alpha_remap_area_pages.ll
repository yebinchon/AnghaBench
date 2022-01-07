; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_proto.h___alpha_remap_area_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_proto.h___alpha_remap_area_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_VALID = common dso_local global i64 0, align 8
@_PAGE_ASM = common dso_local global i64 0, align 8
@_PAGE_KRE = common dso_local global i64 0, align 8
@_PAGE_KWE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @__alpha_remap_area_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__alpha_remap_area_pages(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* @_PAGE_VALID, align 8
  %11 = load i64, i64* @_PAGE_ASM, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @_PAGE_KRE, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @_PAGE_KWE, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* %8, align 8
  %18 = or i64 %16, %17
  %19 = call i32 @__pgprot(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ioremap_page_range(i64 %20, i64 %23, i64 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i32 @ioremap_page_range(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
