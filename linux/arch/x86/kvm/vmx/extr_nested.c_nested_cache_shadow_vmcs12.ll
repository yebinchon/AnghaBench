; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_cache_shadow_vmcs12.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_cache_shadow_vmcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64 }
%struct.kvm_host_map = type { i32 }

@VMCS12_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_cache_shadow_vmcs12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_cache_shadow_vmcs12(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca %struct.kvm_host_map, align 4
  %6 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %7 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %8 = call i32 @nested_cpu_has_shadow_vmcs(%struct.vmcs12* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %12 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %35

16:                                               ; preds = %10
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call %struct.vmcs12* @get_shadow_vmcs12(%struct.kvm_vcpu* %17)
  store %struct.vmcs12* %18, %struct.vmcs12** %6, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %21 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpa_to_gfn(i64 %22)
  %24 = call i64 @kvm_vcpu_map(%struct.kvm_vcpu* %19, i32 %23, %struct.kvm_host_map* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %35

27:                                               ; preds = %16
  %28 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %29 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VMCS12_SIZE, align 4
  %32 = call i32 @memcpy(%struct.vmcs12* %28, i32 %30, i32 %31)
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %33, %struct.kvm_host_map* %5, i32 0)
  br label %35

35:                                               ; preds = %27, %26, %15
  ret void
}

declare dso_local i32 @nested_cpu_has_shadow_vmcs(%struct.vmcs12*) #1

declare dso_local %struct.vmcs12* @get_shadow_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_map(%struct.kvm_vcpu*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i32 @memcpy(%struct.vmcs12*, i32, i32) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.kvm_vcpu*, %struct.kvm_host_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
