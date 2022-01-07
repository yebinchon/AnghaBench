; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_age.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shadow_accessed_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mmu_spte_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_spte_age(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @mmu_spte_get_lockless(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @is_accessed_spte(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @spte_ad_enabled(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* @shadow_accessed_mask, align 4
  %17 = call i64 @ffs(i32 %16)
  %18 = sub nsw i64 %17, 1
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to i64*
  %21 = call i32 @clear_bit(i64 %18, i64* %20)
  br label %36

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @is_writable_pte(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @spte_to_pfn(i32 %27)
  %29 = call i32 @kvm_set_pfn_dirty(i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mark_spte_for_access_track(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mmu_spte_update_no_track(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %15
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mmu_spte_get_lockless(i32*) #1

declare dso_local i32 @is_accessed_spte(i32) #1

declare dso_local i64 @spte_ad_enabled(i32) #1

declare dso_local i32 @clear_bit(i64, i64*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i64 @is_writable_pte(i32) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

declare dso_local i32 @spte_to_pfn(i32) #1

declare dso_local i32 @mark_spte_for_access_track(i32) #1

declare dso_local i32 @mmu_spte_update_no_track(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
