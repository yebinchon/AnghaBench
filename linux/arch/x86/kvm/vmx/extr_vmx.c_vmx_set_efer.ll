; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_efer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_efer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vcpu_vmx = type { i32 }
%struct.shared_msr_entry = type { i32 }

@MSR_EFER = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_efer(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca %struct.shared_msr_entry*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %5, align 8
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %10 = load i32, i32* @MSR_EFER, align 4
  %11 = call %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx* %9, i32 %10)
  store %struct.shared_msr_entry* %11, %struct.shared_msr_entry** %6, align 8
  %12 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %6, align 8
  %13 = icmp ne %struct.shared_msr_entry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @EFER_LMA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %25)
  %27 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %28 = call i32 @vm_entry_controls_setbit(%struct.vcpu_vmx* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %6, align 8
  %31 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %43

32:                                               ; preds = %15
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %33)
  %35 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %36 = call i32 @vm_entry_controls_clearbit(%struct.vcpu_vmx* %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EFER_LME, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %6, align 8
  %42 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %24
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %45 = call i32 @setup_msrs(%struct.vcpu_vmx* %44)
  br label %46

46:                                               ; preds = %43, %14
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vm_entry_controls_setbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vm_entry_controls_clearbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @setup_msrs(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
