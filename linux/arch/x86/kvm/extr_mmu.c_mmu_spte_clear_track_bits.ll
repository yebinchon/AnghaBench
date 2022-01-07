; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_clear_track_bits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_clear_track_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mmu_spte_clear_track_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_spte_clear_track_bits(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @spte_has_volatile_bits(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @__update_clear_spte_fast(i32* %12, i64 0)
  br label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @__update_clear_spte_slow(i32* %15, i64 0)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @is_shadow_present_pte(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @spte_to_pfn(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @kvm_is_reserved_pfn(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pfn_to_page(i32 %29)
  %31 = call i32 @page_count(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ false, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @is_accessed_spte(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @kvm_set_pfn_accessed(i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @is_dirty_spte(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @kvm_set_pfn_dirty(i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @spte_has_volatile_bits(i32) #1

declare dso_local i32 @__update_clear_spte_fast(i32*, i64) #1

declare dso_local i32 @__update_clear_spte_slow(i32*, i64) #1

declare dso_local i32 @is_shadow_present_pte(i32) #1

declare dso_local i32 @spte_to_pfn(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kvm_is_reserved_pfn(i32) #1

declare dso_local i32 @page_count(i32) #1

declare dso_local i32 @pfn_to_page(i32) #1

declare dso_local i64 @is_accessed_spte(i32) #1

declare dso_local i32 @kvm_set_pfn_accessed(i32) #1

declare dso_local i64 @is_dirty_spte(i32) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
