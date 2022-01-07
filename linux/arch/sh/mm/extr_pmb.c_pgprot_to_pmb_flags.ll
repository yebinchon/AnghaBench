; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pgprot_to_pmb_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pgprot_to_pmb_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_CACHABLE = common dso_local global i32 0, align 4
@PMB_C = common dso_local global i64 0, align 8
@_PAGE_WT = common dso_local global i32 0, align 4
@PMB_WT = common dso_local global i64 0, align 8
@PMB_UB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @pgprot_to_pmb_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pgprot_to_pmb_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pgprot_val(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @_PAGE_CACHABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i64, i64* @PMB_C, align 8
  %13 = load i64, i64* %3, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @_PAGE_WT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* @PMB_WT, align 8
  %22 = load i64, i64* @PMB_UB, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i32 @pgprot_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
