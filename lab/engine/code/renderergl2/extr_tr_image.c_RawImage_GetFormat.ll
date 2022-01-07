; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_GetFormat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_GetFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@GL_RGB = common dso_local global i64 0, align 8
@IMGFLAG_NO_COMPRESSION = common dso_local global i32 0, align 4
@IMGTYPE_NORMAL = common dso_local global i64 0, align 8
@IMGTYPE_NORMALHEIGHT = common dso_local global i64 0, align 8
@GL_RGBA8 = common dso_local global i64 0, align 8
@r_parallaxMapping = common dso_local global %struct.TYPE_8__* null, align 8
@glRefConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@TCR_BPTC = common dso_local global i32 0, align 4
@GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = common dso_local global i64 0, align 8
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TC_S3TC_ARB = common dso_local global i64 0, align 8
@GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = common dso_local global i64 0, align 8
@r_texturebits = common dso_local global %struct.TYPE_7__* null, align 8
@GL_RGBA4 = common dso_local global i64 0, align 8
@GL_RGBA = common dso_local global i64 0, align 8
@TCR_RGTC = common dso_local global i32 0, align 4
@GL_COMPRESSED_RG_RGTC2 = common dso_local global i64 0, align 8
@GL_RGB5 = common dso_local global i64 0, align 8
@GL_RGB8 = common dso_local global i64 0, align 8
@r_greyscale = common dso_local global %struct.TYPE_10__* null, align 8
@r_monolightmaps = common dso_local global %struct.TYPE_9__* null, align 8
@GL_LUMINANCE = common dso_local global i64 0, align 8
@GL_LUMINANCE8 = common dso_local global i64 0, align 8
@GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = common dso_local global i64 0, align 8
@TC_S3TC = common dso_local global i64 0, align 8
@GL_RGB4_S3TC = common dso_local global i64 0, align 8
@GL_LUMINANCE8_ALPHA8 = common dso_local global i64 0, align 8
@GL_LUMINANCE_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i32, i64, i32)* @RawImage_GetFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RawImage_GetFormat(i32* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %18 = load i64, i64* @GL_RGB, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @IMGFLAG_NO_COMPRESSION, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @IMGTYPE_NORMAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @IMGTYPE_NORMALHEIGHT, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %6
  %30 = phi i1 [ true, %6 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @GL_RGBA8, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %7, align 8
  br label %309

37:                                               ; preds = %29
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %144

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @IMGTYPE_NORMALHEIGHT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @RawImage_HasAlpha(i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_parallaxMapping, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 4
  %59 = load i32, i32* @TCR_BPTC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @GL_COMPRESSED_RGBA_BPTC_UNORM_ARB, align 8
  store i64 %63, i64* %15, align 8
  br label %92

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %69 = load i64, i64* @TC_S3TC_ARB, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, align 8
  store i64 %72, i64* %15, align 8
  br label %91

73:                                               ; preds = %67, %64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* @GL_RGBA4, align 8
  store i64 %79, i64* %15, align 8
  br label %90

80:                                               ; preds = %73
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 32
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* @GL_RGBA8, align 8
  store i64 %86, i64* %15, align 8
  br label %89

87:                                               ; preds = %80
  %88 = load i64, i64* @GL_RGBA, align 8
  store i64 %88, i64* %15, align 8
  br label %89

89:                                               ; preds = %87, %85
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %62
  br label %143

93:                                               ; preds = %49, %44, %40
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 4
  %98 = load i32, i32* @TCR_RGTC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* @GL_COMPRESSED_RG_RGTC2, align 8
  store i64 %102, i64* %15, align 8
  br label %142

103:                                              ; preds = %96, %93
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 4
  %108 = load i32, i32* @TCR_BPTC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i64, i64* @GL_COMPRESSED_RGBA_BPTC_UNORM_ARB, align 8
  store i64 %112, i64* %15, align 8
  br label %141

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %118 = load i64, i64* @TC_S3TC_ARB, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i64, i64* @GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, align 8
  store i64 %121, i64* %15, align 8
  br label %140

122:                                              ; preds = %116, %113
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 16
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i64, i64* @GL_RGB5, align 8
  store i64 %128, i64* %15, align 8
  br label %139

129:                                              ; preds = %122
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 32
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i64, i64* @GL_RGB8, align 8
  store i64 %135, i64* %15, align 8
  br label %138

136:                                              ; preds = %129
  %137 = load i64, i64* @GL_RGB, align 8
  store i64 %137, i64* %15, align 8
  br label %138

138:                                              ; preds = %136, %134
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139, %120
  br label %141

141:                                              ; preds = %140, %111
  br label %142

142:                                              ; preds = %141, %101
  br label %143

143:                                              ; preds = %142, %92
  br label %307

144:                                              ; preds = %37
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_greyscale, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_monolightmaps, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152, %147
  %158 = load i64, i64* @GL_LUMINANCE, align 8
  store i64 %158, i64* %15, align 8
  br label %161

159:                                              ; preds = %152
  %160 = load i64, i64* @GL_RGBA, align 8
  store i64 %160, i64* %15, align 8
  br label %161

161:                                              ; preds = %159, %157
  br label %306

162:                                              ; preds = %144
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @RawImage_HasAlpha(i32* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 4, i32* %14, align 4
  br label %168

168:                                              ; preds = %167, %162
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %241

171:                                              ; preds = %168
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_greyscale, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 16
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %188

186:                                              ; preds = %181, %176
  %187 = load i64, i64* @GL_LUMINANCE8, align 8
  store i64 %187, i64* %15, align 8
  br label %190

188:                                              ; preds = %181
  %189 = load i64, i64* @GL_LUMINANCE, align 8
  store i64 %189, i64* %15, align 8
  br label %190

190:                                              ; preds = %188, %186
  br label %240

191:                                              ; preds = %171
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 4
  %196 = load i32, i32* @TCR_BPTC, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i64, i64* @GL_COMPRESSED_RGBA_BPTC_UNORM_ARB, align 8
  store i64 %200, i64* %15, align 8
  br label %239

201:                                              ; preds = %194, %191
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %201
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %206 = load i64, i64* @TC_S3TC_ARB, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i64, i64* @GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, align 8
  store i64 %209, i64* %15, align 8
  br label %238

210:                                              ; preds = %204, %201
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %215 = load i64, i64* @TC_S3TC, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i64, i64* @GL_RGB4_S3TC, align 8
  store i64 %218, i64* %15, align 8
  br label %237

219:                                              ; preds = %213, %210
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 16
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i64, i64* @GL_RGB5, align 8
  store i64 %225, i64* %15, align 8
  br label %236

226:                                              ; preds = %219
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 32
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i64, i64* @GL_RGB8, align 8
  store i64 %232, i64* %15, align 8
  br label %235

233:                                              ; preds = %226
  %234 = load i64, i64* @GL_RGB, align 8
  store i64 %234, i64* %15, align 8
  br label %235

235:                                              ; preds = %233, %231
  br label %236

236:                                              ; preds = %235, %224
  br label %237

237:                                              ; preds = %236, %217
  br label %238

238:                                              ; preds = %237, %208
  br label %239

239:                                              ; preds = %238, %199
  br label %240

240:                                              ; preds = %239, %190
  br label %305

241:                                              ; preds = %168
  %242 = load i32, i32* %14, align 4
  %243 = icmp eq i32 %242, 4
  br i1 %243, label %244, label %304

244:                                              ; preds = %241
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_greyscale, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %264

249:                                              ; preds = %244
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 16
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 32
  br i1 %258, label %259, label %261

259:                                              ; preds = %254, %249
  %260 = load i64, i64* @GL_LUMINANCE8_ALPHA8, align 8
  store i64 %260, i64* %15, align 8
  br label %263

261:                                              ; preds = %254
  %262 = load i64, i64* @GL_LUMINANCE_ALPHA, align 8
  store i64 %262, i64* %15, align 8
  br label %263

263:                                              ; preds = %261, %259
  br label %303

264:                                              ; preds = %244
  %265 = load i32, i32* %16, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 4
  %269 = load i32, i32* @TCR_BPTC, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = load i64, i64* @GL_COMPRESSED_RGBA_BPTC_UNORM_ARB, align 8
  store i64 %273, i64* %15, align 8
  br label %302

274:                                              ; preds = %267, %264
  %275 = load i32, i32* %16, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %274
  %278 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %279 = load i64, i64* @TC_S3TC_ARB, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = load i64, i64* @GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, align 8
  store i64 %282, i64* %15, align 8
  br label %301

283:                                              ; preds = %277, %274
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 16
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load i64, i64* @GL_RGBA4, align 8
  store i64 %289, i64* %15, align 8
  br label %300

290:                                              ; preds = %283
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_texturebits, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 32
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = load i64, i64* @GL_RGBA8, align 8
  store i64 %296, i64* %15, align 8
  br label %299

297:                                              ; preds = %290
  %298 = load i64, i64* @GL_RGBA, align 8
  store i64 %298, i64* %15, align 8
  br label %299

299:                                              ; preds = %297, %295
  br label %300

300:                                              ; preds = %299, %288
  br label %301

301:                                              ; preds = %300, %281
  br label %302

302:                                              ; preds = %301, %272
  br label %303

303:                                              ; preds = %302, %263
  br label %304

304:                                              ; preds = %303, %241
  br label %305

305:                                              ; preds = %304, %240
  br label %306

306:                                              ; preds = %305, %161
  br label %307

307:                                              ; preds = %306, %143
  %308 = load i64, i64* %15, align 8
  store i64 %308, i64* %7, align 8
  br label %309

309:                                              ; preds = %307, %35
  %310 = load i64, i64* %7, align 8
  ret i64 %310
}

declare dso_local i64 @RawImage_HasAlpha(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
