; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_kvm_s390_shadow_tables.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_kvm_s390_shadow_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32, %struct.gmap* }
%union.asce = type { i64 }
%union.vaddress = type { i64 }
%union.region1_table_entry = type { i64 }
%union.region2_table_entry = type { i64 }
%union.region3_table_entry = type { i64, [8 x i8] }
%union.segment_table_entry = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PGM_REGION_FIRST_TRANS = common dso_local global i32 0, align 4
@PGM_ASCE_TYPE = common dso_local global i32 0, align 4
@PGM_REGION_SECOND_TRANS = common dso_local global i32 0, align 4
@PGM_REGION_THIRD_TRANS = common dso_local global i32 0, align 4
@PGM_SEGMENT_TRANSLATION = common dso_local global i32 0, align 4
@_REGION1_SIZE = common dso_local global i64 0, align 8
@TABLE_TYPE_REGION1 = common dso_local global i32 0, align 4
@PGM_TRANSLATION_SPEC = common dso_local global i32 0, align 4
@_REGION2_SIZE = common dso_local global i64 0, align 8
@TABLE_TYPE_REGION2 = common dso_local global i32 0, align 4
@_REGION3_SIZE = common dso_local global i64 0, align 8
@TABLE_TYPE_REGION3 = common dso_local global i32 0, align 4
@_SEGMENT_SIZE = common dso_local global i64 0, align 8
@TABLE_TYPE_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64, i64*, i32*, i32*)* @kvm_s390_shadow_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_shadow_tables(%struct.gmap* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gmap*, align 8
  %13 = alloca %union.asce, align 8
  %14 = alloca %union.vaddress, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.region1_table_entry, align 8
  %18 = alloca %union.region2_table_entry, align 8
  %19 = alloca %union.region3_table_entry, align 8
  %20 = alloca %union.segment_table_entry, align 8
  store %struct.gmap* %0, %struct.gmap** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.gmap*, %struct.gmap** %7, align 8
  %24 = getelementptr inbounds %struct.gmap, %struct.gmap* %23, i32 0, i32 2
  %25 = load %struct.gmap*, %struct.gmap** %24, align 8
  store %struct.gmap* %25, %struct.gmap** %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = bitcast %union.vaddress* %14 to i64*
  store i64 %26, i64* %27, align 8
  %28 = load %struct.gmap*, %struct.gmap** %7, align 8
  %29 = getelementptr inbounds %struct.gmap, %struct.gmap* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %union.asce* %13 to i32*
  store i32 %30, i32* %31, align 8
  %32 = bitcast %union.asce* %13 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %15, align 8
  %37 = bitcast %union.asce* %13 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32*, i32** %11, align 8
  store i32 1, i32* %41, align 4
  store i64 0, i64* %15, align 8
  %42 = bitcast %union.asce* %13 to i32*
  store i32 131, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %5
  %44 = bitcast %union.asce* %13 to i32*
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %116 [
    i32 131, label %46
    i32 130, label %59
    i32 129, label %74
    i32 128, label %93
  ]

46:                                               ; preds = %43
  %47 = bitcast %union.vaddress* %14 to i32*
  %48 = load i32, i32* %47, align 8
  %49 = bitcast %union.asce* %13 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @PGM_REGION_FIRST_TRANS, align 4
  store i32 %57, i32* %6, align 4
  br label %525

58:                                               ; preds = %52, %46
  br label %116

59:                                               ; preds = %43
  %60 = bitcast %union.vaddress* %14 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @PGM_ASCE_TYPE, align 4
  store i32 %64, i32* %6, align 4
  br label %525

65:                                               ; preds = %59
  %66 = bitcast %union.vaddress* %14 to i32*
  %67 = load i32, i32* %66, align 8
  %68 = bitcast %union.asce* %13 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @PGM_REGION_SECOND_TRANS, align 4
  store i32 %72, i32* %6, align 4
  br label %525

73:                                               ; preds = %65
  br label %116

74:                                               ; preds = %43
  %75 = bitcast %union.vaddress* %14 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = bitcast %union.vaddress* %14 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @PGM_ASCE_TYPE, align 4
  store i32 %83, i32* %6, align 4
  br label %525

84:                                               ; preds = %78
  %85 = bitcast %union.vaddress* %14 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = bitcast %union.asce* %13 to i32*
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @PGM_REGION_THIRD_TRANS, align 4
  store i32 %91, i32* %6, align 4
  br label %525

92:                                               ; preds = %84
  br label %116

93:                                               ; preds = %43
  %94 = bitcast %union.vaddress* %14 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = bitcast %union.vaddress* %14 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = bitcast %union.vaddress* %14 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97, %93
  %106 = load i32, i32* @PGM_ASCE_TYPE, align 4
  store i32 %106, i32* %6, align 4
  br label %525

107:                                              ; preds = %101
  %108 = bitcast %union.vaddress* %14 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = bitcast %union.asce* %13 to i32*
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @PGM_SEGMENT_TRANSLATION, align 4
  store i32 %114, i32* %6, align 4
  br label %525

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %43, %115, %92, %73, %58
  %117 = bitcast %union.asce* %13 to i32*
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %522 [
    i32 131, label %119
    i32 130, label %202
    i32 129, label %290
    i32 128, label %422
  ]

119:                                              ; preds = %116
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = bitcast %union.vaddress* %14 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @_REGION1_SIZE, align 8
  %127 = mul i64 %125, %126
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %15, align 8
  %131 = bitcast %union.region1_table_entry* %17 to i64*
  store i64 %130, i64* %131, align 8
  br label %189

132:                                              ; preds = %119
  %133 = load %struct.gmap*, %struct.gmap** %12, align 8
  %134 = load i64, i64* %15, align 8
  %135 = bitcast %union.vaddress* %14 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = mul i64 %136, 8
  %138 = add i64 %134, %137
  %139 = bitcast %union.region1_table_entry* %17 to i64*
  %140 = call i32 @gmap_read_table(%struct.gmap* %133, i64 %138, i64* %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %6, align 4
  br label %525

145:                                              ; preds = %132
  %146 = bitcast %union.region1_table_entry* %17 to i32*
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @PGM_REGION_FIRST_TRANS, align 4
  store i32 %150, i32* %6, align 4
  br label %525

151:                                              ; preds = %145
  %152 = bitcast %union.region1_table_entry* %17 to i32*
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TABLE_TYPE_REGION1, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %157, i32* %6, align 4
  br label %525

158:                                              ; preds = %151
  %159 = bitcast %union.vaddress* %14 to i32*
  %160 = load i32, i32* %159, align 8
  %161 = bitcast %union.region1_table_entry* %17 to i32*
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = bitcast %union.vaddress* %14 to i32*
  %166 = load i32, i32* %165, align 8
  %167 = bitcast %union.region1_table_entry* %17 to i32*
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164, %158
  %171 = load i32, i32* @PGM_REGION_SECOND_TRANS, align 4
  store i32 %171, i32* %6, align 4
  br label %525

172:                                              ; preds = %164
  %173 = load %struct.gmap*, %struct.gmap** %7, align 8
  %174 = getelementptr inbounds %struct.gmap, %struct.gmap* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sge i32 %175, 1
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = bitcast %union.region1_table_entry* %17 to i32*
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %179
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %172
  %184 = bitcast %union.region1_table_entry* %17 to i32*
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @PAGE_SIZE, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %15, align 8
  br label %189

189:                                              ; preds = %183, %123
  %190 = load %struct.gmap*, %struct.gmap** %7, align 8
  %191 = load i64, i64* %8, align 8
  %192 = bitcast %union.region1_table_entry* %17 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @gmap_shadow_r2t(%struct.gmap* %190, i64 %191, i64 %193, i32 %195)
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %189
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %6, align 4
  br label %525

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %116, %201
  %203 = load i32*, i32** %11, align 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = bitcast %union.vaddress* %14 to i64*
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @_REGION2_SIZE, align 8
  %210 = mul i64 %208, %209
  %211 = load i64, i64* %15, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %15, align 8
  %213 = load i64, i64* %15, align 8
  %214 = bitcast %union.region2_table_entry* %18 to i64*
  store i64 %213, i64* %214, align 8
  br label %272

215:                                              ; preds = %202
  %216 = load %struct.gmap*, %struct.gmap** %12, align 8
  %217 = load i64, i64* %15, align 8
  %218 = bitcast %union.vaddress* %14 to i64*
  %219 = load i64, i64* %218, align 8
  %220 = mul i64 %219, 8
  %221 = add i64 %217, %220
  %222 = bitcast %union.region2_table_entry* %18 to i64*
  %223 = call i32 @gmap_read_table(%struct.gmap* %216, i64 %221, i64* %222)
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %215
  %227 = load i32, i32* %16, align 4
  store i32 %227, i32* %6, align 4
  br label %525

228:                                              ; preds = %215
  %229 = bitcast %union.region2_table_entry* %18 to i32*
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* @PGM_REGION_SECOND_TRANS, align 4
  store i32 %233, i32* %6, align 4
  br label %525

234:                                              ; preds = %228
  %235 = bitcast %union.region2_table_entry* %18 to i32*
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @TABLE_TYPE_REGION2, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %240, i32* %6, align 4
  br label %525

241:                                              ; preds = %234
  %242 = bitcast %union.vaddress* %14 to i32*
  %243 = load i32, i32* %242, align 8
  %244 = bitcast %union.region2_table_entry* %18 to i32*
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = bitcast %union.vaddress* %14 to i32*
  %249 = load i32, i32* %248, align 8
  %250 = bitcast %union.region2_table_entry* %18 to i32*
  %251 = load i32, i32* %250, align 8
  %252 = icmp sgt i32 %249, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %247, %241
  %254 = load i32, i32* @PGM_REGION_THIRD_TRANS, align 4
  store i32 %254, i32* %6, align 4
  br label %525

255:                                              ; preds = %247
  %256 = load %struct.gmap*, %struct.gmap** %7, align 8
  %257 = getelementptr inbounds %struct.gmap, %struct.gmap* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp sge i32 %258, 1
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = bitcast %union.region2_table_entry* %18 to i32*
  %262 = load i32, i32* %261, align 8
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %262
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %255
  %267 = bitcast %union.region2_table_entry* %18 to i32*
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @PAGE_SIZE, align 4
  %270 = mul nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %15, align 8
  br label %272

272:                                              ; preds = %266, %206
  %273 = load i32*, i32** %10, align 8
  %274 = load i32, i32* %273, align 4
  %275 = bitcast %union.region2_table_entry* %18 to i32*
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %274
  store i32 %277, i32* %275, align 8
  %278 = load %struct.gmap*, %struct.gmap** %7, align 8
  %279 = load i64, i64* %8, align 8
  %280 = bitcast %union.region2_table_entry* %18 to i64*
  %281 = load i64, i64* %280, align 8
  %282 = load i32*, i32** %11, align 8
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @gmap_shadow_r3t(%struct.gmap* %278, i64 %279, i64 %281, i32 %283)
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %272
  %288 = load i32, i32* %16, align 4
  store i32 %288, i32* %6, align 4
  br label %525

289:                                              ; preds = %272
  br label %290

290:                                              ; preds = %116, %289
  %291 = load i32*, i32** %11, align 8
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %290
  %295 = bitcast %union.vaddress* %14 to i64*
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @_REGION3_SIZE, align 8
  %298 = mul i64 %296, %297
  %299 = load i64, i64* %15, align 8
  %300 = add i64 %299, %298
  store i64 %300, i64* %15, align 8
  %301 = load i64, i64* %15, align 8
  %302 = bitcast %union.region3_table_entry* %19 to i64*
  store i64 %301, i64* %302, align 8
  br label %403

303:                                              ; preds = %290
  %304 = load %struct.gmap*, %struct.gmap** %12, align 8
  %305 = load i64, i64* %15, align 8
  %306 = bitcast %union.vaddress* %14 to i64*
  %307 = load i64, i64* %306, align 8
  %308 = mul i64 %307, 8
  %309 = add i64 %305, %308
  %310 = bitcast %union.region3_table_entry* %19 to i64*
  %311 = call i32 @gmap_read_table(%struct.gmap* %304, i64 %309, i64* %310)
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* %16, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %303
  %315 = load i32, i32* %16, align 4
  store i32 %315, i32* %6, align 4
  br label %525

316:                                              ; preds = %303
  %317 = bitcast %union.region3_table_entry* %19 to i32*
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = load i32, i32* @PGM_REGION_THIRD_TRANS, align 4
  store i32 %321, i32* %6, align 4
  br label %525

322:                                              ; preds = %316
  %323 = bitcast %union.region3_table_entry* %19 to i32*
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @TABLE_TYPE_REGION3, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %328, i32* %6, align 4
  br label %525

329:                                              ; preds = %322
  %330 = bitcast %union.region3_table_entry* %19 to i32*
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %329
  %334 = bitcast %union.asce* %13 to i32*
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %333
  %338 = load %struct.gmap*, %struct.gmap** %7, align 8
  %339 = getelementptr inbounds %struct.gmap, %struct.gmap* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp sge i32 %340, 2
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %343, i32* %6, align 4
  br label %525

344:                                              ; preds = %337, %333, %329
  %345 = bitcast %union.region3_table_entry* %19 to i32*
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %368

348:                                              ; preds = %344
  %349 = load %struct.gmap*, %struct.gmap** %7, align 8
  %350 = getelementptr inbounds %struct.gmap, %struct.gmap* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp sge i32 %351, 2
  br i1 %352, label %353, label %368

353:                                              ; preds = %348
  %354 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_8__*
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32*, i32** %10, align 8
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %356
  store i32 %359, i32* %357, align 4
  %360 = load i32*, i32** %11, align 8
  store i32 1, i32* %360, align 4
  %361 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_7__*
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @_REGION3_SIZE, align 8
  %365 = mul i64 %363, %364
  store i64 %365, i64* %15, align 8
  %366 = load i64, i64* %15, align 8
  %367 = bitcast %union.region3_table_entry* %19 to i64*
  store i64 %366, i64* %367, align 8
  br label %403

368:                                              ; preds = %348, %344
  %369 = bitcast %union.vaddress* %14 to i32*
  %370 = load i32, i32* %369, align 8
  %371 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_8__*
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = icmp slt i32 %370, %373
  br i1 %374, label %382, label %375

375:                                              ; preds = %368
  %376 = bitcast %union.vaddress* %14 to i32*
  %377 = load i32, i32* %376, align 8
  %378 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_8__*
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = icmp sgt i32 %377, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %375, %368
  %383 = load i32, i32* @PGM_SEGMENT_TRANSLATION, align 4
  store i32 %383, i32* %6, align 4
  br label %525

384:                                              ; preds = %375
  %385 = load %struct.gmap*, %struct.gmap** %7, align 8
  %386 = getelementptr inbounds %struct.gmap, %struct.gmap* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp sge i32 %387, 1
  br i1 %388, label %389, label %396

389:                                              ; preds = %384
  %390 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_8__*
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32*, i32** %10, align 8
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %392
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %389, %384
  %397 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_8__*
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @PAGE_SIZE, align 4
  %401 = mul nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %15, align 8
  br label %403

403:                                              ; preds = %396, %353, %294
  %404 = load i32*, i32** %10, align 8
  %405 = load i32, i32* %404, align 4
  %406 = bitcast %union.region3_table_entry* %19 to %struct.TYPE_8__*
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load %struct.gmap*, %struct.gmap** %7, align 8
  %411 = load i64, i64* %8, align 8
  %412 = bitcast %union.region3_table_entry* %19 to i64*
  %413 = load i64, i64* %412, align 8
  %414 = load i32*, i32** %11, align 8
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @gmap_shadow_sgt(%struct.gmap* %410, i64 %411, i64 %413, i32 %415)
  store i32 %416, i32* %16, align 4
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %403
  %420 = load i32, i32* %16, align 4
  store i32 %420, i32* %6, align 4
  br label %525

421:                                              ; preds = %403
  br label %422

422:                                              ; preds = %116, %421
  %423 = load i32*, i32** %11, align 8
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %422
  %427 = bitcast %union.vaddress* %14 to i64*
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @_SEGMENT_SIZE, align 8
  %430 = mul i64 %428, %429
  %431 = load i64, i64* %15, align 8
  %432 = add i64 %431, %430
  store i64 %432, i64* %15, align 8
  %433 = load i64, i64* %15, align 8
  %434 = bitcast %union.segment_table_entry* %20 to i64*
  store i64 %433, i64* %434, align 8
  br label %503

435:                                              ; preds = %422
  %436 = load %struct.gmap*, %struct.gmap** %12, align 8
  %437 = load i64, i64* %15, align 8
  %438 = bitcast %union.vaddress* %14 to i64*
  %439 = load i64, i64* %438, align 8
  %440 = mul i64 %439, 8
  %441 = add i64 %437, %440
  %442 = bitcast %union.segment_table_entry* %20 to i64*
  %443 = call i32 @gmap_read_table(%struct.gmap* %436, i64 %441, i64* %442)
  store i32 %443, i32* %16, align 4
  %444 = load i32, i32* %16, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %435
  %447 = load i32, i32* %16, align 4
  store i32 %447, i32* %6, align 4
  br label %525

448:                                              ; preds = %435
  %449 = bitcast %union.segment_table_entry* %20 to i32*
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %448
  %453 = load i32, i32* @PGM_SEGMENT_TRANSLATION, align 4
  store i32 %453, i32* %6, align 4
  br label %525

454:                                              ; preds = %448
  %455 = bitcast %union.segment_table_entry* %20 to i32*
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @TABLE_TYPE_SEGMENT, align 4
  %458 = icmp ne i32 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %454
  %460 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %460, i32* %6, align 4
  br label %525

461:                                              ; preds = %454
  %462 = bitcast %union.segment_table_entry* %20 to i32*
  %463 = load i32, i32* %462, align 8
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %471

465:                                              ; preds = %461
  %466 = bitcast %union.asce* %13 to i32*
  %467 = load i32, i32* %466, align 8
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %465
  %470 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %470, i32* %6, align 4
  br label %525

471:                                              ; preds = %465, %461
  %472 = bitcast %union.segment_table_entry* %20 to %struct.TYPE_6__*
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load i32*, i32** %10, align 8
  %476 = load i32, i32* %475, align 4
  %477 = or i32 %476, %474
  store i32 %477, i32* %475, align 4
  %478 = bitcast %union.segment_table_entry* %20 to i32*
  %479 = load i32, i32* %478, align 8
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %495

481:                                              ; preds = %471
  %482 = load %struct.gmap*, %struct.gmap** %7, align 8
  %483 = getelementptr inbounds %struct.gmap, %struct.gmap* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = icmp sge i32 %484, 1
  br i1 %485, label %486, label %495

486:                                              ; preds = %481
  %487 = load i32*, i32** %11, align 8
  store i32 1, i32* %487, align 4
  %488 = bitcast %union.segment_table_entry* %20 to %struct.TYPE_5__*
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @_SEGMENT_SIZE, align 8
  %492 = mul i64 %490, %491
  store i64 %492, i64* %15, align 8
  %493 = load i64, i64* %15, align 8
  %494 = bitcast %union.segment_table_entry* %20 to i64*
  store i64 %493, i64* %494, align 8
  br label %503

495:                                              ; preds = %481, %471
  %496 = bitcast %union.segment_table_entry* %20 to %struct.TYPE_6__*
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @PAGE_SIZE, align 4
  %500 = sdiv i32 %499, 2
  %501 = mul nsw i32 %498, %500
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %15, align 8
  br label %503

503:                                              ; preds = %495, %486, %426
  %504 = load i32*, i32** %10, align 8
  %505 = load i32, i32* %504, align 4
  %506 = bitcast %union.segment_table_entry* %20 to %struct.TYPE_6__*
  %507 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = or i32 %508, %505
  store i32 %509, i32* %507, align 8
  %510 = load %struct.gmap*, %struct.gmap** %7, align 8
  %511 = load i64, i64* %8, align 8
  %512 = bitcast %union.segment_table_entry* %20 to i64*
  %513 = load i64, i64* %512, align 8
  %514 = load i32*, i32** %11, align 8
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @gmap_shadow_pgt(%struct.gmap* %510, i64 %511, i64 %513, i32 %515)
  store i32 %516, i32* %16, align 4
  %517 = load i32, i32* %16, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %521

519:                                              ; preds = %503
  %520 = load i32, i32* %16, align 4
  store i32 %520, i32* %6, align 4
  br label %525

521:                                              ; preds = %503
  br label %522

522:                                              ; preds = %521, %116
  %523 = load i64, i64* %15, align 8
  %524 = load i64*, i64** %9, align 8
  store i64 %523, i64* %524, align 8
  store i32 0, i32* %6, align 4
  br label %525

525:                                              ; preds = %522, %519, %469, %459, %452, %446, %419, %382, %342, %327, %320, %314, %287, %253, %239, %232, %226, %199, %170, %156, %149, %143, %113, %105, %90, %82, %71, %63, %56
  %526 = load i32, i32* %6, align 4
  ret i32 %526
}

declare dso_local i32 @gmap_read_table(%struct.gmap*, i64, i64*) #1

declare dso_local i32 @gmap_shadow_r2t(%struct.gmap*, i64, i64, i32) #1

declare dso_local i32 @gmap_shadow_r3t(%struct.gmap*, i64, i64, i32) #1

declare dso_local i32 @gmap_shadow_sgt(%struct.gmap*, i64, i64, i32) #1

declare dso_local i32 @gmap_shadow_pgt(%struct.gmap*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
