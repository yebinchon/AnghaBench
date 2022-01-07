; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_FindImageFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_FindImageFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32* (i32)*, i32 (i32*)*, i32 (i32, i8*, i8*, i32, i32)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (i32, i8*, i32*, i32, i32)*, i32 (i32, i8*, i32**, i32*, i32*, i32* (i32)*)*, i64 (i32, i8*, i8*, i32)* }

@MAX_QPATH = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@hashTable = common dso_local global %struct.TYPE_11__** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"*white\00", align 1
@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WARNING: reused image %s with mixed flags (%i vs %i)\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@IMGFLAG_PICMIP = common dso_local global i32 0, align 4
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@IMGFLAG_GENNORMALMAP = common dso_local global i32 0, align 4
@IMGFLAG_CUBEMAP = common dso_local global i32 0, align 4
@r_normalMapping = common dso_local global %struct.TYPE_14__* null, align 8
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@IMGFLAG_NOLIGHTSCALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"_n\00", align 1
@IMGTYPE_NORMAL = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4
@GL_SRGB8_ALPHA8_EXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @R_FindImageFile(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %37 = call %struct.TYPE_12__* (...) @dmlab_context()
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %8, align 8
  %38 = load i32, i32* @MAX_QPATH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %9, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %43 = load i64, i64* @GL_RGBA8, align 8
  store i64 %43, i64* %16, align 8
  store i32 1, i32* %17, align 4
  %44 = load i32, i32* @qtrue, align 4
  store i32 %44, i32* %21, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %22, align 4
  br label %333

48:                                               ; preds = %3
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @generateHashValue(i8* %49)
  store i64 %50, i64* %18, align 8
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @hashTable, align 8
  %52 = load i64, i64* %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 %52
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %12, align 8
  br label %55

55:                                               ; preds = %88, %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 2), align 8
  %77 = load i32, i32* @PRINT_DEVELOPER, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 %76(i32 %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %69
  br label %85

85:                                               ; preds = %84, %65
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %22, align 4
  br label %333

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %12, align 8
  br label %55

92:                                               ; preds = %55
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i64 (i32, i8*, i8*, i32)*, i64 (i32, i8*, i8*, i32)** %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = trunc i64 %39 to i32
  %102 = call i64 %96(i32 %99, i8* %100, i8* %41, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i8* %41, i8** %11, align 8
  br label %105

105:                                              ; preds = %104, %92
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32 (i32, i8*, i32**, i32*, i32*, i32* (i32)*)*, i32 (i32, i8*, i32**, i32*, i32*, i32* (i32)*)** %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %115 = call i32 %109(i32 %112, i8* %113, i32** %15, i32* %13, i32* %14, i32* (i32)* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %105
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @R_LoadImage(i8* %118, i32** %15, i32* %13, i32* %14, i64* %16, i32* %17)
  br label %122

120:                                              ; preds = %105
  %121 = load i32, i32* @qfalse, align 4
  store i32 %121, i32* %21, align 4
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32*, i32** %15, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %22, align 4
  br label %333

126:                                              ; preds = %122
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64 (i32, i8*, i32*, i32, i32)*, i64 (i32, i8*, i32*, i32, i32)** %129, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i64 %130(i32 %133, i8* %134, i32* %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %126
  %141 = load i32, i32* @qfalse, align 4
  store i32 %141, i32* %21, align 4
  br label %142

142:                                              ; preds = %140, %126
  %143 = load i32, i32* @IMGFLAG_PICMIP, align 4
  %144 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @IMGFLAG_GENNORMALMAP, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* @IMGFLAG_CUBEMAP, align 4
  store i32 %148, i32* %20, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_normalMapping, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %283

153:                                              ; preds = %142
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* @GL_RGBA8, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %283

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %283

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %19, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %19, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %283

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %20, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %283, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @MAX_QPATH, align 4
  %174 = zext i32 %173 to i64
  %175 = call i8* @llvm.stacksave()
  store i8* %175, i8** %23, align 8
  %176 = alloca i8, i64 %174, align 16
  store i64 %174, i64* %24, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @IMGFLAG_GENNORMALMAP, align 4
  %179 = xor i32 %178, -1
  %180 = and i32 %177, %179
  %181 = load i32, i32* @IMGFLAG_NOLIGHTSCALE, align 4
  %182 = or i32 %180, %181
  store i32 %182, i32* %28, align 4
  %183 = load i8*, i8** %5, align 8
  %184 = load i32, i32* @MAX_QPATH, align 4
  %185 = call i32 @COM_StripExtension(i8* %183, i8* %176, i32 %184)
  %186 = load i32, i32* @MAX_QPATH, align 4
  %187 = call i32 @Q_strcat(i8* %176, i32 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %188 = load i32, i32* @IMGTYPE_NORMAL, align 4
  %189 = load i32, i32* %28, align 4
  %190 = call %struct.TYPE_11__* @R_FindImageFile(i8* %176, i32 %188, i32 %189)
  store %struct.TYPE_11__* %190, %struct.TYPE_11__** %25, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %192 = icmp eq %struct.TYPE_11__* %191, null
  br i1 %192, label %193, label %281

193:                                              ; preds = %172
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %26, align 4
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %27, align 4
  %196 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = mul nsw i32 %199, 4
  %201 = call i32* %196(i32 %200)
  store i32* %201, i32** %29, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load i32*, i32** %29, align 8
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %208 = and i32 %206, %207
  %209 = call i32 @RGBAtoNormal(i32* %202, i32* %203, i32 %204, i32 %205, i32 %208)
  %210 = load i32*, i32** %15, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @RGBAtoYCoCgA(i32* %210, i32* %211, i32 %212, i32 %213)
  store i32 0, i32* %31, align 4
  br label %215

215:                                              ; preds = %261, %193
  %216 = load i32, i32* %31, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %264

219:                                              ; preds = %215
  %220 = load i32*, i32** %15, align 8
  %221 = load i32, i32* %31, align 4
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %221, %222
  %224 = mul nsw i32 %223, 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %220, i64 %225
  store i32* %226, i32** %32, align 8
  %227 = load i32*, i32** %29, align 8
  %228 = load i32, i32* %31, align 4
  %229 = load i32, i32* %13, align 4
  %230 = mul nsw i32 %228, %229
  %231 = mul nsw i32 %230, 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %227, i64 %232
  store i32* %233, i32** %33, align 8
  store i32 0, i32* %30, align 4
  br label %234

234:                                              ; preds = %257, %219
  %235 = load i32, i32* %30, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %260

238:                                              ; preds = %234
  %239 = load i32*, i32** %33, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 2
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 127
  %243 = call i32 @MAX(i32 %242, i32 16)
  store i32 %243, i32* %34, align 4
  %244 = load i32*, i32** %32, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %246, 128
  %248 = load i32, i32* %34, align 4
  %249 = sdiv i32 %247, %248
  %250 = call i32 @CLAMP(i32 %249, i32 0, i32 255)
  %251 = load i32*, i32** %32, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  store i32 %250, i32* %252, align 4
  %253 = load i32*, i32** %32, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  store i32* %254, i32** %32, align 8
  %255 = load i32*, i32** %33, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  store i32* %256, i32** %33, align 8
  br label %257

257:                                              ; preds = %238
  %258 = load i32, i32* %30, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %30, align 4
  br label %234

260:                                              ; preds = %234
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %31, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %31, align 4
  br label %215

264:                                              ; preds = %215
  %265 = load i32*, i32** %15, align 8
  %266 = load i32*, i32** %15, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @YCoCgAtoRGBA(i32* %265, i32* %266, i32 %267, i32 %268)
  %270 = load i32*, i32** %29, align 8
  %271 = load i32, i32* %26, align 4
  %272 = load i32, i32* %27, align 4
  %273 = load i64, i64* @GL_RGBA8, align 8
  %274 = load i32, i32* @IMGTYPE_NORMAL, align 4
  %275 = load i32, i32* %28, align 4
  %276 = load i32, i32* %21, align 4
  %277 = call %struct.TYPE_11__* @R_CreateImage2Internal(i8* %176, i32* %270, i32 %271, i32 %272, i64 %273, i32 0, i32 %274, i32 %275, i32 0, i32 %276)
  %278 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %279 = load i32*, i32** %29, align 8
  %280 = call i32 %278(i32* %279)
  br label %281

281:                                              ; preds = %264, %172
  %282 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %282)
  br label %283

283:                                              ; preds = %281, %167, %161, %157, %153, %142
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %318

288:                                              ; preds = %283
  %289 = load i64, i64* %16, align 8
  %290 = load i64, i64* @GL_RGBA8, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %318

292:                                              ; preds = %288
  %293 = load i64, i64* %16, align 8
  %294 = load i64, i64* @GL_SRGB8_ALPHA8_EXT, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %318

296:                                              ; preds = %292
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %14, align 4
  %299 = call i32 @MAX(i32 %297, i32 %298)
  store i32 %299, i32* %35, align 4
  store i32 0, i32* %36, align 4
  br label %300

300:                                              ; preds = %303, %296
  %301 = load i32, i32* %35, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load i32, i32* %36, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %36, align 4
  %306 = load i32, i32* %35, align 4
  %307 = ashr i32 %306, 1
  store i32 %307, i32* %35, align 4
  br label %300

308:                                              ; preds = %300
  %309 = load i32, i32* %36, align 4
  %310 = load i32, i32* %17, align 4
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %314 = xor i32 %313, -1
  %315 = load i32, i32* %7, align 4
  %316 = and i32 %315, %314
  store i32 %316, i32* %7, align 4
  br label %317

317:                                              ; preds = %312, %308
  br label %318

318:                                              ; preds = %317, %292, %288, %283
  %319 = load i8*, i8** %5, align 8
  %320 = load i32*, i32** %15, align 8
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* %14, align 4
  %323 = load i64, i64* %16, align 8
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* %21, align 4
  %328 = call %struct.TYPE_11__* @R_CreateImage2Internal(i8* %319, i32* %320, i32 %321, i32 %322, i64 %323, i32 %324, i32 %325, i32 %326, i32 0, i32 %327)
  store %struct.TYPE_11__* %328, %struct.TYPE_11__** %12, align 8
  %329 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %330 = load i32*, i32** %15, align 8
  %331 = call i32 %329(i32* %330)
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %332, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %22, align 4
  br label %333

333:                                              ; preds = %318, %125, %85, %47
  %334 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %334)
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %335
}

declare dso_local %struct.TYPE_12__* @dmlab_context(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @generateHashValue(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @R_LoadImage(i8*, i32**, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i32 @RGBAtoNormal(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @RGBAtoYCoCgA(i32*, i32*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @YCoCgAtoRGBA(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @R_CreateImage2Internal(i8*, i32*, i32, i32, i64, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
