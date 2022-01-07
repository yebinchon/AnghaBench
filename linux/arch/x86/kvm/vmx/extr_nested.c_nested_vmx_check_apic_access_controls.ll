; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_apic_access_controls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_apic_access_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32 }

@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_check_apic_access_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_apic_access_controls(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %6 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %7 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %8 = call i64 @nested_cpu_has2(%struct.vmcs12* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %13 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @page_address_valid(%struct.kvm_vcpu* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @CC(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @page_address_valid(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
