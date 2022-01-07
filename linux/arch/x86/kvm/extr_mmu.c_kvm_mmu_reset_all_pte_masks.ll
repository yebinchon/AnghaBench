; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_reset_all_pte_masks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_reset_all_pte_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@shadow_user_mask = common dso_local global i64 0, align 8
@shadow_accessed_mask = common dso_local global i64 0, align 8
@shadow_dirty_mask = common dso_local global i64 0, align 8
@shadow_nx_mask = common dso_local global i64 0, align 8
@shadow_x_mask = common dso_local global i64 0, align 8
@shadow_mmio_mask = common dso_local global i64 0, align 8
@shadow_present_mask = common dso_local global i64 0, align 8
@shadow_acc_track_mask = common dso_local global i64 0, align 8
@shadow_phys_bits = common dso_local global i32 0, align 4
@shadow_nonpresent_or_rsvd_mask = common dso_local global i64 0, align 8
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@shadow_nonpresent_or_rsvd_mask_len = common dso_local global i32 0, align 4
@X86_BUG_L1TF = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@shadow_nonpresent_or_rsvd_lower_gfn_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_mmu_reset_all_pte_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mmu_reset_all_pte_masks() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @shadow_user_mask, align 8
  store i64 0, i64* @shadow_accessed_mask, align 8
  store i64 0, i64* @shadow_dirty_mask, align 8
  store i64 0, i64* @shadow_nx_mask, align 8
  store i64 0, i64* @shadow_x_mask, align 8
  store i64 0, i64* @shadow_mmio_mask, align 8
  store i64 0, i64* @shadow_present_mask, align 8
  store i64 0, i64* @shadow_acc_track_mask, align 8
  %2 = call i32 (...) @kvm_get_shadow_phys_bits()
  store i32 %2, i32* @shadow_phys_bits, align 4
  store i64 0, i64* @shadow_nonpresent_or_rsvd_mask, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %5 = load i32, i32* @shadow_nonpresent_or_rsvd_mask_len, align 4
  %6 = sub nsw i32 52, %5
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %10 = load i32, i32* @shadow_nonpresent_or_rsvd_mask_len, align 4
  %11 = sub nsw i32 %9, %10
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %13 = sub nsw i32 %12, 1
  %14 = call i64 @rsvd_bits(i32 %11, i32 %13)
  store i64 %14, i64* @shadow_nonpresent_or_rsvd_mask, align 8
  %15 = load i32, i32* @shadow_nonpresent_or_rsvd_mask_len, align 4
  %16 = load i32, i32* %1, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @X86_BUG_L1TF, align 4
  %20 = call i32 @boot_cpu_has_bug(i32 %19)
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load i32, i32* %1, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = call i32 @GENMASK_ULL(i32 %24, i32 %25)
  store i32 %26, i32* @shadow_nonpresent_or_rsvd_lower_gfn_mask, align 4
  ret void
}

declare dso_local i32 @kvm_get_shadow_phys_bits(...) #1

declare dso_local i64 @rsvd_bits(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @boot_cpu_has_bug(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
