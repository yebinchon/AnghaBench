; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.h_nested_guest_cr0_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.h_nested_guest_cr0_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SECONDARY_EXEC_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@X86_CR0_PE = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @nested_guest_cr0_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_guest_cr0_valid(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %20)
  store %struct.vmcs12* %21, %struct.vmcs12** %7, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SECONDARY_EXEC_UNRESTRICTED_GUEST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %33 = load i32, i32* @SECONDARY_EXEC_UNRESTRICTED_GUEST, align 4
  %34 = call i64 @nested_cpu_has2(%struct.vmcs12* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @X86_CR0_PE, align 4
  %38 = load i32, i32* @X86_CR0_PG, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %36, %31, %2
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @fixed_bits_valid(i64 %44, i32 %45, i32 %46)
  ret i32 %47
}

declare dso_local %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i32 @fixed_bits_valid(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
