; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmwrite.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.x86_exception = type { i32 }
%struct.vmcs12 = type { i64 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@VMX_INSTRUCTION_INFO = common dso_local global i32 0, align 4
@VMXERR_VMWRITE_READ_ONLY_VMCS_COMPONENT = common dso_local global i32 0, align 4
@VMXERR_UNSUPPORTED_VMCS_COMPONENT = common dso_local global i32 0, align 4
@GUEST_ES_AR_BYTES = common dso_local global i64 0, align 8
@GUEST_TR_AR_BYTES = common dso_local global i64 0, align 8
@enable_shadow_vmcs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_vmwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vmwrite(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.x86_exception, align 4
  %12 = alloca %struct.vmcs12*, align 8
  %13 = alloca i16, align 2
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %14)
  store %struct.vcpu_vmx* %15, %struct.vcpu_vmx** %7, align 8
  %16 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %17 = call i64 @vmcs_readl(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* @VMX_INSTRUCTION_INFO, align 4
  %19 = call i32 @vmcs_read32(i32 %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i32 @nested_vmx_check_permission(%struct.kvm_vcpu* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %182

24:                                               ; preds = %1
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %2, align 4
  br label %182

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 1024
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = load i32, i32* %9, align 4
  %40 = lshr i32 %39, 3
  %41 = and i32 %40, 15
  %42 = call i8* @kvm_register_readl(%struct.kvm_vcpu* %38, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %10, align 4
  br label %67

44:                                               ; preds = %33
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i64 @is_64_bit_mode(%struct.kvm_vcpu* %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 8, i32 4
  store i32 %49, i32* %5, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @get_vmx_mem_address(%struct.kvm_vcpu* %50, i64 %51, i32 %52, i32 0, i32 %53, i32* %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %182

57:                                               ; preds = %44
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @kvm_read_guest_virt(%struct.kvm_vcpu* %58, i32 %59, i32* %10, i32 %60, %struct.x86_exception* %11)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %64, %struct.x86_exception* %11)
  store i32 1, i32* %2, align 4
  br label %182

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %37
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = load i32, i32* %9, align 4
  %70 = lshr i32 %69, 28
  %71 = and i32 %70, 15
  %72 = call i8* @kvm_register_readl(%struct.kvm_vcpu* %68, i32 %71)
  %73 = ptrtoint i8* %72 to i64
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @vmcs_field_readonly(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = call i32 @nested_cpu_has_vmwrite_any_field(%struct.kvm_vcpu* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = load i32, i32* @VMXERR_VMWRITE_READ_ONLY_VMCS_COMPONENT, align 4
  %84 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %82, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %182

85:                                               ; preds = %77, %67
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = call i32 @is_guest_mode(%struct.kvm_vcpu* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %85
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %90)
  store %struct.vmcs12* %91, %struct.vmcs12** %12, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @is_shadow_field_rw(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = load %struct.vmcs12*, %struct.vmcs12** %12, align 8
  %98 = call i32 @copy_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu* %96, %struct.vmcs12* %97)
  br label %99

99:                                               ; preds = %95, %89
  br label %112

100:                                              ; preds = %85
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %101)
  %103 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %107)
  store i32 %108, i32* %2, align 4
  br label %182

109:                                              ; preds = %100
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = call %struct.vmcs12* @get_shadow_vmcs12(%struct.kvm_vcpu* %110)
  store %struct.vmcs12* %111, %struct.vmcs12** %12, align 8
  br label %112

112:                                              ; preds = %109, %99
  %113 = load i64, i64* %4, align 8
  %114 = call signext i16 @vmcs_field_to_offset(i64 %113)
  store i16 %114, i16* %13, align 2
  %115 = load i16, i16* %13, align 2
  %116 = sext i16 %115 to i32
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %120 = load i32, i32* @VMXERR_UNSUPPORTED_VMCS_COMPONENT, align 4
  %121 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %119, i32 %120)
  store i32 %121, i32* %2, align 4
  br label %182

122:                                              ; preds = %112
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @GUEST_ES_AR_BYTES, align 8
  %125 = icmp uge i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @GUEST_TR_AR_BYTES, align 8
  %129 = icmp ule i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 127231
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %130, %126, %122
  %134 = load %struct.vmcs12*, %struct.vmcs12** %12, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load i16, i16* %13, align 2
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @vmcs12_write_any(%struct.vmcs12* %134, i64 %135, i16 signext %136, i32 %137)
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = call i32 @is_guest_mode(%struct.kvm_vcpu* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %179, label %142

142:                                              ; preds = %133
  %143 = load i64, i64* %4, align 8
  %144 = call i32 @is_shadow_field_rw(i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %179, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* @enable_shadow_vmcs, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load i64, i64* %4, align 8
  %151 = call i64 @is_shadow_field_ro(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %149
  %154 = call i32 (...) @preempt_disable()
  %155 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %156 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @vmcs_load(i32 %158)
  %160 = load i64, i64* %4, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @__vmcs_writel(i64 %160, i32 %161)
  %163 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %164 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @vmcs_clear(i32 %166)
  %168 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %169 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @vmcs_load(i32 %172)
  %174 = call i32 (...) @preempt_enable()
  br label %175

175:                                              ; preds = %153, %149, %146
  %176 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %177 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %142, %133
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %181 = call i32 @nested_vmx_succeed(%struct.kvm_vcpu* %180)
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %179, %118, %106, %81, %63, %56, %30, %23
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @nested_vmx_check_permission(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_failInvalid(%struct.kvm_vcpu*) #1

declare dso_local i8* @kvm_register_readl(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_64_bit_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @get_vmx_mem_address(%struct.kvm_vcpu*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @kvm_read_guest_virt(%struct.kvm_vcpu*, i32, i32*, i32, %struct.x86_exception*) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, %struct.x86_exception*) #1

declare dso_local i64 @vmcs_field_readonly(i64) #1

declare dso_local i32 @nested_cpu_has_vmwrite_any_field(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_failValid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_shadow_field_rw(i64) #1

declare dso_local i32 @copy_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local %struct.vmcs12* @get_shadow_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local signext i16 @vmcs_field_to_offset(i64) #1

declare dso_local i32 @vmcs12_write_any(%struct.vmcs12*, i64, i16 signext, i32) #1

declare dso_local i64 @is_shadow_field_ro(i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @vmcs_load(i32) #1

declare dso_local i32 @__vmcs_writel(i64, i32) #1

declare dso_local i32 @vmcs_clear(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @nested_vmx_succeed(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
