; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_vmcs_link_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_vmcs_link_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.kvm_host_map = type { %struct.vmcs12* }

@EINVAL = common dso_local global i32 0, align 4
@VMCS12_REVISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_check_vmcs_link_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_vmcs_link_ptr(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmcs12*, align 8
  %8 = alloca %struct.kvm_host_map, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %10 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %17 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @page_address_valid(%struct.kvm_vcpu* %15, i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @CC(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %70

28:                                               ; preds = %14
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %31 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gpa_to_gfn(i64 %32)
  %34 = call i32 @kvm_vcpu_map(%struct.kvm_vcpu* %29, i32 %33, %struct.kvm_host_map* %8)
  %35 = call i64 @CC(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %8, i32 0, i32 0
  %42 = load %struct.vmcs12*, %struct.vmcs12** %41, align 8
  store %struct.vmcs12* %42, %struct.vmcs12** %7, align 8
  %43 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %44 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VMCS12_REVISION, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @CC(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %40
  %53 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %54 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %58 = call i64 @nested_cpu_has_shadow_vmcs(%struct.vmcs12* %57)
  %59 = icmp ne i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @CC(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52, %40
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %52
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %67, %struct.kvm_host_map* %8, i32 0)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %37, %25, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @page_address_valid(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_vcpu_map(%struct.kvm_vcpu*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i64 @nested_cpu_has_shadow_vmcs(%struct.vmcs12*) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.kvm_vcpu*, %struct.kvm_host_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
