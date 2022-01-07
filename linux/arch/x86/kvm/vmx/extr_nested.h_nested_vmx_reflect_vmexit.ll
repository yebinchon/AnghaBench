; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.h_nested_vmx_reflect_vmexit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.h_nested_vmx_reflect_vmexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i8* }

@VM_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@EXIT_REASON_EXTERNAL_INTERRUPT = common dso_local global i64 0, align 8
@INTR_INFO_VALID_MASK = common dso_local global i64 0, align 8
@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i64 0, align 8
@VM_EXIT_INTR_ERROR_CODE = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @nested_vmx_reflect_vmexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_reflect_vmexit(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @VM_EXIT_INTR_INFO, align 4
  %8 = call i8* @vmcs_read32(i32 %7)
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @EXIT_REASON_EXTERNAL_INTERRUPT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @INTR_INFO_VALID_MASK, align 8
  %17 = load i64, i64* @INTR_INFO_DELIVER_CODE_MASK, align 8
  %18 = or i64 %16, %17
  %19 = and i64 %15, %18
  %20 = load i64, i64* @INTR_INFO_VALID_MASK, align 8
  %21 = load i64, i64* @INTR_INFO_DELIVER_CODE_MASK, align 8
  %22 = or i64 %20, %21
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %25)
  store %struct.vmcs12* %26, %struct.vmcs12** %6, align 8
  %27 = load i32, i32* @VM_EXIT_INTR_ERROR_CODE, align 4
  %28 = call i8* @vmcs_read32(i32 %27)
  %29 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %30 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %36 = call i32 @vmcs_readl(i32 %35)
  %37 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %32, i64 %33, i64 %34, i32 %36)
  ret i32 1
}

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_vmexit(%struct.kvm_vcpu*, i64, i64, i32) #1

declare dso_local i32 @vmcs_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
