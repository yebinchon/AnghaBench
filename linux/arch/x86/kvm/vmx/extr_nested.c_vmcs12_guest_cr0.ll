; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmcs12_guest_cr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmcs12_guest_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vmcs12 = type { i64, i64 }

@GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_READ_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, %struct.vmcs12*)* @vmcs12_guest_cr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmcs12_guest_cr0(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %5 = load i32, i32* @GUEST_CR0, align 4
  %6 = call i64 @vmcs_readl(i32 %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %6, %10
  %12 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %13 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %16 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %14, %17
  %19 = or i64 %11, %18
  %20 = load i32, i32* @CR0_READ_SHADOW, align 4
  %21 = call i64 @vmcs_readl(i32 %20)
  %22 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %23 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %24, %28
  %30 = xor i64 %29, -1
  %31 = and i64 %21, %30
  %32 = or i64 %19, %31
  ret i64 %32
}

declare dso_local i64 @vmcs_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
