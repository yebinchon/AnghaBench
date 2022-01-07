; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_early_rare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_early_rare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vmcs12 = type { i32 }

@VMCS_LINK_POINTER = common dso_local global i32 0, align 4
@enable_vpid = common dso_local global i64 0, align 8
@VIRTUAL_PROCESSOR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, %struct.vmcs12*)* @prepare_vmcs02_early_rare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vmcs02_early_rare(%struct.vcpu_vmx* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %5 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %6 = call i32 @prepare_vmcs02_constant_state(%struct.vcpu_vmx* %5)
  %7 = load i32, i32* @VMCS_LINK_POINTER, align 4
  %8 = call i32 @vmcs_write64(i32 %7, i64 -1)
  %9 = load i64, i64* @enable_vpid, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %13 = call i64 @nested_cpu_has_vpid(%struct.vmcs12* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @VIRTUAL_PROCESSOR_ID, align 4
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vmcs_write16(i32 %22, i64 %26)
  br label %34

28:                                               ; preds = %15, %11
  %29 = load i32, i32* @VIRTUAL_PROCESSOR_ID, align 4
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @vmcs_write16(i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @prepare_vmcs02_constant_state(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmcs_write64(i32, i64) #1

declare dso_local i64 @nested_cpu_has_vpid(%struct.vmcs12*) #1

declare dso_local i32 @vmcs_write16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
