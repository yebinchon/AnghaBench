; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_update_no_track.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_spte_update_no_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mmu_spte_update_no_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_spte_update_no_track(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @is_shadow_present_pte(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @is_shadow_present_pte(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mmu_spte_set(i32* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @spte_has_volatile_bits(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @__update_clear_spte_fast(i32* %28, i32 %29)
  br label %35

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @__update_clear_spte_slow(i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @spte_to_pfn(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @spte_to_pfn(i32 %38)
  %40 = icmp ne i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_shadow_present_pte(i32) #1

declare dso_local i32 @mmu_spte_set(i32*, i32) #1

declare dso_local i32 @spte_has_volatile_bits(i32) #1

declare dso_local i32 @__update_clear_spte_fast(i32*, i32) #1

declare dso_local i32 @__update_clear_spte_slow(i32*, i32) #1

declare dso_local i64 @spte_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
