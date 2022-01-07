; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_ept_inject_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_ept_inject_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.x86_exception = type { i32, i32 }
%struct.vmcs12 = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EXIT_REASON_PML_FULL = common dso_local global i32 0, align 4
@INTR_INFO_UNBLOCK_NMI = common dso_local global i64 0, align 8
@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@EXIT_REASON_EPT_MISCONFIG = common dso_local global i32 0, align 4
@EXIT_REASON_EPT_VIOLATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.x86_exception*)* @nested_ept_inject_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_ept_inject_page_fault(%struct.kvm_vcpu* %0, %struct.x86_exception* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.x86_exception*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.x86_exception* %1, %struct.x86_exception** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %9)
  store %struct.vmcs12* %10, %struct.vmcs12** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %11)
  store %struct.vcpu_vmx* %12, %struct.vcpu_vmx** %6, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @EXIT_REASON_PML_FULL, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %25 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* @INTR_INFO_UNBLOCK_NMI, align 8
  %28 = load i64, i64* %8, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %8, align 8
  br label %42

30:                                               ; preds = %2
  %31 = load %struct.x86_exception*, %struct.x86_exception** %4, align 8
  %32 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @EXIT_REASON_EPT_MISCONFIG, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @EXIT_REASON_EPT_VIOLATION, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %22
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %43, i32 %44, i32 0, i64 %45)
  %47 = load %struct.x86_exception*, %struct.x86_exception** %4, align 8
  %48 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %51 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_vmexit(%struct.kvm_vcpu*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
