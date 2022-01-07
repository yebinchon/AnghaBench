; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_host_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@VM_EXIT_HOST_ADDR_SPACE_SIZE = common dso_local global i32 0, align 4
@X86_CR4_PAE = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@X86_CR4_PCIDE = common dso_local global i32 0, align 4
@SEGMENT_RPL_MASK = common dso_local global i32 0, align 4
@SEGMENT_TI_MASK = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_check_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_host_state(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %9 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %8, i32 0, i32 21
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nested_host_cr0_valid(%struct.kvm_vcpu* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @CC(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %20 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nested_host_cr4_valid(%struct.kvm_vcpu* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @CC(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %17
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %31 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %30, i32 0, i32 20
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nested_cr3_valid(%struct.kvm_vcpu* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @CC(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28, %17, %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %301

42:                                               ; preds = %28
  %43 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %44 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = call i32 @is_noncanonical_address(i32 %45, %struct.kvm_vcpu* %46)
  %48 = call i64 @CC(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %52 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = call i32 @is_noncanonical_address(i32 %53, %struct.kvm_vcpu* %54)
  %56 = call i64 @CC(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50, %42
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %301

61:                                               ; preds = %50
  %62 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %63 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VM_EXIT_LOAD_IA32_PAT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %70 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %69, i32 0, i32 19
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @kvm_pat_valid(i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @CC(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %301

81:                                               ; preds = %68, %61
  store i32 0, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %86 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @VM_EXIT_HOST_ADDR_SPACE_SIZE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @CC(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %84
  %96 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %97 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @X86_CR4_PAE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @CC(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95, %84
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %301

109:                                              ; preds = %95
  br label %145

110:                                              ; preds = %81
  %111 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %112 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VM_EXIT_HOST_ADDR_SPACE_SIZE, align 4
  %115 = and i32 %113, %114
  %116 = call i64 @CC(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %141, label %118

118:                                              ; preds = %110
  %119 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %120 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %123 = and i32 %121, %122
  %124 = call i64 @CC(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %118
  %127 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %128 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @X86_CR4_PCIDE, align 4
  %131 = and i32 %129, %130
  %132 = call i64 @CC(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %126
  %135 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %136 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 32
  %139 = call i64 @CC(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134, %126, %118, %110
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %301

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %109
  %146 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %147 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %150 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = call i64 @CC(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %245, label %155

155:                                              ; preds = %145
  %156 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %157 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %160 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = call i64 @CC(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %245, label %165

165:                                              ; preds = %155
  %166 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %167 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %170 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = call i64 @CC(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %245, label %175

175:                                              ; preds = %165
  %176 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %177 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %180 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = call i64 @CC(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %245, label %185

185:                                              ; preds = %175
  %186 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %187 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %190 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %188, %191
  %193 = call i64 @CC(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %245, label %195

195:                                              ; preds = %185
  %196 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %197 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %200 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = call i64 @CC(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %245, label %205

205:                                              ; preds = %195
  %206 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %207 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %210 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %211 = or i32 %209, %210
  %212 = and i32 %208, %211
  %213 = call i64 @CC(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %245, label %215

215:                                              ; preds = %205
  %216 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %217 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i64 @CC(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %245, label %223

223:                                              ; preds = %215
  %224 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %225 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %224, i32 0, i32 12
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i64 @CC(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %223
  %232 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %233 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  br label %240

240:                                              ; preds = %236, %231
  %241 = phi i1 [ false, %231 ], [ %239, %236 ]
  %242 = zext i1 %241 to i32
  %243 = call i64 @CC(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240, %223, %215, %205, %195, %185, %175, %165, %155, %145
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %3, align 4
  br label %301

248:                                              ; preds = %240
  %249 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %250 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @VM_EXIT_LOAD_IA32_EFER, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %300

255:                                              ; preds = %248
  %256 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %257 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %258 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %257, i32 0, i32 18
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @kvm_valid_efer(%struct.kvm_vcpu* %256, i32 %259)
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = call i64 @CC(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %296, label %266

266:                                              ; preds = %255
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %269 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %268, i32 0, i32 18
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @EFER_LMA, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = icmp ne i32 %267, %276
  %278 = zext i1 %277 to i32
  %279 = call i64 @CC(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %296, label %281

281:                                              ; preds = %266
  %282 = load i32, i32* %6, align 4
  %283 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %284 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %283, i32 0, i32 18
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @EFER_LME, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = icmp ne i32 %282, %291
  %293 = zext i1 %292 to i32
  %294 = call i64 @CC(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %281, %266, %255
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %3, align 4
  br label %301

299:                                              ; preds = %281
  br label %300

300:                                              ; preds = %299, %248
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %300, %296, %245, %141, %106, %78, %58, %39
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @nested_host_cr0_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_host_cr4_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_cr3_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_noncanonical_address(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pat_valid(i32) #1

declare dso_local i32 @kvm_valid_efer(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
