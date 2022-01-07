; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs12.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmcs12 = type { i32, i64, i32, i32, i32, i32, i8*, i8*, i64, i8* }

@VM_EXIT_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@VMX_INSTRUCTION_INFO = common dso_local global i32 0, align 4
@VMX_EXIT_REASONS_FAILED_VMENTRY = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VMX_ABORT_SAVE_GUEST_MSR_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vmcs12*, i8*, i8*, i64)* @prepare_vmcs12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vmcs12(%struct.kvm_vcpu* %0, %struct.vmcs12* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.vmcs12*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %14 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %17 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %20 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %22 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %24 = call i8* @vmcs_read32(i32 %23)
  %25 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %26 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @VMX_INSTRUCTION_INFO, align 4
  %28 = call i8* @vmcs_read32(i32 %27)
  %29 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %30 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %32 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VMX_EXIT_REASONS_FAILED_VMENTRY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %5
  %38 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %39 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %43 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %47 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %48 = call i32 @vmcs12_save_pending_event(%struct.kvm_vcpu* %46, %struct.vmcs12* %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %50 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %51 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %54 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nested_vmx_store_msr(%struct.kvm_vcpu* %49, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %60 = load i32, i32* @VMX_ABORT_SAVE_GUEST_MSR_FAIL, align 4
  %61 = call i32 @nested_vmx_abort(%struct.kvm_vcpu* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %37
  br label %63

63:                                               ; preds = %62, %5
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %68 = call i32 @kvm_clear_exception_queue(%struct.kvm_vcpu* %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %70 = call i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu* %69)
  ret void
}

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i32 @vmcs12_save_pending_event(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_store_msr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @nested_vmx_abort(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
