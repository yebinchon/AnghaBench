; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_vmcs_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_vmcs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32 }

@VMX_INSTRUCTION_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*, i64)* @nested_vmx_exit_handled_vmcs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_exit_handled_vmcs_access(%struct.kvm_vcpu* %0, %struct.vmcs12* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %12 = call i32 @nested_cpu_has_shadow_vmcs(%struct.vmcs12* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load i32, i32* @VMX_INSTRUCTION_INFO, align 4
  %17 = call i32 @vmcs_read32(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 28
  %21 = and i32 %20, 15
  %22 = call i64 @kvm_register_read(%struct.kvm_vcpu* %18, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = lshr i64 %23, 15
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %43

27:                                               ; preds = %15
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = udiv i64 %30, 8
  %32 = add i64 %29, %31
  %33 = call i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu* %28, i64 %32, i64* %10, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %43

36:                                               ; preds = %27
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %38, 7
  %40 = lshr i64 %37, %39
  %41 = and i64 1, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %35, %26, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @nested_cpu_has_shadow_vmcs(%struct.vmcs12*) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i64 @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
