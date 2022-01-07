; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_compute_secondary_exec_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_compute_secondary_exec_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vcpu_vmx = type { i64, i32, %struct.TYPE_5__, %struct.kvm_vcpu }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { i32 }

@vmcs_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@pt_mode = common dso_local global i64 0, align 8
@PT_MODE_SYSTEM = common dso_local global i64 0, align 8
@SECONDARY_EXEC_PT_USE_GPA = common dso_local global i32 0, align 4
@SECONDARY_EXEC_PT_CONCEAL_VMX = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_VPID = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_EPT = common dso_local global i32 0, align 4
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@SECONDARY_EXEC_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@SECONDARY_EXEC_PAUSE_LOOP_EXITING = common dso_local global i32 0, align 4
@SECONDARY_EXEC_APIC_REGISTER_VIRT = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE = common dso_local global i32 0, align 4
@SECONDARY_EXEC_DESC = common dso_local global i32 0, align 4
@SECONDARY_EXEC_SHADOW_VMCS = common dso_local global i32 0, align 4
@enable_pml = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_PML = common dso_local global i32 0, align 4
@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@X86_FEATURE_XSAVES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_XSAVES = common dso_local global i32 0, align 4
@nested = common dso_local global i64 0, align 8
@X86_FEATURE_RDTSCP = common dso_local global i32 0, align 4
@SECONDARY_EXEC_RDTSCP = common dso_local global i32 0, align 4
@X86_FEATURE_INVPCID = common dso_local global i32 0, align 4
@X86_FEATURE_PCID = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_INVPCID = common dso_local global i32 0, align 4
@X86_FEATURE_RDRAND = common dso_local global i32 0, align 4
@SECONDARY_EXEC_RDRAND_EXITING = common dso_local global i32 0, align 4
@X86_FEATURE_RDSEED = common dso_local global i32 0, align 4
@SECONDARY_EXEC_RDSEED_EXITING = common dso_local global i32 0, align 4
@X86_FEATURE_WAITPKG = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @vmx_compute_secondary_exec_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_compute_secondary_exec_control(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 3
  store %struct.kvm_vcpu* %12, %struct.kvm_vcpu** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmcs_config, i32 0, i32 0), align 4
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @pt_mode, align 8
  %15 = load i64, i64* @PT_MODE_SYSTEM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @SECONDARY_EXEC_PT_USE_GPA, align 4
  %19 = load i32, i32* @SECONDARY_EXEC_PT_CONCEAL_VMX, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32 @cpu_need_virtualize_apic_accesses(%struct.kvm_vcpu* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %35 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @SECONDARY_EXEC_ENABLE_VPID, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @enable_ept, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @SECONDARY_EXEC_ENABLE_EPT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  store i64 0, i64* @enable_unrestricted_guest, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i64, i64* @enable_unrestricted_guest, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @SECONDARY_EXEC_UNRESTRICTED_GUEST, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %61 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @kvm_pause_in_guest(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @SECONDARY_EXEC_PAUSE_LOOP_EXITING, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = call i32 @kvm_vcpu_apicv_active(%struct.kvm_vcpu* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @SECONDARY_EXEC_APIC_REGISTER_VIRT, align 4
  %77 = load i32, i32* @SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %75, %71
  %83 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @SECONDARY_EXEC_DESC, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @SECONDARY_EXEC_SHADOW_VMCS, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @enable_pml, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %82
  %98 = load i32, i32* @SECONDARY_EXEC_ENABLE_PML, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %4, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %82
  %103 = call i64 (...) @vmx_xsaves_supported()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %150

105:                                              ; preds = %102
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %108 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = load i32, i32* @X86_FEATURE_XSAVES, align 4
  %113 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ false, %105 ], [ %114, %110 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @SECONDARY_EXEC_XSAVES, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %4, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i64, i64* @nested, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* @SECONDARY_EXEC_XSAVES, align 4
  %133 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %134 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 4
  br label %148

139:                                              ; preds = %128
  %140 = load i32, i32* @SECONDARY_EXEC_XSAVES, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %143 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %141
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %139, %131
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149, %102
  %151 = call i64 (...) @vmx_rdtscp_supported()
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %189

153:                                              ; preds = %150
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = load i32, i32* @X86_FEATURE_RDTSCP, align 4
  %156 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %154, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* @SECONDARY_EXEC_RDTSCP, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %4, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i64, i64* @nested, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i32, i32* @SECONDARY_EXEC_RDTSCP, align 4
  %172 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %173 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 4
  br label %187

178:                                              ; preds = %167
  %179 = load i32, i32* @SECONDARY_EXEC_RDTSCP, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %182 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, %180
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %178, %170
  br label %188

188:                                              ; preds = %187, %164
  br label %189

189:                                              ; preds = %188, %150
  %190 = call i64 (...) @vmx_invpcid_supported()
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %240

192:                                              ; preds = %189
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = load i32, i32* @X86_FEATURE_INVPCID, align 4
  %195 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %199 = load i32, i32* @X86_FEATURE_PCID, align 4
  %200 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br label %202

202:                                              ; preds = %197, %192
  %203 = phi i1 [ false, %192 ], [ %201, %197 ]
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* @SECONDARY_EXEC_ENABLE_INVPCID, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %4, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %4, align 4
  %212 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %213 = load i32, i32* @X86_FEATURE_INVPCID, align 4
  %214 = call i32 @guest_cpuid_clear(%struct.kvm_vcpu* %212, i32 %213)
  br label %215

215:                                              ; preds = %207, %202
  %216 = load i64, i64* @nested, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %239

218:                                              ; preds = %215
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load i32, i32* @SECONDARY_EXEC_ENABLE_INVPCID, align 4
  %223 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %224 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %222
  store i32 %228, i32* %226, align 4
  br label %238

229:                                              ; preds = %218
  %230 = load i32, i32* @SECONDARY_EXEC_ENABLE_INVPCID, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %233 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %231
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %229, %221
  br label %239

239:                                              ; preds = %238, %215
  br label %240

240:                                              ; preds = %239, %189
  %241 = call i64 (...) @vmx_rdrand_supported()
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %279

243:                                              ; preds = %240
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %245 = load i32, i32* @X86_FEATURE_RDRAND, align 4
  %246 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %244, i32 %245)
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i32, i32* @SECONDARY_EXEC_RDRAND_EXITING, align 4
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %4, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %249, %243
  %255 = load i64, i64* @nested, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %278

257:                                              ; preds = %254
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %257
  %261 = load i32, i32* @SECONDARY_EXEC_RDRAND_EXITING, align 4
  %262 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %263 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %261
  store i32 %267, i32* %265, align 4
  br label %277

268:                                              ; preds = %257
  %269 = load i32, i32* @SECONDARY_EXEC_RDRAND_EXITING, align 4
  %270 = xor i32 %269, -1
  %271 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %272 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = and i32 %275, %270
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %268, %260
  br label %278

278:                                              ; preds = %277, %254
  br label %279

279:                                              ; preds = %278, %240
  %280 = call i64 (...) @vmx_rdseed_supported()
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %318

282:                                              ; preds = %279
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %284 = load i32, i32* @X86_FEATURE_RDSEED, align 4
  %285 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %283, i32 %284)
  store i32 %285, i32* %9, align 4
  %286 = load i32, i32* %9, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %282
  %289 = load i32, i32* @SECONDARY_EXEC_RDSEED_EXITING, align 4
  %290 = xor i32 %289, -1
  %291 = load i32, i32* %4, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %288, %282
  %294 = load i64, i64* @nested, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %317

296:                                              ; preds = %293
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %296
  %300 = load i32, i32* @SECONDARY_EXEC_RDSEED_EXITING, align 4
  %301 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %302 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %300
  store i32 %306, i32* %304, align 4
  br label %316

307:                                              ; preds = %296
  %308 = load i32, i32* @SECONDARY_EXEC_RDSEED_EXITING, align 4
  %309 = xor i32 %308, -1
  %310 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %311 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, %309
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %307, %299
  br label %317

317:                                              ; preds = %316, %293
  br label %318

318:                                              ; preds = %317, %279
  %319 = call i64 (...) @vmx_waitpkg_supported()
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %357

321:                                              ; preds = %318
  %322 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %323 = load i32, i32* @X86_FEATURE_WAITPKG, align 4
  %324 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %322, i32 %323)
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %321
  %328 = load i32, i32* @SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE, align 4
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %4, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %327, %321
  %333 = load i64, i64* @nested, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %356

335:                                              ; preds = %332
  %336 = load i32, i32* %10, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %335
  %339 = load i32, i32* @SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE, align 4
  %340 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %341 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %339
  store i32 %345, i32* %343, align 4
  br label %355

346:                                              ; preds = %335
  %347 = load i32, i32* @SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE, align 4
  %348 = xor i32 %347, -1
  %349 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %350 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = and i32 %353, %348
  store i32 %354, i32* %352, align 4
  br label %355

355:                                              ; preds = %346, %338
  br label %356

356:                                              ; preds = %355, %332
  br label %357

357:                                              ; preds = %356, %318
  %358 = load i32, i32* %4, align 4
  %359 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %360 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 8
  ret void
}

declare dso_local i32 @cpu_need_virtualize_apic_accesses(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_pause_in_guest(i32) #1

declare dso_local i32 @kvm_vcpu_apicv_active(%struct.kvm_vcpu*) #1

declare dso_local i64 @vmx_xsaves_supported(...) #1

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vmx_rdtscp_supported(...) #1

declare dso_local i64 @vmx_invpcid_supported(...) #1

declare dso_local i32 @guest_cpuid_clear(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vmx_rdrand_supported(...) #1

declare dso_local i64 @vmx_rdseed_supported(...) #1

declare dso_local i64 @vmx_waitpkg_supported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
