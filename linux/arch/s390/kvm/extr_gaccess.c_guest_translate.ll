; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_guest_translate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_guest_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%union.asce = type { i64 }
%union.vaddress = type { i64 }
%union.raddress = type { i64 }
%union.page_table_entry = type { i64 }
%union.ctlreg0 = type { i64 }
%union.region1_table_entry = type { i32 }
%union.region2_table_entry = type { i32 }
%union.region3_table_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%union.segment_table_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PGM_REGION_FIRST_TRANS = common dso_local global i64 0, align 8
@PGM_ASCE_TYPE = common dso_local global i64 0, align 8
@PGM_REGION_SECOND_TRANS = common dso_local global i64 0, align 8
@PGM_REGION_THIRD_TRANS = common dso_local global i64 0, align 8
@PGM_SEGMENT_TRANSLATION = common dso_local global i64 0, align 8
@PGM_ADDRESSING = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@TABLE_TYPE_REGION1 = common dso_local global i32 0, align 4
@PGM_TRANSLATION_SPEC = common dso_local global i64 0, align 8
@TABLE_TYPE_REGION2 = common dso_local global i32 0, align 4
@TABLE_TYPE_REGION3 = common dso_local global i32 0, align 4
@TABLE_TYPE_SEGMENT = common dso_local global i32 0, align 4
@PGM_PAGE_TRANSLATION = common dso_local global i64 0, align 8
@GACC_STORE = common dso_local global i32 0, align 4
@PROT_TYPE_DAT = common dso_local global i32 0, align 4
@PGM_PROTECTION = common dso_local global i64 0, align 8
@GACC_IFETCH = common dso_local global i32 0, align 4
@PROT_TYPE_IEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i64, i64*, i64, i32, i32*)* @guest_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @guest_translate(%struct.kvm_vcpu* %0, i64 %1, i64* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %union.asce, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %union.vaddress, align 8
  %15 = alloca %union.raddress, align 8
  %16 = alloca %union.page_table_entry, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %union.ctlreg0, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %union.region1_table_entry, align 4
  %25 = alloca %union.region2_table_entry, align 4
  %26 = alloca %union.region3_table_entry, align 4
  %27 = alloca %union.segment_table_entry, align 4
  %28 = getelementptr inbounds %union.asce, %union.asce* %8, i32 0, i32 0
  store i64 %3, i64* %28, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %29 = bitcast %union.vaddress* %14 to i64*
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %29, align 8
  %31 = bitcast %union.raddress* %15 to i64*
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %31, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.ctlreg0* %19 to i32*
  store i32 %40, i32* %41, align 8
  %42 = bitcast %union.ctlreg0* %19 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %6
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @test_kvm_facility(i32 %48, i32 8)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %6
  %52 = phi i1 [ false, %6 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @test_kvm_facility(i32 %59, i32 78)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ false, %51 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %22, align 4
  %65 = bitcast %union.ctlreg0* %19 to i32*
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @test_kvm_facility(i32 %71, i32 130)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ false, %62 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %23, align 4
  %77 = bitcast %union.asce* %8 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %538

81:                                               ; preds = %74
  %82 = bitcast %union.asce* %8 to i32*
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %20, align 8
  %87 = bitcast %union.asce* %8 to i32*
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %179 [
    i32 131, label %89
    i32 130, label %104
    i32 129, label %125
    i32 128, label %150
  ]

89:                                               ; preds = %81
  %90 = bitcast %union.vaddress* %14 to i32*
  %91 = load i32, i32* %90, align 8
  %92 = bitcast %union.asce* %8 to i32*
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @PGM_REGION_FIRST_TRANS, align 8
  store i64 %96, i64* %7, align 8
  br label %583

97:                                               ; preds = %89
  %98 = bitcast %union.vaddress* %14 to i32*
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %99, 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %20, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %20, align 8
  br label %179

104:                                              ; preds = %81
  %105 = bitcast %union.vaddress* %14 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* @PGM_ASCE_TYPE, align 8
  store i64 %109, i64* %7, align 8
  br label %583

110:                                              ; preds = %104
  %111 = bitcast %union.vaddress* %14 to i32*
  %112 = load i32, i32* %111, align 8
  %113 = bitcast %union.asce* %8 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i64, i64* @PGM_REGION_SECOND_TRANS, align 8
  store i64 %117, i64* %7, align 8
  br label %583

118:                                              ; preds = %110
  %119 = bitcast %union.vaddress* %14 to i32*
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %20, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %20, align 8
  br label %179

125:                                              ; preds = %81
  %126 = bitcast %union.vaddress* %14 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = bitcast %union.vaddress* %14 to i32*
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129, %125
  %134 = load i64, i64* @PGM_ASCE_TYPE, align 8
  store i64 %134, i64* %7, align 8
  br label %583

135:                                              ; preds = %129
  %136 = bitcast %union.vaddress* %14 to i32*
  %137 = load i32, i32* %136, align 8
  %138 = bitcast %union.asce* %8 to i32*
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i64, i64* @PGM_REGION_THIRD_TRANS, align 8
  store i64 %142, i64* %7, align 8
  br label %583

143:                                              ; preds = %135
  %144 = bitcast %union.vaddress* %14 to i32*
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %20, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %20, align 8
  br label %179

150:                                              ; preds = %81
  %151 = bitcast %union.vaddress* %14 to i32*
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = bitcast %union.vaddress* %14 to i32*
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = bitcast %union.vaddress* %14 to i32*
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158, %154, %150
  %163 = load i64, i64* @PGM_ASCE_TYPE, align 8
  store i64 %163, i64* %7, align 8
  br label %583

164:                                              ; preds = %158
  %165 = bitcast %union.vaddress* %14 to i32*
  %166 = load i32, i32* %165, align 8
  %167 = bitcast %union.asce* %8 to i32*
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i64, i64* @PGM_SEGMENT_TRANSLATION, align 8
  store i64 %171, i64* %7, align 8
  br label %583

172:                                              ; preds = %164
  %173 = bitcast %union.vaddress* %14 to i32*
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %174, 8
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %20, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %20, align 8
  br label %179

179:                                              ; preds = %81, %172, %143, %118, %97
  %180 = bitcast %union.asce* %8 to i32*
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %496 [
    i32 131, label %182
    i32 130, label %247
    i32 129, label %312
    i32 128, label %416
  ]

182:                                              ; preds = %179
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %184 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i64, i64* %20, align 8
  %187 = call i64 @kvm_is_error_gpa(i32 %185, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load i64, i64* @PGM_ADDRESSING, align 8
  store i64 %190, i64* %7, align 8
  br label %583

191:                                              ; preds = %182
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %193 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i64, i64* %20, align 8
  %196 = bitcast %union.region1_table_entry* %24 to i32*
  %197 = call i64 @deref_table(i32 %194, i64 %195, i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load i64, i64* @EFAULT, align 8
  %201 = sub i64 0, %200
  store i64 %201, i64* %7, align 8
  br label %583

202:                                              ; preds = %191
  %203 = bitcast %union.region1_table_entry* %24 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i64, i64* @PGM_REGION_FIRST_TRANS, align 8
  store i64 %207, i64* %7, align 8
  br label %583

208:                                              ; preds = %202
  %209 = bitcast %union.region1_table_entry* %24 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @TABLE_TYPE_REGION1, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %214, i64* %7, align 8
  br label %583

215:                                              ; preds = %208
  %216 = bitcast %union.vaddress* %14 to i32*
  %217 = load i32, i32* %216, align 8
  %218 = bitcast %union.region1_table_entry* %24 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = bitcast %union.vaddress* %14 to i32*
  %223 = load i32, i32* %222, align 8
  %224 = bitcast %union.region1_table_entry* %24 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %223, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %221, %215
  %228 = load i64, i64* @PGM_REGION_SECOND_TRANS, align 8
  store i64 %228, i64* %7, align 8
  br label %583

229:                                              ; preds = %221
  %230 = load i32, i32* %21, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = bitcast %union.region1_table_entry* %24 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %17, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %17, align 4
  br label %237

237:                                              ; preds = %232, %229
  %238 = bitcast %union.region1_table_entry* %24 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @PAGE_SIZE, align 4
  %241 = mul nsw i32 %239, %240
  %242 = bitcast %union.vaddress* %14 to i32*
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 %243, 8
  %245 = add nsw i32 %241, %244
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %20, align 8
  br label %247

247:                                              ; preds = %179, %237
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %249 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i64, i64* %20, align 8
  %252 = call i64 @kvm_is_error_gpa(i32 %250, i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = load i64, i64* @PGM_ADDRESSING, align 8
  store i64 %255, i64* %7, align 8
  br label %583

256:                                              ; preds = %247
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %258 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i64, i64* %20, align 8
  %261 = bitcast %union.region2_table_entry* %25 to i32*
  %262 = call i64 @deref_table(i32 %259, i64 %260, i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %256
  %265 = load i64, i64* @EFAULT, align 8
  %266 = sub i64 0, %265
  store i64 %266, i64* %7, align 8
  br label %583

267:                                              ; preds = %256
  %268 = bitcast %union.region2_table_entry* %25 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = load i64, i64* @PGM_REGION_SECOND_TRANS, align 8
  store i64 %272, i64* %7, align 8
  br label %583

273:                                              ; preds = %267
  %274 = bitcast %union.region2_table_entry* %25 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @TABLE_TYPE_REGION2, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %279, i64* %7, align 8
  br label %583

280:                                              ; preds = %273
  %281 = bitcast %union.vaddress* %14 to i32*
  %282 = load i32, i32* %281, align 8
  %283 = bitcast %union.region2_table_entry* %25 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = icmp slt i32 %282, %284
  br i1 %285, label %292, label %286

286:                                              ; preds = %280
  %287 = bitcast %union.vaddress* %14 to i32*
  %288 = load i32, i32* %287, align 8
  %289 = bitcast %union.region2_table_entry* %25 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = icmp sgt i32 %288, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %286, %280
  %293 = load i64, i64* @PGM_REGION_THIRD_TRANS, align 8
  store i64 %293, i64* %7, align 8
  br label %583

294:                                              ; preds = %286
  %295 = load i32, i32* %21, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = bitcast %union.region2_table_entry* %25 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %17, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %17, align 4
  br label %302

302:                                              ; preds = %297, %294
  %303 = bitcast %union.region2_table_entry* %25 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @PAGE_SIZE, align 4
  %306 = mul nsw i32 %304, %305
  %307 = bitcast %union.vaddress* %14 to i32*
  %308 = load i32, i32* %307, align 8
  %309 = mul nsw i32 %308, 8
  %310 = add nsw i32 %306, %309
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %20, align 8
  br label %312

312:                                              ; preds = %179, %302
  %313 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %314 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i64, i64* %20, align 8
  %317 = call i64 @kvm_is_error_gpa(i32 %315, i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %312
  %320 = load i64, i64* @PGM_ADDRESSING, align 8
  store i64 %320, i64* %7, align 8
  br label %583

321:                                              ; preds = %312
  %322 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %323 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i64, i64* %20, align 8
  %326 = bitcast %union.region3_table_entry* %26 to i32*
  %327 = call i64 @deref_table(i32 %324, i64 %325, i32* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %321
  %330 = load i64, i64* @EFAULT, align 8
  %331 = sub i64 0, %330
  store i64 %331, i64* %7, align 8
  br label %583

332:                                              ; preds = %321
  %333 = bitcast %union.region3_table_entry* %26 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %332
  %337 = load i64, i64* @PGM_REGION_THIRD_TRANS, align 8
  store i64 %337, i64* %7, align 8
  br label %583

338:                                              ; preds = %332
  %339 = bitcast %union.region3_table_entry* %26 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @TABLE_TYPE_REGION3, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %344, i64* %7, align 8
  br label %583

345:                                              ; preds = %338
  %346 = bitcast %union.region3_table_entry* %26 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %345
  %350 = bitcast %union.asce* %8 to i32*
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %349
  %354 = load i32, i32* %22, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %357, i64* %7, align 8
  br label %583

358:                                              ; preds = %353, %349, %345
  %359 = bitcast %union.region3_table_entry* %26 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %378

362:                                              ; preds = %358
  %363 = load i32, i32* %22, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %362
  %366 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_9__*
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %17, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %17, align 4
  %371 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_9__*
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %18, align 4
  %374 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_9__*
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = bitcast %union.raddress* %15 to i32*
  store i32 %376, i32* %377, align 8
  br label %544

378:                                              ; preds = %362, %358
  %379 = bitcast %union.vaddress* %14 to i32*
  %380 = load i32, i32* %379, align 8
  %381 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_10__*
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %378
  %386 = load i64, i64* @PGM_SEGMENT_TRANSLATION, align 8
  store i64 %386, i64* %7, align 8
  br label %583

387:                                              ; preds = %378
  %388 = bitcast %union.vaddress* %14 to i32*
  %389 = load i32, i32* %388, align 8
  %390 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_10__*
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = icmp sgt i32 %389, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %387
  %395 = load i64, i64* @PGM_SEGMENT_TRANSLATION, align 8
  store i64 %395, i64* %7, align 8
  br label %583

396:                                              ; preds = %387
  %397 = load i32, i32* %21, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  %400 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_10__*
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* %17, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %17, align 4
  br label %405

405:                                              ; preds = %399, %396
  %406 = bitcast %union.region3_table_entry* %26 to %struct.TYPE_10__*
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @PAGE_SIZE, align 4
  %410 = mul nsw i32 %408, %409
  %411 = bitcast %union.vaddress* %14 to i32*
  %412 = load i32, i32* %411, align 8
  %413 = mul nsw i32 %412, 8
  %414 = add nsw i32 %410, %413
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %20, align 8
  br label %416

416:                                              ; preds = %179, %405
  %417 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %418 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i64, i64* %20, align 8
  %421 = call i64 @kvm_is_error_gpa(i32 %419, i64 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %416
  %424 = load i64, i64* @PGM_ADDRESSING, align 8
  store i64 %424, i64* %7, align 8
  br label %583

425:                                              ; preds = %416
  %426 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %427 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i64, i64* %20, align 8
  %430 = bitcast %union.segment_table_entry* %27 to i32*
  %431 = call i64 @deref_table(i32 %428, i64 %429, i32* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %425
  %434 = load i64, i64* @EFAULT, align 8
  %435 = sub i64 0, %434
  store i64 %435, i64* %7, align 8
  br label %583

436:                                              ; preds = %425
  %437 = bitcast %union.segment_table_entry* %27 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %436
  %441 = load i64, i64* @PGM_SEGMENT_TRANSLATION, align 8
  store i64 %441, i64* %7, align 8
  br label %583

442:                                              ; preds = %436
  %443 = bitcast %union.segment_table_entry* %27 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @TABLE_TYPE_SEGMENT, align 4
  %446 = icmp ne i32 %444, %445
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %448, i64* %7, align 8
  br label %583

449:                                              ; preds = %442
  %450 = bitcast %union.segment_table_entry* %27 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %449
  %454 = bitcast %union.asce* %8 to i32*
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %453
  %458 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %458, i64* %7, align 8
  br label %583

459:                                              ; preds = %453, %449
  %460 = bitcast %union.segment_table_entry* %27 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %479

463:                                              ; preds = %459
  %464 = load i32, i32* %21, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %479

466:                                              ; preds = %463
  %467 = bitcast %union.segment_table_entry* %27 to %struct.TYPE_11__*
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* %17, align 4
  %471 = or i32 %470, %469
  store i32 %471, i32* %17, align 4
  %472 = bitcast %union.segment_table_entry* %27 to %struct.TYPE_11__*
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  store i32 %474, i32* %18, align 4
  %475 = bitcast %union.segment_table_entry* %27 to %struct.TYPE_11__*
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = bitcast %union.raddress* %15 to i32*
  store i32 %477, i32* %478, align 8
  br label %544

479:                                              ; preds = %463, %459
  %480 = bitcast %union.segment_table_entry* %27 to %struct.TYPE_12__*
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %17, align 4
  %484 = or i32 %483, %482
  store i32 %484, i32* %17, align 4
  %485 = bitcast %union.segment_table_entry* %27 to %struct.TYPE_12__*
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @PAGE_SIZE, align 4
  %489 = sdiv i32 %488, 2
  %490 = mul nsw i32 %487, %489
  %491 = bitcast %union.vaddress* %14 to i32*
  %492 = load i32, i32* %491, align 8
  %493 = mul nsw i32 %492, 8
  %494 = add nsw i32 %490, %493
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %20, align 8
  br label %496

496:                                              ; preds = %479, %179
  %497 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %498 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i64, i64* %20, align 8
  %501 = call i64 @kvm_is_error_gpa(i32 %499, i64 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %496
  %504 = load i64, i64* @PGM_ADDRESSING, align 8
  store i64 %504, i64* %7, align 8
  br label %583

505:                                              ; preds = %496
  %506 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %507 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i64, i64* %20, align 8
  %510 = bitcast %union.page_table_entry* %16 to i32*
  %511 = call i64 @deref_table(i32 %508, i64 %509, i32* %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %505
  %514 = load i64, i64* @EFAULT, align 8
  %515 = sub i64 0, %514
  store i64 %515, i64* %7, align 8
  br label %583

516:                                              ; preds = %505
  %517 = bitcast %union.page_table_entry* %16 to i64*
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %516
  %521 = load i64, i64* @PGM_PAGE_TRANSLATION, align 8
  store i64 %521, i64* %7, align 8
  br label %583

522:                                              ; preds = %516
  %523 = bitcast %union.page_table_entry* %16 to i64*
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %522
  %527 = load i64, i64* @PGM_TRANSLATION_SPEC, align 8
  store i64 %527, i64* %7, align 8
  br label %583

528:                                              ; preds = %522
  %529 = bitcast %union.page_table_entry* %16 to i32*
  %530 = load i32, i32* %529, align 8
  %531 = load i32, i32* %17, align 4
  %532 = or i32 %531, %530
  store i32 %532, i32* %17, align 4
  %533 = bitcast %union.page_table_entry* %16 to i32*
  %534 = load i32, i32* %533, align 8
  store i32 %534, i32* %18, align 4
  %535 = bitcast %union.page_table_entry* %16 to i32*
  %536 = load i32, i32* %535, align 8
  %537 = bitcast %union.raddress* %15 to i32*
  store i32 %536, i32* %537, align 8
  br label %538

538:                                              ; preds = %528, %80
  %539 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %540 = bitcast %union.raddress* %15 to i64*
  %541 = load i64, i64* %540, align 8
  %542 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %539, i64 %541)
  %543 = bitcast %union.raddress* %15 to i64*
  store i64 %542, i64* %543, align 8
  br label %544

544:                                              ; preds = %538, %466, %365
  %545 = load i32, i32* %12, align 4
  %546 = load i32, i32* @GACC_STORE, align 4
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %548, label %555

548:                                              ; preds = %544
  %549 = load i32, i32* %17, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %555

551:                                              ; preds = %548
  %552 = load i32, i32* @PROT_TYPE_DAT, align 4
  %553 = load i32*, i32** %13, align 8
  store i32 %552, i32* %553, align 4
  %554 = load i64, i64* @PGM_PROTECTION, align 8
  store i64 %554, i64* %7, align 8
  br label %583

555:                                              ; preds = %548, %544
  %556 = load i32, i32* %12, align 4
  %557 = load i32, i32* @GACC_IFETCH, align 4
  %558 = icmp eq i32 %556, %557
  br i1 %558, label %559, label %569

559:                                              ; preds = %555
  %560 = load i32, i32* %18, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %569

562:                                              ; preds = %559
  %563 = load i32, i32* %23, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %569

565:                                              ; preds = %562
  %566 = load i32, i32* @PROT_TYPE_IEP, align 4
  %567 = load i32*, i32** %13, align 8
  store i32 %566, i32* %567, align 4
  %568 = load i64, i64* @PGM_PROTECTION, align 8
  store i64 %568, i64* %7, align 8
  br label %583

569:                                              ; preds = %562, %559, %555
  %570 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %571 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = bitcast %union.raddress* %15 to i64*
  %574 = load i64, i64* %573, align 8
  %575 = call i64 @kvm_is_error_gpa(i32 %572, i64 %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %569
  %578 = load i64, i64* @PGM_ADDRESSING, align 8
  store i64 %578, i64* %7, align 8
  br label %583

579:                                              ; preds = %569
  %580 = bitcast %union.raddress* %15 to i64*
  %581 = load i64, i64* %580, align 8
  %582 = load i64*, i64** %11, align 8
  store i64 %581, i64* %582, align 8
  store i64 0, i64* %7, align 8
  br label %583

583:                                              ; preds = %579, %577, %565, %551, %526, %520, %513, %503, %457, %447, %440, %433, %423, %394, %385, %356, %343, %336, %329, %319, %292, %278, %271, %264, %254, %227, %213, %206, %199, %189, %170, %162, %141, %133, %116, %108, %95
  %584 = load i64, i64* %7, align 8
  ret i64 %584
}

declare dso_local i64 @test_kvm_facility(i32, i32) #1

declare dso_local i64 @kvm_is_error_gpa(i32, i64) #1

declare dso_local i64 @deref_table(i32, i64, i32*) #1

declare dso_local i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
