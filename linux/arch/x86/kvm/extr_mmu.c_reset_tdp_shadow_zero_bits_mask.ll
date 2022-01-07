; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_reset_tdp_shadow_zero_bits_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_reset_tdp_shadow_zero_bits_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, %struct.rsvd_bits_validate }
%struct.rsvd_bits_validate = type { i32** }

@shadow_phys_bits = common dso_local global i32 0, align 4
@X86_FEATURE_GBPAGES = common dso_local global i32 0, align 4
@shadow_me_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*)* @reset_tdp_shadow_zero_bits_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_tdp_shadow_zero_bits_mask(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mmu*, align 8
  %5 = alloca %struct.rsvd_bits_validate*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %4, align 8
  %7 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %7, i32 0, i32 1
  store %struct.rsvd_bits_validate* %8, %struct.rsvd_bits_validate** %5, align 8
  %9 = call i64 (...) @boot_cpu_is_amd()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %5, align 8
  %14 = load i32, i32* @shadow_phys_bits, align 4
  %15 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @X86_FEATURE_GBPAGES, align 4
  %19 = call i32 @boot_cpu_has(i32 %18)
  %20 = call i32 @__reset_rsvds_bits_mask(%struct.kvm_vcpu* %12, %struct.rsvd_bits_validate* %13, i32 %14, i32 %17, i32 0, i32 %19, i32 1, i32 1)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %5, align 8
  %23 = load i32, i32* @shadow_phys_bits, align 4
  %24 = call i32 @__reset_rsvds_bits_mask_ept(%struct.rsvd_bits_validate* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %21, %11
  %26 = load i32, i32* @shadow_me_mask, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %62

29:                                               ; preds = %25
  %30 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %37, %29
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i32, i32* @shadow_me_mask, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %5, align 8
  %41 = getelementptr inbounds %struct.rsvd_bits_validate, %struct.rsvd_bits_validate* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %39
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @shadow_me_mask, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %5, align 8
  %53 = getelementptr inbounds %struct.rsvd_bits_validate, %struct.rsvd_bits_validate* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %51
  store i32 %61, i32* %59, align 4
  br label %33

62:                                               ; preds = %28, %33
  ret void
}

declare dso_local i64 @boot_cpu_is_amd(...) #1

declare dso_local i32 @__reset_rsvds_bits_mask(%struct.kvm_vcpu*, %struct.rsvd_bits_validate*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @__reset_rsvds_bits_mask_ept(%struct.rsvd_bits_validate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
