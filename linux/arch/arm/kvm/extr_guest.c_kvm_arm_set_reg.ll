; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_guest.c_kvm_arm_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_guest.c_kvm_arm_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_one_reg = type { i32 }

@KVM_REG_SIZE_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_REG_ARM_COPROC_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_CORE = common dso_local global i32 0, align 4
@KVM_REG_ARM_FW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arm_set_reg(%struct.kvm_vcpu* %0, %struct.kvm_one_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_one_reg*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_one_reg* %1, %struct.kvm_one_reg** %5, align 8
  %6 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KVM_REG_SIZE_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = ashr i32 %11, 32
  %13 = load i32, i32* @KVM_REG_ARM, align 4
  %14 = ashr i32 %13, 32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @KVM_REG_ARM_CORE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %30 = call i32 @set_core_reg(%struct.kvm_vcpu* %28, %struct.kvm_one_reg* %29)
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %19
  %32 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @KVM_REG_ARM_FW, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %42 = call i32 @kvm_arm_set_fw_reg(%struct.kvm_vcpu* %40, %struct.kvm_one_reg* %41)
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %31
  %44 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_timer_reg(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %52 = call i32 @set_timer_reg(%struct.kvm_vcpu* %50, %struct.kvm_one_reg* %51)
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %56 = call i32 @kvm_arm_coproc_set_reg(%struct.kvm_vcpu* %54, %struct.kvm_one_reg* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %49, %39, %27, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @set_core_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i32 @kvm_arm_set_fw_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i64 @is_timer_reg(i32) #1

declare dso_local i32 @set_timer_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i32 @kvm_arm_coproc_set_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
