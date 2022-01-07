; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_pte_mfn_to_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_pte_mfn_to_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@XEN_PTE_MFN_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PTE_FLAGS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pte_mfn_to_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_mfn_to_pfn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @_PAGE_PRESENT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @XEN_PTE_MFN_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @mfn_to_pfn(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PTE_FLAGS_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, -1
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @_PAGE_PRESENT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %10
  %33 = load i64, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @mfn_to_pfn(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
