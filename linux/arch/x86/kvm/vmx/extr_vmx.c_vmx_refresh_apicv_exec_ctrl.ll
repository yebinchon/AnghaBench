; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_refresh_apicv_exec_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_refresh_apicv_exec_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32 }

@SECONDARY_EXEC_APIC_REGISTER_VIRT = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_refresh_apicv_exec_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_refresh_apicv_exec_ctrl(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = call i32 @vmx_pin_based_exec_ctrl(%struct.vcpu_vmx* %7)
  %9 = call i32 @pin_controls_set(%struct.vcpu_vmx* %6, i32 %8)
  %10 = call i64 (...) @cpu_has_secondary_exec_ctrls()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i64 @kvm_vcpu_apicv_active(%struct.kvm_vcpu* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %18 = load i32, i32* @SECONDARY_EXEC_APIC_REGISTER_VIRT, align 4
  %19 = load i32, i32* @SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @secondary_exec_controls_setbit(%struct.vcpu_vmx* %17, i32 %20)
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = load i32, i32* @SECONDARY_EXEC_APIC_REGISTER_VIRT, align 4
  %25 = load i32, i32* @SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @secondary_exec_controls_clearbit(%struct.vcpu_vmx* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  br label %29

29:                                               ; preds = %28, %1
  %30 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = call i32 @vmx_update_msr_bitmap(%struct.kvm_vcpu* %33)
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @pin_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_pin_based_exec_ctrl(%struct.vcpu_vmx*) #1

declare dso_local i64 @cpu_has_secondary_exec_ctrls(...) #1

declare dso_local i64 @kvm_vcpu_apicv_active(%struct.kvm_vcpu*) #1

declare dso_local i32 @secondary_exec_controls_setbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @secondary_exec_controls_clearbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i32 @vmx_update_msr_bitmap(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
