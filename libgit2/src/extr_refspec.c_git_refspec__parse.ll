; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refspec.c_git_refspec__parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refspec.c_git_refspec__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"'%s' is not a valid refspec.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_refspec__parse(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = call i32 @memset(%struct.TYPE_5__* %23, i32 0, i32 48)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %36, %19
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @strrchr(i8* %42, i8 signext 58)
  store i8* %43, i8** %11, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %81, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @git__strdup(i8* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %65)
  %67 = call i8* @git__strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %72)
  %74 = call i8* @git__strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %79)
  store i32 0, i32* %4, align 4
  br label %299

81:                                               ; preds = %50, %46, %41
  %82 = load i8*, i8** %11, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  %87 = call i64 @strlen(i8* %86)
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %90, %84
  %94 = load i64, i64* %13, align 8
  %95 = icmp ule i64 1, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i8*, i8** %11, align 8
  %98 = call i64 @strchr(i8* %97, i8 signext 42)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %9, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i8* @git__strndup(i8* %103, i64 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %100, %90
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i8*, i8** %11, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sub nsw i64 %117, 1
  br label %122

119:                                              ; preds = %109
  %120 = load i8*, i8** %10, align 8
  %121 = call i64 @strlen(i8* %120)
  br label %122

122:                                              ; preds = %119, %112
  %123 = phi i64 [ %118, %112 ], [ %121, %119 ]
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp ule i64 1, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load i8*, i8** %10, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @memchr(i8* %127, i8 signext 42, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load i8*, i8** %11, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134, %131
  %138 = load i8*, i8** %11, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %134
  br label %293

144:                                              ; preds = %140, %137
  store i32 1, i32* %9, align 4
  br label %153

145:                                              ; preds = %126, %122
  %146 = load i8*, i8** %11, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %293

152:                                              ; preds = %148, %145
  br label %153

153:                                              ; preds = %152, %144
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i8* @git__strndup(i8* %157, i64 %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %163 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  br label %170

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i32 [ %168, %167 ], [ 0, %169 ]
  %172 = or i32 %164, %171
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %215

175:                                              ; preds = %170
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  br label %191

182:                                              ; preds = %175
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @git_reference__is_valid_name(i8* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %182
  br label %293

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %181
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 5
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %214

197:                                              ; preds = %191
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 5
  %200 = load i8*, i8** %199, align 8
  %201 = load i8, i8* %200, align 1
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  br label %213

204:                                              ; preds = %197
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 5
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @git_reference__is_valid_name(i8* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  br label %293

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212, %203
  br label %214

214:                                              ; preds = %213, %196
  br label %284

215:                                              ; preds = %170
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 4
  %218 = load i8*, i8** %217, align 8
  %219 = load i8, i8* %218, align 1
  %220 = icmp ne i8 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  br label %236

222:                                              ; preds = %215
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = call i32 @git_reference__is_valid_name(i8* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %225
  br label %293

233:                                              ; preds = %225
  br label %235

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234, %233
  br label %236

236:                                              ; preds = %235, %221
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 5
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %250, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 4
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @git_reference__is_valid_name(i8* %244, i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %241
  br label %293

249:                                              ; preds = %241
  br label %267

250:                                              ; preds = %236
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 5
  %253 = load i8*, i8** %252, align 8
  %254 = load i8, i8* %253, align 1
  %255 = icmp ne i8 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %250
  br label %293

257:                                              ; preds = %250
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 5
  %260 = load i8*, i8** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @git_reference__is_valid_name(i8* %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %293

265:                                              ; preds = %257
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266, %249
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 5
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %283, label %272

272:                                              ; preds = %267
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 4
  %275 = load i8*, i8** %274, align 8
  %276 = call i8* @git__strdup(i8* %275)
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 5
  store i8* %276, i8** %278, align 8
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 5
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %281)
  br label %283

283:                                              ; preds = %272, %267
  br label %284

284:                                              ; preds = %283, %214
  %285 = load i8*, i8** %6, align 8
  %286 = call i8* @git__strdup(i8* %285)
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 3
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %291)
  store i32 0, i32* %4, align 4
  br label %299

293:                                              ; preds = %264, %256, %248, %232, %211, %189, %151, %143
  %294 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %295 = load i8*, i8** %6, align 8
  %296 = call i32 @git_error_set(i32 %294, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %295)
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %298 = call i32 @git_refspec__dispose(%struct.TYPE_5__* %297)
  store i32 -1, i32* %4, align 4
  br label %299

299:                                              ; preds = %293, %284, %56
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @git__strndup(i8*, i64) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @git_reference__is_valid_name(i8*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_refspec__dispose(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
