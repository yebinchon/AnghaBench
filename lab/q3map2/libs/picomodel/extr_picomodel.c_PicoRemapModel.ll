; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoRemapModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoRemapModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@_prm_error_return = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"materials[\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"diffuse\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"specular\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoRemapModel(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %418

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @_pico_load_file(i8* %28, i32** %7, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %418

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %418

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.TYPE_9__* @_pico_new_parser(i32* %38, i32 %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = icmp eq %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @_prm_error_return, align 4
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %57, %208, %412
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = call i32* @_pico_parse(%struct.TYPE_9__* %47, i32 1)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %413

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @_pico_stricmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = call i32 @_pico_parse_skip_rest(%struct.TYPE_9__* %58)
  br label %46

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @_pico_stricmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %173, label %66

66:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = call i32 @_pico_parse_check(%struct.TYPE_9__* %67, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @_prm_error_return, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %84, %167
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i32* @_pico_parse(%struct.TYPE_9__* %74, i32 1)
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %172

78:                                               ; preds = %73
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %73

85:                                               ; preds = %78
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @_pico_clone_alloc(i8* %88)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @_prm_error_return, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 123
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 125
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %172

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = call i32* @_pico_parse(%struct.TYPE_9__* %121, i32 0)
  %123 = icmp ne i32* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @_pico_free(i8* %125)
  %127 = load i32, i32* @_prm_error_return, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %140, %134, %128
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = call i32* @_pico_parse(%struct.TYPE_9__* %147, i32 0)
  %149 = icmp ne i32* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @_pico_free(i8* %151)
  %153 = load i32, i32* @_prm_error_return, align 4
  br label %154

154:                                              ; preds = %150, %146
  br label %155

155:                                              ; preds = %154, %140
  %156 = load i32*, i32** %4, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = call i32* @PicoFindShader(i32* %156, i8* %157, i32 0)
  store i32* %158, i32** %10, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32*, i32** %10, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @PicoSetShaderName(i32* %162, i8* %165)
  br label %167

167:                                              ; preds = %161, %155
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @_pico_free(i8* %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = call i32 @_pico_parse_skip_rest(%struct.TYPE_9__* %170)
  br label %73

172:                                              ; preds = %119, %77
  br label %412

173:                                              ; preds = %60
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @_pico_stricmp(i8* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %411, label %179

179:                                              ; preds = %173
  store i32 1, i32* %14, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = call i32* @_pico_parse(%struct.TYPE_9__* %180, i32 0)
  %182 = icmp ne i32* %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* @_prm_error_return, align 4
  br label %185

185:                                              ; preds = %183, %179
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @_pico_clone_alloc(i8* %188)
  store i8* %189, i8** %13, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @_prm_error_return, align 4
  br label %194

194:                                              ; preds = %192, %185
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %196 = call i32 @_pico_parse_check(%struct.TYPE_9__* %195, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* @_prm_error_return, align 4
  br label %200

200:                                              ; preds = %198, %194
  %201 = load i32*, i32** %4, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = call i32* @PicoFindShader(i32* %201, i8* %202, i32 0)
  store i32* %203, i32** %12, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = call i32 @_pico_free(i8* %204)
  %206 = load i32*, i32** %12, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %210 = call i32 @_pico_parse_skip_braced(%struct.TYPE_9__* %209)
  br label %46

211:                                              ; preds = %200
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %213 = call i32 @_pico_parse_check(%struct.TYPE_9__* %212, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @_prm_error_return, align 4
  br label %217

217:                                              ; preds = %215, %211
  br label %218

218:                                              ; preds = %217, %229, %407
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = call i32* @_pico_parse(%struct.TYPE_9__* %219, i32 1)
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  br label %410

223:                                              ; preds = %218
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @strlen(i8* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %223
  br label %218

230:                                              ; preds = %223
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 123
  br i1 %237, label %238, label %241

238:                                              ; preds = %230
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %241

241:                                              ; preds = %238, %230
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 125
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %14, align 4
  br label %252

252:                                              ; preds = %249, %241
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  br label %410

256:                                              ; preds = %252
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @_pico_stricmp(i8* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %256
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %264 = call i32* @_pico_parse(%struct.TYPE_9__* %263, i32 0)
  %265 = icmp ne i32* %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* @_prm_error_return, align 4
  br label %268

268:                                              ; preds = %266, %262
  %269 = load i32*, i32** %12, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @PicoSetShaderName(i32* %269, i8* %272)
  br label %407

274:                                              ; preds = %256
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @_pico_stricmp(i8* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %292, label %280

280:                                              ; preds = %274
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %282 = call i32* @_pico_parse(%struct.TYPE_9__* %281, i32 0)
  %283 = icmp ne i32* %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %280
  %285 = load i32, i32* @_prm_error_return, align 4
  br label %286

286:                                              ; preds = %284, %280
  %287 = load i32*, i32** %12, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @PicoSetShaderMapName(i32* %287, i8* %290)
  br label %406

292:                                              ; preds = %274
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @_pico_stricmp(i8* %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %329, label %298

298:                                              ; preds = %292
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %300 = load i64*, i64** %16, align 8
  %301 = call i32 @_pico_parse_vec(%struct.TYPE_9__* %299, i64* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %298
  %304 = load i32, i32* @_prm_error_return, align 4
  br label %305

305:                                              ; preds = %303, %298
  %306 = load i64*, i64** %16, align 8
  %307 = getelementptr inbounds i64, i64* %306, i64 0
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = load i32*, i32** %15, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  store i32 %309, i32* %311, align 4
  %312 = load i64*, i64** %16, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 1
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = load i32*, i32** %15, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  store i32 %315, i32* %317, align 4
  %318 = load i64*, i64** %16, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 2
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i32*, i32** %15, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  store i32 %321, i32* %323, align 4
  %324 = load i32*, i32** %15, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 3
  store i32 1, i32* %325, align 4
  %326 = load i32*, i32** %12, align 8
  %327 = load i32*, i32** %15, align 8
  %328 = call i32 @PicoSetShaderAmbientColor(i32* %326, i32* %327)
  br label %405

329:                                              ; preds = %292
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @_pico_stricmp(i8* %332, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %366, label %335

335:                                              ; preds = %329
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %337 = load i64*, i64** %18, align 8
  %338 = call i32 @_pico_parse_vec(%struct.TYPE_9__* %336, i64* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %335
  %341 = load i32, i32* @_prm_error_return, align 4
  br label %342

342:                                              ; preds = %340, %335
  %343 = load i64*, i64** %18, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 0
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = load i32*, i32** %17, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  store i32 %346, i32* %348, align 4
  %349 = load i64*, i64** %18, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 1
  %351 = load i64, i64* %350, align 8
  %352 = trunc i64 %351 to i32
  %353 = load i32*, i32** %17, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 1
  store i32 %352, i32* %354, align 4
  %355 = load i64*, i64** %18, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 2
  %357 = load i64, i64* %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = load i32*, i32** %17, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  store i32 %358, i32* %360, align 4
  %361 = load i32*, i32** %17, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 3
  store i32 1, i32* %362, align 4
  %363 = load i32*, i32** %12, align 8
  %364 = load i32*, i32** %17, align 8
  %365 = call i32 @PicoSetShaderDiffuseColor(i32* %363, i32* %364)
  br label %404

366:                                              ; preds = %329
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @_pico_stricmp(i8* %369, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %403, label %372

372:                                              ; preds = %366
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %374 = load i64*, i64** %20, align 8
  %375 = call i32 @_pico_parse_vec(%struct.TYPE_9__* %373, i64* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %372
  %378 = load i32, i32* @_prm_error_return, align 4
  br label %379

379:                                              ; preds = %377, %372
  %380 = load i64*, i64** %20, align 8
  %381 = getelementptr inbounds i64, i64* %380, i64 0
  %382 = load i64, i64* %381, align 8
  %383 = trunc i64 %382 to i32
  %384 = load i32*, i32** %19, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  store i32 %383, i32* %385, align 4
  %386 = load i64*, i64** %20, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 1
  %388 = load i64, i64* %387, align 8
  %389 = trunc i64 %388 to i32
  %390 = load i32*, i32** %19, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  store i32 %389, i32* %391, align 4
  %392 = load i64*, i64** %20, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 2
  %394 = load i64, i64* %393, align 8
  %395 = trunc i64 %394 to i32
  %396 = load i32*, i32** %19, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 2
  store i32 %395, i32* %397, align 4
  %398 = load i32*, i32** %19, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 3
  store i32 1, i32* %399, align 4
  %400 = load i32*, i32** %12, align 8
  %401 = load i32*, i32** %19, align 8
  %402 = call i32 @PicoSetShaderSpecularColor(i32* %400, i32* %401)
  br label %403

403:                                              ; preds = %379, %366
  br label %404

404:                                              ; preds = %403, %342
  br label %405

405:                                              ; preds = %404, %305
  br label %406

406:                                              ; preds = %405, %286
  br label %407

407:                                              ; preds = %406, %268
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %409 = call i32 @_pico_parse_skip_rest(%struct.TYPE_9__* %408)
  br label %218

410:                                              ; preds = %255, %222
  br label %411

411:                                              ; preds = %410, %173
  br label %412

412:                                              ; preds = %411, %172
  br label %46

413:                                              ; preds = %50
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %415 = call i32 @_pico_free_parser(%struct.TYPE_9__* %414)
  %416 = load i32*, i32** %7, align 8
  %417 = call i32 @_pico_free_file(i32* %416)
  store i32 1, i32* %3, align 4
  br label %418

418:                                              ; preds = %413, %36, %32, %26
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i32 @_pico_load_file(i8*, i32**, i32*) #1

declare dso_local %struct.TYPE_9__* @_pico_new_parser(i32*, i32) #1

declare dso_local i32* @_pico_parse(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @_pico_stricmp(i8*, i8*) #1

declare dso_local i32 @_pico_parse_skip_rest(%struct.TYPE_9__*) #1

declare dso_local i32 @_pico_parse_check(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @_pico_clone_alloc(i8*) #1

declare dso_local i32 @_pico_free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @PicoFindShader(i32*, i8*, i32) #1

declare dso_local i32 @PicoSetShaderName(i32*, i8*) #1

declare dso_local i32 @_pico_parse_skip_braced(%struct.TYPE_9__*) #1

declare dso_local i32 @PicoSetShaderMapName(i32*, i8*) #1

declare dso_local i32 @_pico_parse_vec(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @PicoSetShaderAmbientColor(i32*, i32*) #1

declare dso_local i32 @PicoSetShaderDiffuseColor(i32*, i32*) #1

declare dso_local i32 @PicoSetShaderSpecularColor(i32*, i32*) #1

declare dso_local i32 @_pico_free_parser(%struct.TYPE_9__*) #1

declare dso_local i32 @_pico_free_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
