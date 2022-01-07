; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arm_num_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_kvm_arm_num_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@NUM_TIMER_REGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_arm_num_regs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call i64 @num_core_regs(%struct.kvm_vcpu* %4)
  %6 = load i64, i64* %3, align 8
  %7 = add i64 %6, %5
  store i64 %7, i64* %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i64 @num_sve_regs(%struct.kvm_vcpu* %8)
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %10, %9
  store i64 %11, i64* %3, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i64 @kvm_arm_num_sys_reg_descs(%struct.kvm_vcpu* %12)
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i64 @kvm_arm_get_fw_num_regs(%struct.kvm_vcpu* %16)
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* @NUM_TIMER_REGS, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i64 @num_core_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @num_sve_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_arm_num_sys_reg_descs(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_arm_get_fw_num_regs(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
