; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_check_vm_entry_controls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_check_vm_entry_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@INTR_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@INTR_INFO_INTR_TYPE_MASK = common dso_local global i32 0, align 4
@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@SECONDARY_EXEC_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@X86_CR0_PE = common dso_local global i32 0, align 4
@INTR_TYPE_RESERVED = common dso_local global i32 0, align 4
@INTR_TYPE_OTHER_EVENT = common dso_local global i32 0, align 4
@INTR_TYPE_NMI_INTR = common dso_local global i32 0, align 4
@NMI_VECTOR = common dso_local global i32 0, align 4
@INTR_TYPE_HARD_EXCEPTION = common dso_local global i32 0, align 4
@INTR_INFO_RESVD_BITS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_check_vm_entry_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_check_vm_entry_controls(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %14)
  store %struct.vcpu_vmx* %15, %struct.vcpu_vmx** %6, align 8
  %16 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %17 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %25 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vmx_control_verify(i32 %18, i32 %23, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @CC(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %228

38:                                               ; preds = %2
  %39 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %40 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %219

45:                                               ; preds = %38
  %46 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %47 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @INTR_INFO_VECTOR_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @INTR_INFO_INTR_TYPE_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @INTR_INFO_DELIVER_CODE_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %59 = load i32, i32* @SECONDARY_EXEC_UNRESTRICTED_GUEST, align 4
  %60 = call i32 @nested_cpu_has2(%struct.vmcs12* %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %45
  %64 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %65 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @X86_CR0_PE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %63, %45
  %71 = phi i1 [ true, %45 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @INTR_TYPE_RESERVED, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @CC(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @INTR_TYPE_OTHER_EVENT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %85 = call i32 @nested_cpu_supports_monitor_trap_flag(%struct.kvm_vcpu* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i1 [ false, %79 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @CC(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %70
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %228

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @INTR_TYPE_NMI_INTR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @NMI_VECTOR, align 4
  %103 = icmp ne i32 %101, %102
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i1 [ false, %96 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @CC(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %133, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @INTR_TYPE_HARD_EXCEPTION, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = icmp sgt i32 %114, 31
  br label %116

116:                                              ; preds = %113, %109
  %117 = phi i1 [ false, %109 ], [ %115, %113 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @CC(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @INTR_TYPE_OTHER_EVENT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i1 [ false, %121 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  %131 = call i64 @CC(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %116, %104
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %228

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @INTR_TYPE_HARD_EXCEPTION, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = call i64 @x86_exception_has_error_code(i32 %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %143, %140, %136
  %148 = phi i1 [ false, %140 ], [ false, %136 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i64 @CC(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %228

159:                                              ; preds = %147
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %164 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @GENMASK(i32 31, i32 16)
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %162, %159
  %170 = phi i1 [ false, %159 ], [ %168, %162 ]
  %171 = zext i1 %170 to i32
  %172 = call i64 @CC(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %228

177:                                              ; preds = %169
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @INTR_INFO_RESVD_BITS_MASK, align 4
  %180 = and i32 %178, %179
  %181 = call i64 @CC(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %228

186:                                              ; preds = %177
  %187 = load i32, i32* %9, align 4
  switch i32 %187, label %218 [
    i32 129, label %188
    i32 128, label %188
    i32 130, label %188
  ]

188:                                              ; preds = %186, %186, %186
  %189 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %190 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 15
  %193 = zext i1 %192 to i32
  %194 = call i64 @CC(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %214, label %196

196:                                              ; preds = %188
  %197 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %198 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %203 = call i32 @nested_cpu_has_zero_length_injection(%struct.kvm_vcpu* %202)
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i64 @CC(i32 %206)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %201, %196
  %210 = phi i1 [ false, %196 ], [ %208, %201 ]
  %211 = zext i1 %210 to i32
  %212 = call i64 @CC(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209, %188
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %228

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %186
  br label %219

219:                                              ; preds = %218, %38
  %220 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %221 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %222 = call i64 @nested_vmx_check_entry_msr_switch_controls(%struct.kvm_vcpu* %220, %struct.vmcs12* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %228

227:                                              ; preds = %219
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %227, %224, %214, %183, %174, %156, %133, %93, %35
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @vmx_control_verify(i32, i32, i32) #1

declare dso_local i32 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i32 @nested_cpu_supports_monitor_trap_flag(%struct.kvm_vcpu*) #1

declare dso_local i64 @x86_exception_has_error_code(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @nested_cpu_has_zero_length_injection(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_vmx_check_entry_msr_switch_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
