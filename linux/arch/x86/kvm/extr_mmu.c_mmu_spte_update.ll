; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mmu_spte_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_spte_update(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @mmu_spte_update_no_track(i32* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @is_shadow_present_pte(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @spte_can_locklessly_be_made_writable(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @is_writable_pte(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %19, %15
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @is_accessed_spte(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @is_accessed_spte(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @spte_to_pfn(i32 %33)
  %35 = call i32 @kvm_set_pfn_accessed(i32 %34)
  br label %36

36:                                               ; preds = %32, %28, %24
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @is_dirty_spte(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @is_dirty_spte(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @spte_to_pfn(i32 %45)
  %47 = call i32 @kvm_set_pfn_dirty(i32 %46)
  br label %48

48:                                               ; preds = %44, %40, %36
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mmu_spte_update_no_track(i32*, i32) #1

declare dso_local i32 @is_shadow_present_pte(i32) #1

declare dso_local i64 @spte_can_locklessly_be_made_writable(i32) #1

declare dso_local i32 @is_writable_pte(i32) #1

declare dso_local i64 @is_accessed_spte(i32) #1

declare dso_local i32 @kvm_set_pfn_accessed(i32) #1

declare dso_local i32 @spte_to_pfn(i32) #1

declare dso_local i64 @is_dirty_spte(i32) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
