; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_handle_enlightened_vmptrld.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_handle_enlightened_vmptrld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_8__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.vmcs12 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@KVM_EVMCS_VERSION = common dso_local global i64 0, align 8
@VMCS12_REVISION = common dso_local global i64 0, align 8
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @nested_vmx_handle_enlightened_vmptrld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_handle_enlightened_vmptrld(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %125

22:                                               ; preds = %2
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = call i32 @nested_enlightened_vmentry(%struct.kvm_vcpu* %23, i64* %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %125

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %108

37:                                               ; preds = %27
  %38 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %39 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 -1, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = call i32 @nested_release_evmcs(%struct.kvm_vcpu* %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @gpa_to_gfn(i64 %51)
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = call i64 @kvm_vcpu_map(%struct.kvm_vcpu* %50, i32 %52, %struct.TYPE_8__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %125

59:                                               ; preds = %47
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %61 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %66 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %67, align 8
  %68 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %69 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @KVM_EVMCS_VERSION, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %59
  %77 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %78 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VMCS12_REVISION, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = call i32 @nested_release_evmcs(%struct.kvm_vcpu* %86)
  store i32 0, i32* %3, align 4
  br label %125

88:                                               ; preds = %76, %59
  %89 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %90 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %94 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  store i32 1, i32* %7, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %100 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %99)
  store %struct.vmcs12* %100, %struct.vmcs12** %9, align 8
  %101 = load %struct.vmcs12*, %struct.vmcs12** %9, align 8
  %102 = call i32 @memset(%struct.vmcs12* %101, i32 0, i32 8)
  %103 = load i64, i64* @VMCS12_REVISION, align 8
  %104 = load %struct.vmcs12*, %struct.vmcs12** %9, align 8
  %105 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %98, %88
  br label %108

108:                                              ; preds = %107, %27
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111, %108
  %115 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %118 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %116
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %114, %111
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %85, %58, %26, %21
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nested_enlightened_vmentry(%struct.kvm_vcpu*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nested_release_evmcs(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_map(%struct.kvm_vcpu*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @memset(%struct.vmcs12*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
