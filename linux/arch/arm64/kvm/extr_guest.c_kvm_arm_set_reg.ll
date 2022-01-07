; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arm_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arm_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_one_reg = type { i32 }

@KVM_REG_SIZE_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_REG_ARM_COPROC_MASK = common dso_local global i32 0, align 4

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
  %13 = load i32, i32* @KVM_REG_ARM64, align 4
  %14 = ashr i32 %13, 32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %37 [
    i32 129, label %25
    i32 128, label %29
    i32 130, label %33
  ]

25:                                               ; preds = %19
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %28 = call i32 @set_core_reg(%struct.kvm_vcpu* %26, %struct.kvm_one_reg* %27)
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %19
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %32 = call i32 @kvm_arm_set_fw_reg(%struct.kvm_vcpu* %30, %struct.kvm_one_reg* %31)
  store i32 %32, i32* %3, align 4
  br label %51

33:                                               ; preds = %19
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %36 = call i32 @set_sve_reg(%struct.kvm_vcpu* %34, %struct.kvm_one_reg* %35)
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %19
  %38 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_timer_reg(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %46 = call i32 @set_timer_reg(%struct.kvm_vcpu* %44, %struct.kvm_one_reg* %45)
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %5, align 8
  %50 = call i32 @kvm_arm_sys_reg_set_reg(%struct.kvm_vcpu* %48, %struct.kvm_one_reg* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %43, %33, %29, %25, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @set_core_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i32 @kvm_arm_set_fw_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i32 @set_sve_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i64 @is_timer_reg(i32) #1

declare dso_local i32 @set_timer_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

declare dso_local i32 @kvm_arm_sys_reg_set_reg(%struct.kvm_vcpu*, %struct.kvm_one_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
