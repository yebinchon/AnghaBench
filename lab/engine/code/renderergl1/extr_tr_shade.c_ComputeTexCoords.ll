; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_ComputeTexCoords.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_ComputeTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_17__, i32*, i8**** }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i8**** }
%struct.TYPE_21__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32 (i32, i8*, i32, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@NUM_TEXTURE_BUNDLES = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@TR_MAX_TEXMODS = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ERROR: unknown texmod '%d' in shader '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @ComputeTexCoords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeTexCoords(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %392, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NUM_TEXTURE_BUNDLES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %395

10:                                               ; preds = %6
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %205 [
    i32 139, label %19
    i32 137, label %30
    i32 138, label %78
    i32 136, label %126
    i32 140, label %188
    i32 141, label %196
    i32 142, label %204
  ]

19:                                               ; preds = %10
  %20 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8***, i8**** %20, i64 %22
  %24 = load i8***, i8**** %23, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @Com_Memset(i8*** %24, i32 0, i32 %28)
  br label %205

30:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 0), align 8
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 4), align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8***, i8**** %36, i64 %38
  %40 = load i8***, i8**** %39, align 8
  %41 = getelementptr inbounds i8**, i8*** %40, i64 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8***, i8**** %45, i64 %47
  %49 = load i8***, i8**** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %44, i8** %54, align 8
  %55 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 4), align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8***, i8**** %55, i64 %57
  %59 = load i8***, i8**** %58, align 8
  %60 = getelementptr inbounds i8**, i8*** %59, i64 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8***, i8**** %64, i64 %66
  %68 = load i8***, i8**** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8**, i8*** %68, i64 %70
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %63, i8** %73, align 8
  br label %74

74:                                               ; preds = %35
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %31

77:                                               ; preds = %31
  br label %205

78:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %122, %78
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 0), align 8
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %125

83:                                               ; preds = %79
  %84 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 4), align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8***, i8**** %84, i64 %86
  %88 = load i8***, i8**** %87, align 8
  %89 = getelementptr inbounds i8**, i8*** %88, i64 1
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8***, i8**** %93, i64 %95
  %97 = load i8***, i8**** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8**, i8*** %97, i64 %99
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  store i8* %92, i8** %102, align 8
  %103 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 4), align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8***, i8**** %103, i64 %105
  %107 = load i8***, i8**** %106, align 8
  %108 = getelementptr inbounds i8**, i8*** %107, i64 1
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8***, i8**** %112, i64 %114
  %116 = load i8***, i8**** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8**, i8*** %116, i64 %118
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  store i8* %111, i8** %121, align 8
  br label %122

122:                                              ; preds = %83
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %79

125:                                              ; preds = %79
  br label %205

126:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %184, %126
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 0), align 8
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %187

131:                                              ; preds = %127
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 3), align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @DotProduct(i32 %136, i32 %146)
  %148 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8***, i8**** %148, i64 %150
  %152 = load i8***, i8**** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8**, i8*** %152, i64 %154
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  store i8* %147, i8** %157, align 8
  %158 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 3), align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @DotProduct(i32 %162, i32 %172)
  %174 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8***, i8**** %174, i64 %176
  %178 = load i8***, i8**** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8**, i8*** %178, i64 %180
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  store i8* %173, i8** %183, align 8
  br label %184

184:                                              ; preds = %131
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %3, align 4
  br label %127

187:                                              ; preds = %127
  br label %205

188:                                              ; preds = %10
  %189 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8***, i8**** %189, i64 %191
  %193 = load i8***, i8**** %192, align 8
  %194 = bitcast i8*** %193 to float*
  %195 = call i32 @RB_CalcFogTexCoords(float* %194)
  br label %205

196:                                              ; preds = %10
  %197 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8***, i8**** %197, i64 %199
  %201 = load i8***, i8**** %200, align 8
  %202 = bitcast i8*** %201 to float*
  %203 = call i32 @RB_CalcEnvironmentTexCoords(float* %202)
  br label %205

204:                                              ; preds = %10
  br label %395

205:                                              ; preds = %10, %196, %188, %187, %125, %77, %19
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %388, %205
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %207, %215
  br i1 %216, label %217, label %391

217:                                              ; preds = %206
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  switch i32 %230, label %367 [
    i32 134, label %231
    i32 128, label %233
    i32 135, label %253
    i32 131, label %265
    i32 132, label %286
    i32 130, label %307
    i32 129, label %327
    i32 133, label %346
  ]

231:                                              ; preds = %217
  %232 = load i32, i32* @TR_MAX_TEXMODS, align 4
  store i32 %232, i32* %5, align 4
  br label %387

233:                                              ; preds = %217
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8***, i8**** %246, i64 %248
  %250 = load i8***, i8**** %249, align 8
  %251 = bitcast i8*** %250 to float*
  %252 = call i32 @RB_CalcTurbulentTexCoords(i32* %245, float* %251)
  br label %387

253:                                              ; preds = %217
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @backEnd, i32 0, i32 0), align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8***, i8**** %258, i64 %260
  %262 = load i8***, i8**** %261, align 8
  %263 = bitcast i8*** %262 to float*
  %264 = call i32 @RB_CalcScrollTexCoords(i32 %257, float* %263)
  br label %387

265:                                              ; preds = %217
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %267, align 8
  %269 = load i32, i32* %4, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %272, align 8
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8***, i8**** %279, i64 %281
  %283 = load i8***, i8**** %282, align 8
  %284 = bitcast i8*** %283 to float*
  %285 = call i32 @RB_CalcScrollTexCoords(i32 %278, float* %284)
  br label %387

286:                                              ; preds = %217
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %288, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %301 = load i32, i32* %4, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8***, i8**** %300, i64 %302
  %304 = load i8***, i8**** %303, align 8
  %305 = bitcast i8*** %304 to float*
  %306 = call i32 @RB_CalcScaleTexCoords(i32 %299, float* %305)
  br label %387

307:                                              ; preds = %217
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %309, align 8
  %311 = load i32, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %314, align 8
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 2
  %320 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %321 = load i32, i32* %4, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8***, i8**** %320, i64 %322
  %324 = load i8***, i8**** %323, align 8
  %325 = bitcast i8*** %324 to float*
  %326 = call i32 @RB_CalcStretchTexCoords(i32* %319, float* %325)
  br label %387

327:                                              ; preds = %217
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = load i32, i32* %4, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %334, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i64 %337
  %339 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %340 = load i32, i32* %4, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8***, i8**** %339, i64 %341
  %343 = load i8***, i8**** %342, align 8
  %344 = bitcast i8*** %343 to float*
  %345 = call i32 @RB_CalcTransformTexCoords(%struct.TYPE_12__* %338, float* %344)
  br label %387

346:                                              ; preds = %217
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %348, align 8
  %350 = load i32, i32* %4, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %353, align 8
  %355 = load i32, i32* %5, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i8****, i8***** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 2, i32 0), align 8
  %361 = load i32, i32* %4, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8***, i8**** %360, i64 %362
  %364 = load i8***, i8**** %363, align 8
  %365 = bitcast i8*** %364 to float*
  %366 = call i32 @RB_CalcRotateTexCoords(i32 %359, float* %365)
  br label %387

367:                                              ; preds = %217
  %368 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ri, i32 0, i32 0), align 8
  %369 = load i32, i32* @ERR_DROP, align 4
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %371, align 8
  %373 = load i32, i32* %4, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %376, align 8
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tess, i32 0, i32 1), align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 %368(i32 %369, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %382, i32 %385)
  br label %387

387:                                              ; preds = %367, %346, %327, %307, %286, %265, %253, %233, %231
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %5, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %5, align 4
  br label %206

391:                                              ; preds = %206
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %4, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %4, align 4
  br label %6

395:                                              ; preds = %204, %6
  ret void
}

declare dso_local i32 @Com_Memset(i8***, i32, i32) #1

declare dso_local i8* @DotProduct(i32, i32) #1

declare dso_local i32 @RB_CalcFogTexCoords(float*) #1

declare dso_local i32 @RB_CalcEnvironmentTexCoords(float*) #1

declare dso_local i32 @RB_CalcTurbulentTexCoords(i32*, float*) #1

declare dso_local i32 @RB_CalcScrollTexCoords(i32, float*) #1

declare dso_local i32 @RB_CalcScaleTexCoords(i32, float*) #1

declare dso_local i32 @RB_CalcStretchTexCoords(i32*, float*) #1

declare dso_local i32 @RB_CalcTransformTexCoords(%struct.TYPE_12__*, float*) #1

declare dso_local i32 @RB_CalcRotateTexCoords(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
