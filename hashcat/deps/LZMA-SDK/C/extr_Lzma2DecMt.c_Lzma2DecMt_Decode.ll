; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_Decode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i64, %struct.TYPE_16__, i8*, %struct.TYPE_14__, %struct.TYPE_11__, i8*, i64, i64, i64, i8*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i32, i64, i64, i8*, i8*, %struct.TYPE_12__, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@SZ_ERROR_UNSUPPORTED = common dso_local global i64 0, align 8
@False = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8
@Lzma2DecMt_MtCallback_Parse = common dso_local global i32 0, align 4
@Lzma2DecMt_MtCallback_PreCode = common dso_local global i32 0, align 4
@Lzma2DecMt_MtCallback_Code = common dso_local global i32 0, align 4
@Lzma2DecMt_MtCallback_Write = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"----- decoding ST -----\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2DecMt_Decode(i64 %0, i32 %1, %struct.TYPE_14__* %2, i32* %3, i64* %4, i32 %5, i32* %6, i64* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_13__, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i64 %0, i64* %12, align 8
  store i32 %1, i32* %13, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %14, align 8
  store i32* %3, i32** %15, align 8
  store i64* %4, i64** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load i64, i64* %12, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %22, align 8
  %30 = load i64*, i64** %19, align 8
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = icmp sgt i32 %31, 40
  br i1 %32, label %33, label %35

33:                                               ; preds = %10
  %34 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %34, i64* %11, align 8
  br label %245

35:                                               ; preds = %10
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %42 = bitcast %struct.TYPE_14__* %40 to i8*
  %43 = bitcast %struct.TYPE_14__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load i32*, i32** %18, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 15
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 14
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 13
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 11
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** @False, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 12
  store i8* %55, i8** %57, align 8
  %58 = load i64*, i64** %16, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %35
  %61 = load i8*, i8** @True, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 12
  store i8* %61, i8** %63, align 8
  %64 = load i64*, i64** %16, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 11
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %35
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i8*, i8** @False, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @False, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %20, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i8*, i8** @False, align 8
  store i8* %82, i8** %23, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %219

88:                                               ; preds = %68
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %90 = call i32 @Lzma2DecMt_FreeSt(%struct.TYPE_15__* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 9
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 8
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = load i8*, i8** @True, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 8
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = call i32 @MtDec_Construct(%struct.TYPE_16__* %102)
  br label %104

104:                                              ; preds = %97, %88
  %105 = load i32*, i32** %21, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 11
  store i32* %105, i32** %108, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 10
  store i32* %109, i32** %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 9
  store i32* %115, i32** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 7
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 6
  store i32 %129, i32* %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  %140 = load i8*, i8** @True, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load i32*, i32** %20, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @Lzma2DecMt_MtCallback_Parse, align 4
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @Lzma2DecMt_MtCallback_PreCode, align 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* @Lzma2DecMt_MtCallback_Code, align 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @Lzma2DecMt_MtCallback_Write, align 4
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = load i8*, i8** @False, align 8
  store i8* %151, i8** %25, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 4
  %154 = call i64 @MtDec_Code(%struct.TYPE_16__* %153)
  store i64 %154, i64* %26, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %19, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i8*, i8** @False, align 8
  store i8* %160, i8** %25, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load i64, i64* @SZ_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %104
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SZ_OK, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %164
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %26, align 8
  br label %183

178:                                              ; preds = %164
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %25, align 8
  br label %183

183:                                              ; preds = %178, %172
  br label %184

184:                                              ; preds = %183, %104
  %185 = load i8*, i8** %25, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* %26, align 8
  %189 = load i64, i64* @SZ_OK, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %11, align 8
  br label %245

196:                                              ; preds = %187
  %197 = load i64, i64* %26, align 8
  store i64 %197, i64* %11, align 8
  br label %245

198:                                              ; preds = %184
  %199 = load i8*, i8** @True, align 8
  store i8* %199, i8** %23, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 5
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  %218 = call i32 @PRF_STR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %219

219:                                              ; preds = %198, %68
  %220 = load i8*, i8** @False, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load i32*, i32** %20, align 8
  store i32 %221, i32* %222, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %224 = load i8*, i8** %23, align 8
  %225 = call i64 @Lzma2Dec_Decode_ST(%struct.TYPE_15__* %223, i8* %224)
  store i64 %225, i64* %27, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %19, align 8
  store i64 %228, i64* %229, align 8
  %230 = load i64, i64* %27, align 8
  %231 = load i64, i64* @SZ_OK, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %219
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @SZ_OK, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %27, align 8
  br label %243

243:                                              ; preds = %239, %233, %219
  %244 = load i64, i64* %27, align 8
  store i64 %244, i64* %11, align 8
  br label %245

245:                                              ; preds = %243, %196, %191, %33
  %246 = load i64, i64* %11, align 8
  ret i64 %246
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Lzma2DecMt_FreeSt(%struct.TYPE_15__*) #2

declare dso_local i32 @MtDec_Construct(%struct.TYPE_16__*) #2

declare dso_local i64 @MtDec_Code(%struct.TYPE_16__*) #2

declare dso_local i32 @PRF_STR(i8*) #2

declare dso_local i64 @Lzma2Dec_Decode_ST(%struct.TYPE_15__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
