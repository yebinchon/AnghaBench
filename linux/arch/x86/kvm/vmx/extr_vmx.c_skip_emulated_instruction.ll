; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_skip_emulated_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_skip_emulated_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_2__ = type { i64 }

@X86_FEATURE_HYPERVISOR = common dso_local global i32 0, align 4
@EXIT_REASON_EPT_MISCONFIG = common dso_local global i64 0, align 8
@VM_EXIT_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@EMULTYPE_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @skip_emulated_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_emulated_instruction(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load i32, i32* @X86_FEATURE_HYPERVISOR, align 4
  %6 = call i32 @static_cpu_has(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.TYPE_2__* @to_vmx(%struct.kvm_vcpu* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXIT_REASON_EPT_MISCONFIG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %8, %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %19 = call i64 @vmcs_read32(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %4, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %22, i64 %23)
  br label %32

25:                                               ; preds = %8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load i32, i32* @EMULTYPE_SKIP, align 4
  %28 = call i32 @kvm_emulate_instruction(%struct.kvm_vcpu* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %35

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i32 @vmx_set_interrupt_shadow(%struct.kvm_vcpu* %33, i32 0)
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local %struct.TYPE_2__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @vmcs_read32(i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_set_interrupt_shadow(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
