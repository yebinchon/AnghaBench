; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_XzEnc_Encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_XzEnc_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32**, i32, i32*, %struct.TYPE_12__, i32, i32*, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_16__*, %struct.TYPE_13__*, i64, i32*, i32*, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i64, i64, i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@XZ_PROPS__BLOCK_SIZE__SOLID = common dso_local global i64 0, align 8
@True = common dso_local global i64 0, align 8
@XzEnc_MtCallback_Code = common dso_local global i32 0, align 4
@XzEnc_MtCallback_Write = common dso_local global i32 0, align 4
@XZ_PROPS__BLOCK_SIZE__AUTO = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i32 0, align 4
@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@XZ_BLOCK_HEADER_SIZE_MAX = common dso_local global i64 0, align 8
@CompressProgress_XzEncOffset_Progress = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XzEnc_Encode(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_15__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 9
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %11, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = call i32 @XzEncIndex_Init(i32* %30)
  store i64 1, i64* %12, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @XZ_PROPS__BLOCK_SIZE__SOLID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, -1
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = sdiv i64 %46, %47
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = mul nsw i64 %49, %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %56, %43
  br label %61

60:                                               ; preds = %38, %4
  store i64 4611686018427387904, i64* %13, align 8
  br label %61

61:                                               ; preds = %60, %59
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @XZ_GET_ESTIMATED_BLOCK_TOTAL_PACK_SIZE(i64 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @XzEncIndex_PreAlloc(i32* %63, i64 %64, i64 %65, i32 %67, i32 %70)
  %72 = call i32 @RINOK(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @Xz_WriteHeader(i32 %76, i32* %77)
  %79 = call i32 @RINOK(i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %216

84:                                               ; preds = %61
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 11
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* @True, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 11
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 6
  %95 = call i32 @MtCoder_Construct(%struct.TYPE_12__* %94)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load i32, i32* @XzEnc_MtCallback_Code, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @XzEnc_MtCallback_Write, align 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 10
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 9
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %109 = bitcast %struct.TYPE_14__* %107 to i8*
  %110 = bitcast %struct.TYPE_14__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 48, i1 false)
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 8
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 9
  store i32 %116, i32* %119, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 8
  store i32* %120, i32** %123, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  store i32* %124, i32** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 6
  store i32* null, i32** %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 5
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %136, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @XZ_PROPS__BLOCK_SIZE__SOLID, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %96
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @XZ_PROPS__BLOCK_SIZE__AUTO, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146, %96
  %153 = load i32, i32* @SZ_ERROR_FAIL, align 4
  store i32 %153, i32* %5, align 4
  br label %415

154:                                              ; preds = %146
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %154
  %170 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %170, i32* %5, align 4
  br label %415

171:                                              ; preds = %154
  %172 = load i64, i64* @XZ_BLOCK_HEADER_SIZE_MAX, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @XZ_GET_MAX_BLOCK_PACK_SIZE(i64 %176)
  %178 = add i64 %172, %177
  store i64 %178, i64* %15, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %179, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %171
  %186 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %186, i32* %5, align 4
  br label %415

187:                                              ; preds = %171
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %15, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %195 = call i32 @XzEnc_FreeOutBufs(%struct.TYPE_16__* %194)
  br label %196

196:                                              ; preds = %193, %187
  %197 = load i64, i64* %15, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  store i32 %202, i32* %205, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 6
  %214 = call i32 @MtCoder_Code(%struct.TYPE_12__* %213)
  %215 = call i32 @RINOK(i32 %214)
  br label %406

216:                                              ; preds = %61
  store i32* null, i32** %18, align 8
  store i64 0, i64* %19, align 8
  %217 = load i32, i32* @CompressProgress_XzEncOffset_Progress, align 4
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i64 0, i64* %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i64 0, i64* %221, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store i32* %222, i32** %223, align 8
  store i32 0, i32* %16, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @XZ_PROPS__BLOCK_SIZE__SOLID, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %309

229:                                              ; preds = %216
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  %234 = zext i1 %233 to i32
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %308

237:                                              ; preds = %229
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %21, align 8
  %241 = load i64, i64* %21, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %237
  %247 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %247, i32* %5, align 4
  br label %415

248:                                              ; preds = %237
  %249 = load i64, i64* %21, align 8
  %250 = call i64 @XZ_GET_MAX_BLOCK_PACK_SIZE(i64 %249)
  store i64 %250, i64* %21, align 8
  %251 = load i64, i64* %21, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ult i64 %251, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %248
  %257 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %257, i32* %5, align 4
  br label %415

258:                                              ; preds = %248
  %259 = load i64, i64* @XZ_BLOCK_HEADER_SIZE_MAX, align 8
  %260 = load i64, i64* %21, align 8
  %261 = add i64 %259, %260
  store i64 %261, i64* %20, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = load i32**, i32*** %263, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 0
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %258
  %269 = load i64, i64* %20, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %269, %272
  br i1 %273, label %274, label %299

274:                                              ; preds = %268, %258
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %276 = call i32 @XzEnc_FreeOutBufs(%struct.TYPE_16__* %275)
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load i64, i64* %20, align 8
  %281 = call i64 @ISzAlloc_Alloc(i32 %279, i64 %280)
  %282 = inttoptr i64 %281 to i32*
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 3
  %285 = load i32**, i32*** %284, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 0
  store i32* %282, i32** %286, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = load i32**, i32*** %288, align 8
  %290 = getelementptr inbounds i32*, i32** %289, i64 0
  %291 = load i32*, i32** %290, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %274
  %294 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %294, i32* %5, align 4
  br label %415

295:                                              ; preds = %274
  %296 = load i64, i64* %20, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %295, %268
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 3
  %302 = load i32**, i32*** %301, align 8
  %303 = getelementptr inbounds i32*, i32** %302, i64 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* @XZ_BLOCK_HEADER_SIZE_MAX, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %18, align 8
  %307 = load i64, i64* %21, align 8
  store i64 %307, i64* %19, align 8
  br label %308

308:                                              ; preds = %299, %229
  br label %309

309:                                              ; preds = %308, %216
  br label %310

310:                                              ; preds = %404, %309
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  store i64 0, i64* %311, align 8
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %16, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %310
  br label %321

319:                                              ; preds = %310
  %320 = load i32*, i32** %7, align 8
  br label %321

321:                                              ; preds = %319, %318
  %322 = phi i32* [ null, %318 ], [ %320, %319 ]
  %323 = load i32, i32* %16, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %321
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 3
  %328 = load i32**, i32*** %327, align 8
  %329 = getelementptr inbounds i32*, i32** %328, i64 0
  %330 = load i32*, i32** %329, align 8
  br label %332

331:                                              ; preds = %321
  br label %332

332:                                              ; preds = %331, %325
  %333 = phi i32* [ %330, %325 ], [ null, %331 ]
  %334 = load i32*, i32** %18, align 8
  %335 = load i64, i64* %19, align 8
  %336 = load i32*, i32** %8, align 8
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %338 = load i32*, i32** %9, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %342

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  br label %343

342:                                              ; preds = %332
  br label %343

343:                                              ; preds = %342, %340
  %344 = phi %struct.TYPE_18__* [ %341, %340 ], [ null, %342 ]
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @Xz_CompressBlock(i32* %315, i32* %322, i32* %333, i32* %334, i64 %335, i32* %336, i32* null, i32 0, %struct.TYPE_14__* %337, %struct.TYPE_18__* %344, i32* %23, %struct.TYPE_15__* %22, i32 %347, i32 %350)
  %352 = call i32 @RINOK(i32 %351)
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = call i64 @XZ_GET_PAD_SIZE(i64 %356)
  %358 = add nsw i64 %354, %357
  store i64 %358, i64* %24, align 8
  %359 = load i32, i32* %16, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %380

361:                                              ; preds = %343
  %362 = load i32*, i32** %7, align 8
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 3
  %365 = load i32**, i32*** %364, align 8
  %366 = getelementptr inbounds i32*, i32** %365, i64 0
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @WriteBytes(i32* %362, i32* %367, i64 %369)
  %371 = call i32 @RINOK(i32 %370)
  %372 = load i32*, i32** %7, align 8
  %373 = load i32*, i32** %18, align 8
  %374 = load i64, i64* %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = sub i64 %374, %376
  %378 = call i32 @WriteBytes(i32* %372, i32* %373, i64 %377)
  %379 = call i32 @RINOK(i32 %378)
  br label %380

380:                                              ; preds = %361, %343
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @XzEncIndex_AddIndexRecord(i32* %382, i64 %384, i64 %386, i32 %389)
  %391 = call i32 @RINOK(i32 %390)
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %395, %393
  store i64 %396, i64* %394, align 8
  %397 = load i64, i64* %24, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %399, %397
  store i64 %400, i64* %398, align 8
  %401 = load i32, i32* %23, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %380
  br label %405

404:                                              ; preds = %380
  br label %310

405:                                              ; preds = %403
  br label %406

406:                                              ; preds = %405, %196
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = trunc i64 %411 to i32
  %413 = load i32*, i32** %7, align 8
  %414 = call i32 @XzEncIndex_WriteFooter(i32* %408, i32 %412, i32* %413)
  store i32 %414, i32* %5, align 4
  br label %415

415:                                              ; preds = %406, %293, %256, %246, %185, %169, %152
  %416 = load i32, i32* %5, align 4
  ret i32 %416
}

declare dso_local i32 @XzEncIndex_Init(i32*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @XzEncIndex_PreAlloc(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @XZ_GET_ESTIMATED_BLOCK_TOTAL_PACK_SIZE(i64) #1

declare dso_local i32 @Xz_WriteHeader(i32, i32*) #1

declare dso_local i32 @MtCoder_Construct(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @XZ_GET_MAX_BLOCK_PACK_SIZE(i64) #1

declare dso_local i32 @XzEnc_FreeOutBufs(%struct.TYPE_16__*) #1

declare dso_local i32 @MtCoder_Code(%struct.TYPE_12__*) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i64) #1

declare dso_local i32 @Xz_CompressBlock(i32*, i32*, i32*, i32*, i64, i32*, i32*, i32, %struct.TYPE_14__*, %struct.TYPE_18__*, i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @XZ_GET_PAD_SIZE(i64) #1

declare dso_local i32 @WriteBytes(i32*, i32*, i64) #1

declare dso_local i32 @XzEncIndex_AddIndexRecord(i32*, i64, i64, i32) #1

declare dso_local i32 @XzEncIndex_WriteFooter(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
