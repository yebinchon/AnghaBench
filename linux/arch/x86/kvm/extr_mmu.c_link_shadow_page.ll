; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_link_shadow_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_link_shadow_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i64, i64, i32 }

@VMX_EPT_WRITABLE_MASK = common dso_local global i32 0, align 4
@PT_WRITABLE_MASK = common dso_local global i32 0, align 4
@shadow_present_mask = common dso_local global i32 0, align 4
@shadow_user_mask = common dso_local global i32 0, align 4
@shadow_x_mask = common dso_local global i32 0, align 4
@shadow_me_mask = common dso_local global i32 0, align 4
@SPTE_AD_DISABLED_MASK = common dso_local global i32 0, align 4
@shadow_accessed_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32*, %struct.kvm_mmu_page*)* @link_shadow_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_shadow_page(%struct.kvm_vcpu* %0, i32* %1, %struct.kvm_mmu_page* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.kvm_mmu_page* %2, %struct.kvm_mmu_page** %6, align 8
  %8 = load i32, i32* @VMX_EPT_WRITABLE_MASK, align 4
  %9 = load i32, i32* @PT_WRITABLE_MASK, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @__pa(i32 %15)
  %17 = load i32, i32* @shadow_present_mask, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PT_WRITABLE_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @shadow_user_mask, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @shadow_x_mask, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @shadow_me_mask, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %28 = call i64 @sp_ad_disabled(%struct.kvm_mmu_page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @SPTE_AD_DISABLED_MASK, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @shadow_accessed_mask, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mmu_spte_set(i32* %39, i32 %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @mmu_page_add_parent_pte(%struct.kvm_vcpu* %42, %struct.kvm_mmu_page* %43, i32* %44)
  %46 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %47 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %38
  %51 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %52 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %38
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @mark_unsync(i32* %56)
  br label %58

58:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i64 @sp_ad_disabled(%struct.kvm_mmu_page*) #1

declare dso_local i32 @mmu_spte_set(i32*, i32) #1

declare dso_local i32 @mmu_page_add_parent_pte(%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32*) #1

declare dso_local i32 @mark_unsync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
