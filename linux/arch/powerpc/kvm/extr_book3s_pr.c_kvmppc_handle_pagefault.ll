; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_handle_pagefault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_handle_pagefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu.0*, i32, %struct.kvmppc_pte*, i32, i32)*, i64 (%struct.kvm_vcpu.1*)*, i32 (%struct.kvm_vcpu.2*, i32, i32*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvmppc_pte = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_vcpu.1 = type opaque
%struct.kvm_vcpu.2 = type opaque
%struct.TYPE_5__ = type { i32, i32 }

@BOOK3S_INTERRUPT_DATA_STORAGE = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@DSISR_ISSTORE = common dso_local global i32 0, align 4
@KVM_PAM = common dso_local global i32 0, align 4
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@HPTE_R_M = common dso_local global i32 0, align 4
@VSID_REAL = common dso_local global i32 0, align 4
@SID_SHIFT = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_SPLIT_HACK = common dso_local global i32 0, align 4
@SPLIT_HACK_MASK = common dso_local global i32 0, align 4
@SPLIT_HACK_OFFS = common dso_local global i32 0, align 4
@VSID_REAL_DR = common dso_local global i32 0, align 4
@VSID_REAL_IR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_DCBZ32 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@DSISR_PROTFAULT = common dso_local global i32 0, align 4
@DSISR_NOHPTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i32 0, align 4
@RESUME_HOST_NV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_handle_pagefault(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.kvmppc_pte, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %6, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BOOK3S_INTERRUPT_DATA_STORAGE, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %25 = bitcast %struct.kvmppc_pte* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 36, i1 false)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %27 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %26)
  %28 = and i32 %27, 129
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %16, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %33 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %32)
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %16, align 4
  br label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %17, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DSISR_ISSTORE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %48, %44
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.kvm_vcpu.0*, i32, %struct.kvmppc_pte*, i32, i32)*, i32 (%struct.kvm_vcpu.0*, i32, %struct.kvmppc_pte*, i32, i32)** %64, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %67 = bitcast %struct.kvm_vcpu* %66 to %struct.kvm_vcpu.0*
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 %65(%struct.kvm_vcpu.0* %67, i32 %68, %struct.kvmppc_pte* %15, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  br label %89

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 2
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @KVM_PAM, align 4
  %78 = and i32 %76, %77
  %79 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 4
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 12
  %84 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 5
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @MMU_PAGE_64K, align 4
  %86 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 7
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @HPTE_R_M, align 4
  %88 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 6
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %72, %60
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %91 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %90)
  %92 = and i32 %91, 129
  switch i32 %92, label %169 [
    i32 0, label %93
    i32 129, label %101
    i32 128, label %126
  ]

93:                                               ; preds = %89
  %94 = load i32, i32* @VSID_REAL, align 4
  %95 = load i32, i32* @SID_SHIFT, align 4
  %96 = sub nsw i32 %95, 12
  %97 = shl i32 %94, %96
  %98 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %169

101:                                              ; preds = %89
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %125, label %104

104:                                              ; preds = %101
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BOOK3S_HFLAG_SPLIT_HACK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @SPLIT_HACK_OFFS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %112, %104, %101
  br label %126

126:                                              ; preds = %89, %125
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32 (%struct.kvm_vcpu.2*, i32, i32*)*, i32 (%struct.kvm_vcpu.2*, i32, i32*)** %130, align 8
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %133 = bitcast %struct.kvm_vcpu* %132 to %struct.kvm_vcpu.2*
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @SID_SHIFT, align 4
  %136 = ashr i32 %134, %135
  %137 = call i32 %131(%struct.kvm_vcpu.2* %133, i32 %136, i32* %18)
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %139 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %138)
  %140 = and i32 %139, 129
  %141 = icmp eq i32 %140, 129
  br i1 %141, label %142, label %150

142:                                              ; preds = %126
  %143 = load i32, i32* @VSID_REAL_DR, align 4
  %144 = load i32, i32* @SID_SHIFT, align 4
  %145 = sub nsw i32 %144, 12
  %146 = shl i32 %143, %145
  %147 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  br label %158

150:                                              ; preds = %126
  %151 = load i32, i32* @VSID_REAL_IR, align 4
  %152 = load i32, i32* @SID_SHIFT, align 4
  %153 = sub nsw i32 %152, 12
  %154 = shl i32 %151, %153
  %155 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %142
  %159 = load i32, i32* %18, align 4
  %160 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %165, %158
  br label %169

169:                                              ; preds = %89, %168, %93
  %170 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %171 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i64 (%struct.kvm_vcpu.1*)*, i64 (%struct.kvm_vcpu.1*)** %173, align 8
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %176 = bitcast %struct.kvm_vcpu* %175 to %struct.kvm_vcpu.1*
  %177 = call i64 %174(%struct.kvm_vcpu.1* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %169
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @BOOK3S_HFLAG_DCBZ32, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %179
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 0
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %187, %179, %169
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* @ENOENT, align 4
  %196 = sub nsw i32 0, %195
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @EPERM, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %233

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @EPERM, align 4
  %206 = sub nsw i32 0, %205
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* @DSISR_PROTFAULT, align 4
  store i32 %209, i32* %19, align 4
  br label %212

210:                                              ; preds = %203
  %211 = load i32, i32* @DSISR_NOHPTE, align 4
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %217 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @DSISR_ISSTORE, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* %19, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %19, align 4
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %19, align 4
  %227 = call i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %224, i32 %225, i32 %226)
  br label %232

228:                                              ; preds = %212
  %229 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %230 = load i32, i32* %19, align 4
  %231 = call i32 @kvmppc_core_queue_inst_storage(%struct.kvm_vcpu* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %215
  br label %338

233:                                              ; preds = %198
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %241 = call i32 @kvmppc_get_fault_dar(%struct.kvm_vcpu* %240)
  %242 = call i32 @kvmppc_set_dar(%struct.kvm_vcpu* %239, i32 %241)
  %243 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 128
  %246 = call i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu* %243, i32 %245)
  br label %337

247:                                              ; preds = %233
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %249 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @kvmppc_visible_gpa(%struct.kvm_vcpu* %248, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %311

253:                                              ; preds = %247
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %253
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %258 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @DSISR_NOHPTE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %256
  %265 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %266 = call i32 @kvmppc_mmu_unmap_page(%struct.kvm_vcpu* %265, %struct.kvmppc_pte* %15)
  br label %267

267:                                              ; preds = %264, %256, %253
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %269 = load i32, i32* %11, align 4
  %270 = call i32 @kvmppc_mmu_map_page(%struct.kvm_vcpu* %268, %struct.kvmppc_pte* %15, i32 %269)
  %271 = load i32, i32* @EIO, align 4
  %272 = sub nsw i32 0, %271
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %267
  %275 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %276 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %277 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* @RESUME_HOST, align 4
  store i32 %278, i32* %5, align 4
  br label %340

279:                                              ; preds = %267
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %279
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %284 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %310

288:                                              ; preds = %279
  %289 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %290 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i64 (%struct.kvm_vcpu.1*)*, i64 (%struct.kvm_vcpu.1*)** %292, align 8
  %294 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %295 = bitcast %struct.kvm_vcpu* %294 to %struct.kvm_vcpu.1*
  %296 = call i64 %293(%struct.kvm_vcpu.1* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %288
  %299 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %300 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @BOOK3S_HFLAG_DCBZ32, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %298
  %307 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %308 = call i32 @kvmppc_patch_dcbz(%struct.kvm_vcpu* %307, %struct.kvmppc_pte* %15)
  br label %309

309:                                              ; preds = %306, %298, %288
  br label %310

310:                                              ; preds = %309, %282
  br label %336

311:                                              ; preds = %247
  %312 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %313 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  %317 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %320 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 2
  store i32 %318, i32* %321, align 8
  %322 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %15, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %325 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 3
  store i32 %323, i32* %326, align 4
  %327 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %328 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %329 = call i32 @kvmppc_emulate_mmio(%struct.kvm_run* %327, %struct.kvm_vcpu* %328)
  store i32 %329, i32* %12, align 4
  %330 = load i32, i32* %12, align 4
  %331 = load i32, i32* @RESUME_HOST_NV, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %311
  %334 = load i32, i32* @RESUME_HOST, align 4
  store i32 %334, i32* %12, align 4
  br label %335

335:                                              ; preds = %333, %311
  br label %336

336:                                              ; preds = %335, %310
  br label %337

337:                                              ; preds = %336, %238
  br label %338

338:                                              ; preds = %337, %232
  %339 = load i32, i32* %12, align 4
  store i32 %339, i32* %5, align 4
  br label %340

340:                                              ; preds = %338, %274
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #2

declare dso_local i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu*, i32, i32) #2

declare dso_local i32 @kvmppc_core_queue_inst_storage(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @kvmppc_set_dar(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @kvmppc_get_fault_dar(%struct.kvm_vcpu*) #2

declare dso_local i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu*, i32) #2

declare dso_local i64 @kvmppc_visible_gpa(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @kvmppc_mmu_unmap_page(%struct.kvm_vcpu*, %struct.kvmppc_pte*) #2

declare dso_local i32 @kvmppc_mmu_map_page(%struct.kvm_vcpu*, %struct.kvmppc_pte*, i32) #2

declare dso_local i32 @kvmppc_patch_dcbz(%struct.kvm_vcpu*, %struct.kvmppc_pte*) #2

declare dso_local i32 @kvmppc_emulate_mmio(%struct.kvm_run*, %struct.kvm_vcpu*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
