; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_reset.c_kvm_arm_setup_stage2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_reset.c_kvm_arm_setup_stage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VTCR_EL2_FLAGS = common dso_local global i32 0, align 4
@KVM_VM_TYPE_ARM_IPA_SIZE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@kvm_ipa_limit = common dso_local global i32 0, align 4
@KVM_PHYS_SHIFT = common dso_local global i32 0, align 4
@SYS_ID_AA64MMFR0_EL1 = common dso_local global i32 0, align 4
@ID_AA64MMFR0_PARANGE_MAX = common dso_local global i32 0, align 4
@VTCR_EL2_PS_SHIFT = common dso_local global i32 0, align 4
@VTCR_EL2_HA = common dso_local global i32 0, align 4
@VTCR_EL2_VS_16BIT = common dso_local global i32 0, align 4
@VTCR_EL2_VS_8BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arm_setup_stage2(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @VTCR_EL2_FLAGS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @KVM_VM_TYPE_ARM_IPA_SIZE_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @KVM_VM_TYPE_ARM_IPA_SIZE(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @kvm_ipa_limit, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %28
  br label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @KVM_PHYS_SHIFT, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = load i32, i32* @SYS_ID_AA64MMFR0_EL1, align 4
  %39 = call i32 @read_sanitised_ftr_reg(i32 %38)
  %40 = and i32 %39, 7
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ID_AA64MMFR0_PARANGE_MAX, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @ID_AA64MMFR0_PARANGE_MAX, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @VTCR_EL2_PS_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @VTCR_EL2_T0SZ(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @stage2_pgtable_levels(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 2, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @VTCR_EL2_LVLS_TO_SL0(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @VTCR_EL2_HA, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = call i32 (...) @kvm_get_vmid_bits()
  %70 = icmp eq i32 %69, 16
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @VTCR_EL2_VS_16BIT, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @VTCR_EL2_VS_8BIT, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.kvm*, %struct.kvm** %4, align 8
  %81 = getelementptr inbounds %struct.kvm, %struct.kvm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %31, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @KVM_VM_TYPE_ARM_IPA_SIZE(i64) #1

declare dso_local i32 @read_sanitised_ftr_reg(i32) #1

declare dso_local i32 @VTCR_EL2_T0SZ(i32) #1

declare dso_local i32 @stage2_pgtable_levels(i32) #1

declare dso_local i32 @VTCR_EL2_LVLS_TO_SL0(i32) #1

declare dso_local i32 @kvm_get_vmid_bits(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
