; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64 }
%struct.x86_exception = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@VMX_INSTRUCTION_INFO = common dso_local global i32 0, align 4
@VMXERR_UNSUPPORTED_VMCS_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_vmread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vmread(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmcs12*, align 8
  %11 = alloca %struct.x86_exception, align 4
  %12 = alloca i16, align 2
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %13 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %14 = call i64 @vmcs_readl(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @VMX_INSTRUCTION_INFO, align 4
  %16 = call i32 @vmcs_read32(i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i32 @nested_vmx_check_permission(%struct.kvm_vcpu* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %29)
  store i32 %30, i32* %2, align 4
  br label %118

31:                                               ; preds = %21
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = call i32 @is_guest_mode(%struct.kvm_vcpu* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %36)
  store %struct.vmcs12* %37, %struct.vmcs12** %10, align 8
  br label %50

38:                                               ; preds = %31
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %39)
  %41 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %45)
  store i32 %46, i32* %2, align 4
  br label %118

47:                                               ; preds = %38
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call %struct.vmcs12* @get_shadow_vmcs12(%struct.kvm_vcpu* %48)
  store %struct.vmcs12* %49, %struct.vmcs12** %10, align 8
  br label %50

50:                                               ; preds = %47, %35
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 28
  %54 = and i32 %53, 15
  %55 = call i64 @kvm_register_readl(%struct.kvm_vcpu* %51, i32 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call signext i16 @vmcs_field_to_offset(i64 %56)
  store i16 %57, i16* %12, align 2
  %58 = load i16, i16* %12, align 2
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = load i32, i32* @VMXERR_UNSUPPORTED_VMCS_COMPONENT, align 4
  %64 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %62, i32 %63)
  store i32 %64, i32* %2, align 4
  br label %118

65:                                               ; preds = %50
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = call i32 @is_guest_mode(%struct.kvm_vcpu* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @is_vmcs12_ext_field(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %76 = call i32 @copy_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu* %74, %struct.vmcs12* %75)
  br label %77

77:                                               ; preds = %73, %69, %65
  %78 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i16, i16* %12, align 2
  %81 = call i32 @vmcs12_read_any(%struct.vmcs12* %78, i64 %79, i16 signext %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 1024
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 3
  %89 = and i32 %88, 15
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @kvm_register_writel(%struct.kvm_vcpu* %86, i32 %89, i32 %90)
  br label %115

92:                                               ; preds = %77
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = call i64 @is_64_bit_mode(%struct.kvm_vcpu* %93)
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 8, i32 4
  store i32 %97, i32* %8, align 4
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @get_vmx_mem_address(%struct.kvm_vcpu* %98, i64 %99, i32 %100, i32 1, i32 %101, i32* %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i32 1, i32* %2, align 4
  br label %118

105:                                              ; preds = %92
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @kvm_write_guest_virt_system(%struct.kvm_vcpu* %106, i32 %107, i32* %5, i32 %108, %struct.x86_exception* %11)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %112, %struct.x86_exception* %11)
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %85
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = call i32 @nested_vmx_succeed(%struct.kvm_vcpu* %116)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %104, %61, %44, %28, %20
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @nested_vmx_check_permission(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_failInvalid(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_shadow_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_register_readl(%struct.kvm_vcpu*, i32) #1

declare dso_local signext i16 @vmcs_field_to_offset(i64) #1

declare dso_local i32 @nested_vmx_failValid(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_vmcs12_ext_field(i64) #1

declare dso_local i32 @copy_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @vmcs12_read_any(%struct.vmcs12*, i64, i16 signext) #1

declare dso_local i32 @kvm_register_writel(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i64 @is_64_bit_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @get_vmx_mem_address(%struct.kvm_vcpu*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @kvm_write_guest_virt_system(%struct.kvm_vcpu*, i32, i32*, i32, %struct.x86_exception*) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, %struct.x86_exception*) #1

declare dso_local i32 @nested_vmx_succeed(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
