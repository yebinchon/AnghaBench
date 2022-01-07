; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_check_vm_execution_controls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_check_vm_execution_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPU_BASED_ACTIVATE_SECONDARY_CONTROLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_check_vm_execution_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_check_vm_execution_controls(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %6, align 8
  %9 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %10 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vmx_control_verify(i32 %11, i32 %16, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @CC(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %2
  %29 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %30 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vmx_control_verify(i32 %31, i32 %36, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @CC(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %28, %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %234

51:                                               ; preds = %28
  %52 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %53 = load i32, i32* @CPU_BASED_ACTIVATE_SECONDARY_CONTROLS, align 4
  %54 = call i64 @nested_cpu_has(%struct.vmcs12* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %58 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %61 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %66 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vmx_control_verify(i32 %59, i32 %64, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @CC(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %56
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %234

79:                                               ; preds = %56, %51
  %80 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %81 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = call i64 @nested_cpu_vmx_misc_cr3_count(%struct.kvm_vcpu* %83)
  %85 = icmp sgt i64 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @CC(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %153, label %89

89:                                               ; preds = %79
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %92 = call i64 @nested_vmx_check_io_bitmap_controls(%struct.kvm_vcpu* %90, %struct.vmcs12* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %153, label %94

94:                                               ; preds = %89
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %96 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %97 = call i64 @nested_vmx_check_msr_bitmap_controls(%struct.kvm_vcpu* %95, %struct.vmcs12* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %153, label %99

99:                                               ; preds = %94
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %101 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %102 = call i64 @nested_vmx_check_tpr_shadow_controls(%struct.kvm_vcpu* %100, %struct.vmcs12* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %153, label %104

104:                                              ; preds = %99
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %106 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %107 = call i64 @nested_vmx_check_apic_access_controls(%struct.kvm_vcpu* %105, %struct.vmcs12* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %153, label %109

109:                                              ; preds = %104
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %111 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %112 = call i64 @nested_vmx_check_apicv_controls(%struct.kvm_vcpu* %110, %struct.vmcs12* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %153, label %114

114:                                              ; preds = %109
  %115 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %116 = call i64 @nested_vmx_check_nmi_controls(%struct.vmcs12* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %153, label %118

118:                                              ; preds = %114
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %120 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %121 = call i64 @nested_vmx_check_pml_controls(%struct.kvm_vcpu* %119, %struct.vmcs12* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %153, label %123

123:                                              ; preds = %118
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %125 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %126 = call i64 @nested_vmx_check_unrestricted_guest_controls(%struct.kvm_vcpu* %124, %struct.vmcs12* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %123
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %130 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %131 = call i64 @nested_vmx_check_mode_based_ept_exec_controls(%struct.kvm_vcpu* %129, %struct.vmcs12* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %153, label %133

133:                                              ; preds = %128
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %135 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %136 = call i64 @nested_vmx_check_shadow_vmcs_controls(%struct.kvm_vcpu* %134, %struct.vmcs12* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %133
  %139 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %140 = call i64 @nested_cpu_has_vpid(%struct.vmcs12* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %144 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %142, %138
  %149 = phi i1 [ false, %138 ], [ %147, %142 ]
  %150 = zext i1 %149 to i32
  %151 = call i64 @CC(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148, %133, %128, %123, %118, %114, %109, %104, %99, %94, %89, %79
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %234

156:                                              ; preds = %148
  %157 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %158 = call i32 @nested_cpu_has_preemption_timer(%struct.vmcs12* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %162 = call i64 @nested_cpu_has_save_preemption_timer(%struct.vmcs12* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %234

167:                                              ; preds = %160, %156
  %168 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %169 = call i64 @nested_cpu_has_ept(%struct.vmcs12* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %173 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %174 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @valid_ept_address(%struct.kvm_vcpu* %172, i32 %175)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i64 @CC(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %171
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %234

185:                                              ; preds = %171, %167
  %186 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %187 = call i64 @nested_cpu_has_vmfunc(%struct.vmcs12* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %233

189:                                              ; preds = %185
  %190 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %191 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %194 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %192, %198
  %200 = call i64 @CC(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %189
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %234

205:                                              ; preds = %189
  %206 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %207 = call i64 @nested_cpu_has_eptp_switching(%struct.vmcs12* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %205
  %210 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %211 = call i64 @nested_cpu_has_ept(%struct.vmcs12* %210)
  %212 = icmp ne i64 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i64 @CC(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %209
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %219 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %220 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @page_address_valid(%struct.kvm_vcpu* %218, i32 %221)
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i64 @CC(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %217, %209
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %3, align 4
  br label %234

231:                                              ; preds = %217
  br label %232

232:                                              ; preds = %231, %205
  br label %233

233:                                              ; preds = %232, %185
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %233, %228, %202, %182, %164, %153, %76, %48
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @vmx_control_verify(i32, i32, i32) #1

declare dso_local i64 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i64 @nested_cpu_vmx_misc_cr3_count(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_vmx_check_io_bitmap_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_msr_bitmap_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_tpr_shadow_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_apic_access_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_apicv_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_nmi_controls(%struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_pml_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_unrestricted_guest_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_mode_based_ept_exec_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_shadow_vmcs_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_vpid(%struct.vmcs12*) #1

declare dso_local i32 @nested_cpu_has_preemption_timer(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_save_preemption_timer(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_ept(%struct.vmcs12*) #1

declare dso_local i32 @valid_ept_address(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @nested_cpu_has_vmfunc(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_eptp_switching(%struct.vmcs12*) #1

declare dso_local i32 @page_address_valid(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
