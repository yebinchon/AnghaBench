; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_reflected.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_reflected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.vmcs12 = type { i32, i32, i32 }

@VM_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hardware VM-instruction error: \00", align 1
@VM_INSTRUCTION_ERROR = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@VM_EXIT_INTR_ERROR_CODE = common dso_local global i32 0, align 4
@KVM_ISA_VMX = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_SW_BP = common dso_local global i32 0, align 4
@INTR_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_INTR_PENDING = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_NMI_PENDING = common dso_local global i32 0, align 4
@CPU_BASED_HLT_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_INVLPG_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_RDPMC_EXITING = common dso_local global i32 0, align 4
@SECONDARY_EXEC_RDRAND_EXITING = common dso_local global i32 0, align 4
@SECONDARY_EXEC_RDSEED_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_RDTSC_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_MOV_DR_EXITING = common dso_local global i32 0, align 4
@SECONDARY_EXEC_DESC = common dso_local global i32 0, align 4
@CPU_BASED_MWAIT_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_MONITOR_TRAP_FLAG = common dso_local global i32 0, align 4
@CPU_BASED_MONITOR_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_PAUSE_EXITING = common dso_local global i32 0, align 4
@SECONDARY_EXEC_PAUSE_LOOP_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_TPR_SHADOW = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_INVPCID = common dso_local global i32 0, align 4
@SECONDARY_EXEC_WBINVD_EXITING = common dso_local global i32 0, align 4
@SECONDARY_EXEC_XSAVES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nested_vmx_exit_reflected(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @VM_EXIT_INTR_INFO, align 4
  %10 = call i32 @vmcs_read32(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %11)
  store %struct.vcpu_vmx* %12, %struct.vcpu_vmx** %7, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %13)
  store %struct.vmcs12* %14, %struct.vmcs12** %8, align 8
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %247

21:                                               ; preds = %2
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @VM_INSTRUCTION_ERROR, align 4
  %29 = call i32 @vmcs_read32(i32 %28)
  %30 = call i32 @trace_kvm_nested_vmenter_failed(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 1, i32* %3, align 4
  br label %247

31:                                               ; preds = %21
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = call i32 @nested_mark_vmcs12_pages_dirty(%struct.kvm_vcpu* %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %38 = call i32 @vmcs_readl(i32 %37)
  %39 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %40 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @VM_EXIT_INTR_ERROR_CODE, align 4
  %44 = call i32 @vmcs_read32(i32 %43)
  %45 = load i32, i32* @KVM_ISA_VMX, align 4
  %46 = call i32 @trace_kvm_nested_vmexit(i32 %35, i32 %36, i32 %38, i32 %41, i32 %42, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %246 [
    i32 175, label %48
    i32 174, label %109
    i32 144, label %110
    i32 155, label %111
    i32 157, label %115
    i32 147, label %119
    i32 182, label %120
    i32 172, label %121
    i32 170, label %125
    i32 168, label %126
    i32 152, label %130
    i32 151, label %134
    i32 150, label %138
    i32 149, label %142
    i32 148, label %142
    i32 134, label %146
    i32 132, label %153
    i32 142, label %160
    i32 141, label %160
    i32 139, label %160
    i32 136, label %160
    i32 135, label %160
    i32 133, label %160
    i32 138, label %160
    i32 137, label %160
    i32 169, label %160
    i32 166, label %160
    i32 181, label %161
    i32 180, label %165
    i32 165, label %169
    i32 173, label %173
    i32 164, label %173
    i32 160, label %177
    i32 159, label %177
    i32 171, label %182
    i32 158, label %183
    i32 161, label %187
    i32 162, label %191
    i32 156, label %195
    i32 163, label %208
    i32 145, label %209
    i32 184, label %213
    i32 183, label %213
    i32 178, label %213
    i32 176, label %214
    i32 177, label %215
    i32 167, label %216
    i32 131, label %229
    i32 128, label %233
    i32 129, label %234
    i32 130, label %234
    i32 153, label %238
    i32 154, label %239
    i32 140, label %240
    i32 179, label %241
    i32 143, label %242
    i32 146, label %242
  ]

48:                                               ; preds = %31
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @is_nmi(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %247

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @is_page_fault(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %59 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @enable_ept, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi i1 [ false, %57 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %247

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @is_debug(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %80 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %247

85:                                               ; preds = %75, %71
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @is_breakpoint(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @KVM_GUESTDBG_USE_SW_BP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %247

97:                                               ; preds = %89, %85
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %102 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @INTR_INFO_VECTOR_MASK, align 4
  %106 = and i32 %104, %105
  %107 = shl i32 1, %106
  %108 = and i32 %103, %107
  store i32 %108, i32* %3, align 4
  br label %247

109:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

110:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

111:                                              ; preds = %31
  %112 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %113 = load i32, i32* @CPU_BASED_VIRTUAL_INTR_PENDING, align 4
  %114 = call i32 @nested_cpu_has(%struct.vmcs12* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %247

115:                                              ; preds = %31
  %116 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %117 = load i32, i32* @CPU_BASED_VIRTUAL_NMI_PENDING, align 4
  %118 = call i32 @nested_cpu_has(%struct.vmcs12* %116, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %247

119:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

120:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

121:                                              ; preds = %31
  %122 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %123 = load i32, i32* @CPU_BASED_HLT_EXITING, align 4
  %124 = call i32 @nested_cpu_has(%struct.vmcs12* %122, i32 %123)
  store i32 %124, i32* %3, align 4
  br label %247

125:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

126:                                              ; preds = %31
  %127 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %128 = load i32, i32* @CPU_BASED_INVLPG_EXITING, align 4
  %129 = call i32 @nested_cpu_has(%struct.vmcs12* %127, i32 %128)
  store i32 %129, i32* %3, align 4
  br label %247

130:                                              ; preds = %31
  %131 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %132 = load i32, i32* @CPU_BASED_RDPMC_EXITING, align 4
  %133 = call i32 @nested_cpu_has(%struct.vmcs12* %131, i32 %132)
  store i32 %133, i32* %3, align 4
  br label %247

134:                                              ; preds = %31
  %135 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %136 = load i32, i32* @SECONDARY_EXEC_RDRAND_EXITING, align 4
  %137 = call i32 @nested_cpu_has2(%struct.vmcs12* %135, i32 %136)
  store i32 %137, i32* %3, align 4
  br label %247

138:                                              ; preds = %31
  %139 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %140 = load i32, i32* @SECONDARY_EXEC_RDSEED_EXITING, align 4
  %141 = call i32 @nested_cpu_has2(%struct.vmcs12* %139, i32 %140)
  store i32 %141, i32* %3, align 4
  br label %247

142:                                              ; preds = %31, %31
  %143 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %144 = load i32, i32* @CPU_BASED_RDTSC_EXITING, align 4
  %145 = call i32 @nested_cpu_has(%struct.vmcs12* %143, i32 %144)
  store i32 %145, i32* %3, align 4
  br label %247

146:                                              ; preds = %31
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %148 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %149 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %150 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @nested_vmx_exit_handled_vmcs_access(%struct.kvm_vcpu* %147, %struct.vmcs12* %148, i32 %151)
  store i32 %152, i32* %3, align 4
  br label %247

153:                                              ; preds = %31
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %155 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %156 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %157 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @nested_vmx_exit_handled_vmcs_access(%struct.kvm_vcpu* %154, %struct.vmcs12* %155, i32 %158)
  store i32 %159, i32* %3, align 4
  br label %247

160:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 1, i32* %3, align 4
  br label %247

161:                                              ; preds = %31
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %163 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %164 = call i32 @nested_vmx_exit_handled_cr(%struct.kvm_vcpu* %162, %struct.vmcs12* %163)
  store i32 %164, i32* %3, align 4
  br label %247

165:                                              ; preds = %31
  %166 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %167 = load i32, i32* @CPU_BASED_MOV_DR_EXITING, align 4
  %168 = call i32 @nested_cpu_has(%struct.vmcs12* %166, i32 %167)
  store i32 %168, i32* %3, align 4
  br label %247

169:                                              ; preds = %31
  %170 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %171 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %172 = call i32 @nested_vmx_exit_handled_io(%struct.kvm_vcpu* %170, %struct.vmcs12* %171)
  store i32 %172, i32* %3, align 4
  br label %247

173:                                              ; preds = %31, %31
  %174 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %175 = load i32, i32* @SECONDARY_EXEC_DESC, align 4
  %176 = call i32 @nested_cpu_has2(%struct.vmcs12* %174, i32 %175)
  store i32 %176, i32* %3, align 4
  br label %247

177:                                              ; preds = %31, %31
  %178 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %179 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @nested_vmx_exit_handled_msr(%struct.kvm_vcpu* %178, %struct.vmcs12* %179, i32 %180)
  store i32 %181, i32* %3, align 4
  br label %247

182:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

183:                                              ; preds = %31
  %184 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %185 = load i32, i32* @CPU_BASED_MWAIT_EXITING, align 4
  %186 = call i32 @nested_cpu_has(%struct.vmcs12* %184, i32 %185)
  store i32 %186, i32* %3, align 4
  br label %247

187:                                              ; preds = %31
  %188 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %189 = load i32, i32* @CPU_BASED_MONITOR_TRAP_FLAG, align 4
  %190 = call i32 @nested_cpu_has(%struct.vmcs12* %188, i32 %189)
  store i32 %190, i32* %3, align 4
  br label %247

191:                                              ; preds = %31
  %192 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %193 = load i32, i32* @CPU_BASED_MONITOR_EXITING, align 4
  %194 = call i32 @nested_cpu_has(%struct.vmcs12* %192, i32 %193)
  store i32 %194, i32* %3, align 4
  br label %247

195:                                              ; preds = %31
  %196 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %197 = load i32, i32* @CPU_BASED_PAUSE_EXITING, align 4
  %198 = call i32 @nested_cpu_has(%struct.vmcs12* %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %202 = load i32, i32* @SECONDARY_EXEC_PAUSE_LOOP_EXITING, align 4
  %203 = call i32 @nested_cpu_has2(%struct.vmcs12* %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %200, %195
  %206 = phi i1 [ true, %195 ], [ %204, %200 ]
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %3, align 4
  br label %247

208:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

209:                                              ; preds = %31
  %210 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %211 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %212 = call i32 @nested_cpu_has(%struct.vmcs12* %210, i32 %211)
  store i32 %212, i32* %3, align 4
  br label %247

213:                                              ; preds = %31, %31, %31
  store i32 1, i32* %3, align 4
  br label %247

214:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

215:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

216:                                              ; preds = %31
  %217 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %218 = load i32, i32* @SECONDARY_EXEC_ENABLE_INVPCID, align 4
  %219 = call i32 @nested_cpu_has2(%struct.vmcs12* %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %223 = load i32, i32* @CPU_BASED_INVLPG_EXITING, align 4
  %224 = call i32 @nested_cpu_has(%struct.vmcs12* %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br label %226

226:                                              ; preds = %221, %216
  %227 = phi i1 [ false, %216 ], [ %225, %221 ]
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %3, align 4
  br label %247

229:                                              ; preds = %31
  %230 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %231 = load i32, i32* @SECONDARY_EXEC_WBINVD_EXITING, align 4
  %232 = call i32 @nested_cpu_has2(%struct.vmcs12* %230, i32 %231)
  store i32 %232, i32* %3, align 4
  br label %247

233:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

234:                                              ; preds = %31, %31
  %235 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %236 = load i32, i32* @SECONDARY_EXEC_XSAVES, align 4
  %237 = call i32 @nested_cpu_has2(%struct.vmcs12* %235, i32 %236)
  store i32 %237, i32* %3, align 4
  br label %247

238:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

239:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

240:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

241:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %247

242:                                              ; preds = %31, %31
  %243 = load %struct.vmcs12*, %struct.vmcs12** %8, align 8
  %244 = load i32, i32* @SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE, align 4
  %245 = call i32 @nested_cpu_has2(%struct.vmcs12* %243, i32 %244)
  store i32 %245, i32* %3, align 4
  br label %247

246:                                              ; preds = %31
  store i32 1, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %242, %241, %240, %239, %238, %234, %233, %229, %226, %215, %214, %213, %209, %208, %205, %191, %187, %183, %182, %177, %173, %169, %165, %161, %160, %153, %146, %142, %138, %134, %130, %126, %125, %121, %120, %119, %115, %111, %110, %109, %100, %96, %84, %68, %52, %27, %20
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_kvm_nested_vmenter_failed(i8*, i32) #1

declare dso_local i32 @nested_mark_vmcs12_pages_dirty(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_nested_vmexit(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_readl(i32) #1

declare dso_local i32 @is_nmi(i32) #1

declare dso_local i32 @is_page_fault(i32) #1

declare dso_local i32 @is_debug(i32) #1

declare dso_local i32 @is_breakpoint(i32) #1

declare dso_local i32 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i32 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i32 @nested_vmx_exit_handled_vmcs_access(%struct.kvm_vcpu*, %struct.vmcs12*, i32) #1

declare dso_local i32 @nested_vmx_exit_handled_cr(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @nested_vmx_exit_handled_io(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @nested_vmx_exit_handled_msr(%struct.kvm_vcpu*, %struct.vmcs12*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
