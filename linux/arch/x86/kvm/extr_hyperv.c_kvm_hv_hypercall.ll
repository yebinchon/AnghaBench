; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_hypercall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }

@HV_STATUS_SUCCESS = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_14__* null, align 8
@UD_VECTOR = common dso_local global i32 0, align 4
@HV_HYPERCALL_FAST_BIT = common dso_local global i32 0, align 4
@HV_HYPERCALL_REP_COMP_OFFSET = common dso_local global i32 0, align 4
@HV_HYPERCALL_REP_START_OFFSET = common dso_local global i32 0, align 4
@HV_STATUS_INVALID_HYPERCALL_INPUT = common dso_local global i32 0, align 4
@HV_STATUS_INVALID_PORT_ID = common dso_local global i32 0, align 4
@KVM_EXIT_HYPERV = common dso_local global i32 0, align 4
@KVM_EXIT_HYPERV_HCALL = common dso_local global i32 0, align 4
@kvm_hv_hypercall_complete_userspace = common dso_local global i32 0, align 4
@HV_STATUS_INVALID_HYPERCALL_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_hv_hypercall(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %13 = load i32, i32* @HV_STATUS_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %15, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i64 %16(%struct.kvm_vcpu* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @is_protmode(%struct.kvm_vcpu* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = load i32, i32* @UD_VECTOR, align 4
  %27 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %25, i32 %26)
  store i32 1, i32* %2, align 4
  br label %284

28:                                               ; preds = %20
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i32 @kvm_rdx_read(%struct.kvm_vcpu* %29)
  %31 = shl i32 %30, 32
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = call i32 @kvm_rax_read(%struct.kvm_vcpu* %32)
  %34 = or i32 %31, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i64 @kvm_rbx_read(%struct.kvm_vcpu* %35)
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 32
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i32 @kvm_rcx_read(%struct.kvm_vcpu* %39)
  %41 = or i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i64 @kvm_rdi_read(%struct.kvm_vcpu* %42)
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 32
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @kvm_rsi_read(%struct.kvm_vcpu* %46)
  %48 = or i32 %45, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 65535
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @HV_HYPERCALL_FAST_BIT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @HV_HYPERCALL_REP_COMP_OFFSET, align 4
  %60 = ashr i32 %58, %59
  %61 = and i32 %60, 4095
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @HV_HYPERCALL_REP_START_OFFSET, align 4
  %64 = ashr i32 %62, %63
  %65 = and i32 %64, 4095
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %28
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %28
  %72 = phi i1 [ true, %28 ], [ %70, %68 ]
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @trace_kvm_hv_hypercall(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  switch i32 %83, label %278 [
    i32 132, label %84
    i32 128, label %93
    i32 131, label %109
    i32 136, label %170
    i32 134, label %191
    i32 135, label %209
    i32 133, label %230
    i32 130, label %248
    i32 129, label %260
  ]

84:                                               ; preds = %71
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @unlikely(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %89, i32* %7, align 4
  br label %280

90:                                               ; preds = %84
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = call i32 @kvm_vcpu_on_spin(%struct.kvm_vcpu* %91, i32 1)
  br label %280

93:                                               ; preds = %71
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @unlikely(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %98, i32* %7, align 4
  br label %280

99:                                               ; preds = %93
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @kvm_hvcall_signal_event(%struct.kvm_vcpu* %100, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @HV_STATUS_INVALID_PORT_ID, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %280

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %71, %108
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %114 = call %struct.TYPE_13__* @vcpu_to_synic(%struct.kvm_vcpu* %113)
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %112, %109
  %120 = phi i1 [ true, %109 ], [ %118, %112 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @unlikely(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %125, i32* %7, align 4
  br label %280

126:                                              ; preds = %119
  %127 = load i32, i32* @KVM_EXIT_HYPERV, align 4
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 8
  %132 = load i32, i32* @KVM_EXIT_HYPERV_HCALL, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 %132, i32* %137, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %146, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %156, i32* %165, align 4
  %166 = load i32, i32* @kvm_hv_hypercall_complete_userspace, align 4
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  store i32 0, i32* %2, align 4
  br label %284

170:                                              ; preds = %71
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %176, %173, %170
  %180 = phi i1 [ true, %173 ], [ true, %170 ], [ %178, %176 ]
  %181 = zext i1 %180 to i32
  %182 = call i32 @unlikely(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %185, i32* %7, align 4
  br label %280

186:                                              ; preds = %179
  %187 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @kvm_hv_flush_tlb(%struct.kvm_vcpu* %187, i32 %188, i32 %189, i32 0)
  store i32 %190, i32* %7, align 4
  br label %280

191:                                              ; preds = %71
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %194, %191
  %198 = phi i1 [ true, %191 ], [ %196, %194 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @unlikely(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %203, i32* %7, align 4
  br label %280

204:                                              ; preds = %197
  %205 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @kvm_hv_flush_tlb(%struct.kvm_vcpu* %205, i32 %206, i32 %207, i32 0)
  store i32 %208, i32* %7, align 4
  br label %280

209:                                              ; preds = %71
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br label %218

218:                                              ; preds = %215, %212, %209
  %219 = phi i1 [ true, %212 ], [ true, %209 ], [ %217, %215 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @unlikely(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %224, i32* %7, align 4
  br label %280

225:                                              ; preds = %218
  %226 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @kvm_hv_flush_tlb(%struct.kvm_vcpu* %226, i32 %227, i32 %228, i32 1)
  store i32 %229, i32* %7, align 4
  br label %280

230:                                              ; preds = %71
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br label %236

236:                                              ; preds = %233, %230
  %237 = phi i1 [ true, %230 ], [ %235, %233 ]
  %238 = zext i1 %237 to i32
  %239 = call i32 @unlikely(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %242, i32* %7, align 4
  br label %280

243:                                              ; preds = %236
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @kvm_hv_flush_tlb(%struct.kvm_vcpu* %244, i32 %245, i32 %246, i32 1)
  store i32 %247, i32* %7, align 4
  br label %280

248:                                              ; preds = %71
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @unlikely(i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %253, i32* %7, align 4
  br label %280

254:                                              ; preds = %248
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @kvm_hv_send_ipi(%struct.kvm_vcpu* %255, i32 %256, i32 %257, i32 0, i32 %258)
  store i32 %259, i32* %7, align 4
  br label %280

260:                                              ; preds = %71
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br label %266

266:                                              ; preds = %263, %260
  %267 = phi i1 [ true, %260 ], [ %265, %263 ]
  %268 = zext i1 %267 to i32
  %269 = call i32 @unlikely(i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_INPUT, align 4
  store i32 %272, i32* %7, align 4
  br label %280

273:                                              ; preds = %266
  %274 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @kvm_hv_send_ipi(%struct.kvm_vcpu* %274, i32 %275, i32 %276, i32 1, i32 0)
  store i32 %277, i32* %7, align 4
  br label %280

278:                                              ; preds = %71
  %279 = load i32, i32* @HV_STATUS_INVALID_HYPERCALL_CODE, align 4
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %278, %273, %271, %254, %252, %243, %241, %225, %223, %204, %202, %186, %184, %124, %107, %97, %90, %88
  %281 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @kvm_hv_hypercall_complete(%struct.kvm_vcpu* %281, i32 %282)
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %280, %126, %24
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i32 @is_protmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rdx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rax_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rbx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rcx_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rdi_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rsi_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_hv_hypercall(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @kvm_vcpu_on_spin(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_hvcall_signal_event(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @vcpu_to_synic(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_hv_flush_tlb(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvm_hv_send_ipi(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @kvm_hv_hypercall_complete(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
