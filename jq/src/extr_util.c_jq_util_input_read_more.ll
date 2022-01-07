; ModuleID = '/home/carl/AnghaBench/jq/src/extr_util.c_jq_util_input_read_more.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_util.c_jq_util_input_read_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i64, i32*, i32*, i64, i32, i32, i32 (i32, i8*)*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"jq: error: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @jq_util_input_read_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jq_util_input_read_more(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @feof(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @ferror(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %117

23:                                               ; preds = %17, %11, %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @ferror(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = load i64, i64* @errno, align 8
  %37 = call i8* @strerror(i64 %36)
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %28, %23
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** @stdin, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** @stdin, align 8
  %52 = call i32 @clearerr(i32* %51)
  br label %58

53:                                               ; preds = %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @fclose(i32* %56)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 10
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @jv_free(i8* %63)
  %65 = call i8* (...) @jv_invalid()
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 10
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %58, %39
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = call i8* @next_file(%struct.TYPE_4__* %71)
  store i8* %72, i8** %3, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %116

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** @stdin, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  %83 = call i8* @jv_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 10
  store i8* %83, i8** %85, align 8
  br label %113

86:                                               ; preds = %75
  %87 = load i8*, i8** %3, align 8
  %88 = call i32* @fopen(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i32* %88, i32** %90, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = call i8* @jv_string(i8* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 10
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %86
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 9
  %102 = load i32 (i32, i8*)*, i32 (i32, i8*)** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 %102(i32 %105, i8* %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %99, %86
  br label %113

113:                                              ; preds = %112, %79
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %70
  br label %117

117:                                              ; preds = %116, %17
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 0, i8* %121, align 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %260

128:                                              ; preds = %117
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @memset(i8* %131, i32 255, i32 8)
  br label %133

133:                                              ; preds = %154, %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = call i8* @fgets(i8* %136, i32 8, i32* %139)
  store i8* %140, i8** %4, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %133
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @ferror(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i64, i64* @errno, align 8
  %150 = load i64, i64* @EINTR, align 8
  %151 = icmp eq i64 %149, %150
  br label %152

152:                                              ; preds = %148, %142, %133
  %153 = phi i1 [ false, %142 ], [ false, %133 ], [ %151, %148 ]
  br i1 %153, label %154, label %159

154:                                              ; preds = %152
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @clearerr(i32* %157)
  br label %133

159:                                              ; preds = %152
  %160 = load i8*, i8** %4, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  store i8 0, i8* %166, align 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @ferror(i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %172, %162
  br label %259

178:                                              ; preds = %159
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @memchr(i8* %181, i8 signext 10, i32 8)
  store i8* %182, i8** %5, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %185, %178
  %191 = load i8*, i8** %5, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @strlen(i8* %201)
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  br label %258

205:                                              ; preds = %193, %190
  %206 = load i8*, i8** %5, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %239

208:                                              ; preds = %205
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @feof(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %208
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %5, align 8
  store i64 7, i64* %6, align 8
  br label %218

218:                                              ; preds = %232, %214
  %219 = load i64, i64* %6, align 8
  %220 = icmp ugt i64 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %218
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i64, i64* %6, align 8
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %235

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231
  %233 = load i64, i64* %6, align 8
  %234 = add i64 %233, -1
  store i64 %234, i64* %6, align 8
  br label %218

235:                                              ; preds = %230, %218
  %236 = load i64, i64* %6, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  br label %257

239:                                              ; preds = %208, %205
  %240 = load i8*, i8** %5, align 8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store i64 7, i64* %244, align 8
  br label %256

245:                                              ; preds = %239
  %246 = load i8*, i8** %5, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = ptrtoint i8* %246 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = add nsw i64 %252, 1
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %245, %242
  br label %257

257:                                              ; preds = %256, %235
  br label %258

258:                                              ; preds = %257, %198
  br label %259

259:                                              ; preds = %258, %177
  br label %260

260:                                              ; preds = %259, %117
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %263, %266
  br i1 %267, label %268, label %287

268:                                              ; preds = %260
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %285

273:                                              ; preds = %268
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = call i64 @feof(i32* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %273
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 4
  %282 = load i32*, i32** %281, align 8
  %283 = call i64 @ferror(i32* %282)
  %284 = icmp ne i64 %283, 0
  br label %285

285:                                              ; preds = %279, %273, %268
  %286 = phi i1 [ true, %273 ], [ true, %268 ], [ %284, %279 ]
  br label %287

287:                                              ; preds = %285, %260
  %288 = phi i1 [ false, %260 ], [ %286, %285 ]
  %289 = zext i1 %288 to i32
  ret i32 %289
}

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @jv_free(i8*) #1

declare dso_local i8* @jv_invalid(...) #1

declare dso_local i8* @next_file(%struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @jv_string(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
