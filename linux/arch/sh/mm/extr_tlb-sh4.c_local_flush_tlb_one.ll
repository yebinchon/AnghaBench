; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh4.c_local_flush_tlb_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh4.c_local_flush_tlb_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMU_UTLB_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@MMU_PAGE_ASSOC_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_one(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @MMU_UTLB_ADDRESS_ARRAY, align 8
  %8 = load i64, i64* @MMU_PAGE_ASSOC_BIT, align 8
  %9 = or i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = call i32 (...) @jump_to_uncached()
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @__raw_writel(i64 %14, i64 %15)
  %17 = call i32 (...) @back_to_cached()
  ret void
}

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @back_to_cached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
