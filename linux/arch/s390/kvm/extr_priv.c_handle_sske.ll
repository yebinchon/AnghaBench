; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_sske.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_sske.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_19__*, %struct.TYPE_16__, i32, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SSKE_MB = common dso_local global i8 0, align 1
@SSKE_MC = common dso_local global i8 0, align 1
@SSKE_MR = common dso_local global i8 0, align 1
@SSKE_NQ = common dso_local global i8 0, align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@_SEGMENT_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_22__* null, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PSW_BITS_AMODE_64BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_sske to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_sske(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 28
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %41 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %374

42:                                               ; preds = %1
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @try_handle_skey(%struct.kvm_vcpu* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  store i32 %56, i32* %2, align 4
  br label %374

57:                                               ; preds = %42
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @test_kvm_facility(i32 %60, i32 8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load i8, i8* @SSKE_MB, align 1
  %65 = zext i8 %64 to i32
  %66 = xor i32 %65, -1
  %67 = load i8, i8* %4, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %4, align 1
  br label %71

71:                                               ; preds = %63, %57
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @test_kvm_facility(i32 %74, i32 10)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %71
  %78 = load i8, i8* @SSKE_MC, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @SSKE_MR, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = xor i32 %82, -1
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %4, align 1
  br label %88

88:                                               ; preds = %77, %71
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @test_kvm_facility(i32 %91, i32 14)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %88
  %95 = load i8, i8* @SSKE_NQ, align 1
  %96 = zext i8 %95 to i32
  %97 = xor i32 %96, -1
  %98 = load i8, i8* %4, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, %97
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %4, align 1
  br label %102

102:                                              ; preds = %94, %88
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = call i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu* %103, i32* %9, i32* %10)
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 254
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %7, align 1
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @PAGE_MASK, align 8
  %131 = and i64 %129, %130
  store i64 %131, i64* %5, align 8
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %132, i64 %133)
  store i64 %134, i64* %5, align 8
  %135 = load i8, i8* %4, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @SSKE_MB, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %102
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @_SEGMENT_SIZE, align 8
  %144 = add i64 %142, %143
  %145 = load i64, i64* @_SEGMENT_SIZE, align 8
  %146 = sub i64 %145, 1
  %147 = xor i64 %146, -1
  %148 = and i64 %144, %147
  store i64 %148, i64* %6, align 8
  br label %156

149:                                              ; preds = %102
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %150, i64 %151)
  store i64 %152, i64* %5, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @PAGE_SIZE, align 8
  %155 = add i64 %153, %154
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %149, %141
  br label %157

157:                                              ; preds = %243, %156
  %158 = load i64, i64* %5, align 8
  %159 = load i64, i64* %6, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %247

161:                                              ; preds = %157
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @gpa_to_gfn(i64 %165)
  %167 = call i64 @gfn_to_hva(i32 %164, i32 %166)
  store i64 %167, i64* %13, align 8
  store i32 0, i32* %11, align 4
  %168 = load i64, i64* %13, align 8
  %169 = call i64 @kvm_is_error_hva(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %173 = load i32, i32* @PGM_ADDRESSING, align 4
  %174 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %172, i32 %173)
  store i32 %174, i32* %2, align 4
  br label %374

175:                                              ; preds = %161
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = call i32 @down_read(i32* %179)
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = load i8, i8* %7, align 1
  %186 = load i8, i8* %4, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @SSKE_NQ, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %187, %189
  %191 = trunc i32 %190 to i8
  %192 = load i8, i8* %4, align 1
  %193 = zext i8 %192 to i32
  %194 = load i8, i8* @SSKE_MR, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %193, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8, i8* %4, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8, i8* @SSKE_MC, align 1
  %201 = zext i8 %200 to i32
  %202 = and i32 %199, %201
  %203 = trunc i32 %202 to i8
  %204 = call i32 @cond_set_guest_storage_key(%struct.TYPE_13__* %183, i64 %184, i8 zeroext %185, i8* %8, i8 zeroext %191, i8 zeroext %197, i8 zeroext %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %175
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %214 = call i32 @fixup_user_fault(%struct.TYPE_22__* %208, %struct.TYPE_13__* %211, i64 %212, i32 %213, i32* %11)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %207
  %218 = load i32, i32* @EAGAIN, align 4
  %219 = sub nsw i32 0, %218
  br label %222

220:                                              ; preds = %207
  %221 = load i32, i32* %12, align 4
  br label %222

222:                                              ; preds = %220, %217
  %223 = phi i32 [ %219, %217 ], [ %221, %220 ]
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %222, %175
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = call i32 @up_read(i32* %228)
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @EFAULT, align 4
  %232 = sub nsw i32 0, %231
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %224
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %236 = load i32, i32* @PGM_ADDRESSING, align 4
  %237 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %235, i32 %236)
  store i32 %237, i32* %2, align 4
  br label %374

238:                                              ; preds = %224
  %239 = load i32, i32* %12, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = load i32, i32* %12, align 4
  store i32 %242, i32* %2, align 4
  br label %374

243:                                              ; preds = %238
  %244 = load i64, i64* @PAGE_SIZE, align 8
  %245 = load i64, i64* %5, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %5, align 8
  br label %157

247:                                              ; preds = %157
  %248 = load i8, i8* %4, align 1
  %249 = zext i8 %248 to i32
  %250 = load i8, i8* @SSKE_MC, align 1
  %251 = zext i8 %250 to i32
  %252 = load i8, i8* @SSKE_MR, align 1
  %253 = zext i8 %252 to i32
  %254 = or i32 %251, %253
  %255 = and i32 %249, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %301

257:                                              ; preds = %247
  %258 = load i8, i8* %4, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, i8* @SSKE_MB, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %259, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %266 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %265, i32 3)
  br label %300

267:                                              ; preds = %257
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %269 = load i32, i32* %12, align 4
  %270 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %268, i32 %269)
  %271 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %272 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %271, i32 0, i32 0
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = and i64 %282, -65281
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %280, align 4
  %285 = load i8, i8* %8, align 1
  %286 = zext i8 %285 to i32
  %287 = shl i32 %286, 8
  %288 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %289 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %288, i32 0, i32 0
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %287
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %267, %264
  br label %301

301:                                              ; preds = %300, %247
  %302 = load i8, i8* %4, align 1
  %303 = zext i8 %302 to i32
  %304 = load i8, i8* @SSKE_MB, align 1
  %305 = zext i8 %304 to i32
  %306 = and i32 %303, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %373

308:                                              ; preds = %301
  %309 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %310 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i64 @psw_bits(i32 %315)
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i64 %316, i64* %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @PSW_BITS_AMODE_64BIT, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %339

322:                                              ; preds = %308
  %323 = load i64, i64* @PAGE_MASK, align 8
  %324 = xor i64 %323, -1
  %325 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %326 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %325, i32 0, i32 0
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = and i64 %336, %324
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %334, align 4
  br label %354

339:                                              ; preds = %308
  %340 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %341 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %340, i32 0, i32 0
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %10, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = and i64 %351, -4294963201
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %349, align 4
  br label %354

354:                                              ; preds = %339, %322
  %355 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %356 = load i64, i64* %6, align 8
  %357 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %355, i64 %356)
  store i64 %357, i64* %6, align 8
  %358 = load i64, i64* %6, align 8
  %359 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %360 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %359, i32 0, i32 0
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = or i64 %370, %358
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %368, align 4
  br label %373

373:                                              ; preds = %354, %301
  store i32 0, i32* %2, align 4
  br label %374

374:                                              ; preds = %373, %241, %234, %171, %55, %38
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @try_handle_skey(%struct.kvm_vcpu*) #1

declare dso_local i32 @test_kvm_facility(i32, i32) #1

declare dso_local i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @gfn_to_hva(i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @cond_set_guest_storage_key(%struct.TYPE_13__*, i64, i8 zeroext, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @fixup_user_fault(%struct.TYPE_22__*, %struct.TYPE_13__*, i64, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @psw_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
