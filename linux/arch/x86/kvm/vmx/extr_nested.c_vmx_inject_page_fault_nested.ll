; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_inject_page_fault_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_inject_page_fault_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.x86_exception = type { i32, i32 }
%struct.vmcs12 = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EXIT_REASON_EXCEPTION_NMI = common dso_local global i32 0, align 4
@PF_VECTOR = common dso_local global i32 0, align 4
@INTR_TYPE_HARD_EXCEPTION = common dso_local global i32 0, align 4
@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.x86_exception*)* @vmx_inject_page_fault_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_inject_page_fault_nested(%struct.kvm_vcpu* %0, %struct.x86_exception* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.x86_exception*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.x86_exception* %1, %struct.x86_exception** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %6)
  store %struct.vmcs12* %7, %struct.vmcs12** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @is_guest_mode(%struct.kvm_vcpu* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %15 = load %struct.x86_exception*, %struct.x86_exception** %4, align 8
  %16 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @nested_vmx_is_page_fault_vmexit(%struct.vmcs12* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %20
  %28 = load %struct.x86_exception*, %struct.x86_exception** %4, align 8
  %29 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %32 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = load i32, i32* @EXIT_REASON_EXCEPTION_NMI, align 4
  %35 = load i32, i32* @PF_VECTOR, align 4
  %36 = load i32, i32* @INTR_TYPE_HARD_EXCEPTION, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @INTR_INFO_DELIVER_CODE_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.x86_exception*, %struct.x86_exception** %4, align 8
  %43 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %33, i32 %34, i32 %41, i32 %44)
  br label %50

46:                                               ; preds = %20, %2
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = load %struct.x86_exception*, %struct.x86_exception** %4, align 8
  %49 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %47, %struct.x86_exception* %48)
  br label %50

50:                                               ; preds = %46, %27
  ret void
}

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_vmx_is_page_fault_vmexit(%struct.vmcs12*, i32) #1

declare dso_local %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_vmexit(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, %struct.x86_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
