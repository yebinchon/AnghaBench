; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_pte_pfn_to_mfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_pte_pfn_to_mfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PTE_PFN_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PTE_FLAGS_MASK = common dso_local global i32 0, align 4
@INVALID_P2M_ENTRY = common dso_local global i64 0, align 8
@FOREIGN_FRAME_BIT = common dso_local global i64 0, align 8
@IDENTITY_FRAME_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pte_pfn_to_mfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_pfn_to_mfn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @_PAGE_PRESENT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @PTE_PFN_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @PTE_FLAGS_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @__pfn_to_mfn(i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @INVALID_P2M_ENTRY, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %36

29:                                               ; preds = %10
  %30 = load i64, i64* @FOREIGN_FRAME_BIT, align 8
  %31 = load i64, i64* @IDENTITY_FRAME_BIT, align 8
  %32 = or i64 %30, %31
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %1
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @__pfn_to_mfn(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
