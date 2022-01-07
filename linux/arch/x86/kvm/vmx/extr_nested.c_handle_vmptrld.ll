; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmptrld.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmptrld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.kvm_host_map = type { %struct.vmcs12* }
%struct.vmcs12 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@VMXERR_VMPTRLD_INVALID_ADDRESS = common dso_local global i32 0, align 4
@VMXERR_VMPTRLD_VMXON_POINTER = common dso_local global i32 0, align 4
@VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID = common dso_local global i32 0, align 4
@VMCS12_REVISION = common dso_local global i64 0, align 8
@VMCS12_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_vmptrld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vmptrld(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_host_map, align 8
  %7 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @nested_vmx_check_permission(%struct.kvm_vcpu* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %106

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i64 @nested_vmx_get_vmptr(%struct.kvm_vcpu* %15, i64* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %106

19:                                               ; preds = %14
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @page_address_valid(%struct.kvm_vcpu* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = load i32, i32* @VMXERR_VMPTRLD_INVALID_ADDRESS, align 4
  %27 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %106

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* @VMXERR_VMPTRLD_VMXON_POINTER, align 4
  %38 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %106

39:                                               ; preds = %28
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %106

46:                                               ; preds = %39
  %47 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %48 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %46
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @gpa_to_gfn(i64 %55)
  %57 = call i64 @kvm_vcpu_map(%struct.kvm_vcpu* %54, i32 %56, %struct.kvm_host_map* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = load i32, i32* @VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID, align 4
  %62 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %60, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %106

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %6, i32 0, i32 0
  %65 = load %struct.vmcs12*, %struct.vmcs12** %64, align 8
  store %struct.vmcs12* %65, %struct.vmcs12** %7, align 8
  %66 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %67 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VMCS12_REVISION, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %63
  %73 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %74 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = call i32 @nested_cpu_has_vmx_shadow_vmcs(%struct.kvm_vcpu* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78, %63
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %83, %struct.kvm_host_map* %6, i32 0)
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = load i32, i32* @VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID, align 4
  %87 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %85, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %106

88:                                               ; preds = %78, %72
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = call i32 @nested_release_vmcs12(%struct.kvm_vcpu* %89)
  %91 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %92 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  %96 = load i32, i32* @VMCS12_SIZE, align 4
  %97 = call i32 @memcpy(i32 %94, %struct.vmcs12* %95, i32 %96)
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %98, %struct.kvm_host_map* %6, i32 0)
  %100 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @set_current_vmptr(%struct.vcpu_vmx* %100, i64 %101)
  br label %103

103:                                              ; preds = %88, %46
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = call i32 @nested_vmx_succeed(%struct.kvm_vcpu* %104)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %82, %59, %45, %35, %24, %18, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_check_permission(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_vmx_get_vmptr(%struct.kvm_vcpu*, i64*) #1

declare dso_local i32 @page_address_valid(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @nested_vmx_failValid(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_vcpu_map(%struct.kvm_vcpu*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i32 @nested_cpu_has_vmx_shadow_vmcs(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.kvm_vcpu*, %struct.kvm_host_map*, i32) #1

declare dso_local i32 @nested_release_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32, %struct.vmcs12*, i32) #1

declare dso_local i32 @set_current_vmptr(%struct.vcpu_vmx*, i64) #1

declare dso_local i32 @nested_vmx_succeed(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
