; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_delta.c_git_delta_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_delta.c_git_delta_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"failed to apply delta: base size does not match given data\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to apply delta\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_delta_apply(i8** %0, i64* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %14, align 8
  %26 = load i8**, i8*** %8, align 8
  store i8* null, i8** %26, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i64 @hdr_sz(i64* %15, i8** %12, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %6
  %36 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %37 = call i32 @git_error_set(i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %300

38:                                               ; preds = %31
  %39 = load i8*, i8** %14, align 8
  %40 = call i64 @hdr_sz(i64* %16, i8** %12, i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %44 = call i32 @git_error_set(i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %300

45:                                               ; preds = %38
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %17, i64 %46, i32 1)
  %48 = load i64, i64* %17, align 8
  %49 = call i8* @git__malloc(i64 %48)
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %50)
  %52 = load i8*, i8** %18, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %18, align 8
  %56 = load i8**, i8*** %8, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %282, %45
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %283

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  %66 = load i8, i8* %64, align 1
  store i8 %66, i8* %19, align 1
  %67 = load i8, i8* %19, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %243

71:                                               ; preds = %63
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %72 = load i8, i8* %19, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ult i8* %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 0
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %20, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %20, align 8
  br label %90

89:                                               ; preds = %76
  br label %292

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i8, i8* %19, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ult i8* %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %12, align 8
  %103 = load i8, i8* %101, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 8
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %20, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %20, align 8
  br label %110

109:                                              ; preds = %96
  br label %292

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i8, i8* %19, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = icmp ult i8* %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %12, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 16
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %20, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %20, align 8
  br label %130

129:                                              ; preds = %116
  br label %292

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %111
  %132 = load i8, i8* %19, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load i8*, i8** %12, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = icmp ult i8* %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %12, align 8
  %143 = load i8, i8* %141, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 %144, 24
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %20, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %20, align 8
  br label %150

149:                                              ; preds = %136
  br label %292

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %131
  %152 = load i8, i8* %19, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 16
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %151
  %157 = load i8*, i8** %12, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = icmp ult i8* %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i8*, i8** %12, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %12, align 8
  %163 = load i8, i8* %161, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %164, 0
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %21, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %21, align 8
  br label %170

169:                                              ; preds = %156
  br label %292

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %151
  %172 = load i8, i8* %19, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = icmp ult i8* %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i8*, i8** %12, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %12, align 8
  %183 = load i8, i8* %181, align 1
  %184 = zext i8 %183 to i32
  %185 = shl i32 %184, 8
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %21, align 8
  %188 = or i64 %187, %186
  store i64 %188, i64* %21, align 8
  br label %190

189:                                              ; preds = %176
  br label %292

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %171
  %192 = load i8, i8* %19, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %193, 64
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %191
  %197 = load i8*, i8** %12, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = icmp ult i8* %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i8*, i8** %12, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %12, align 8
  %203 = load i8, i8* %201, align 1
  %204 = zext i8 %203 to i32
  %205 = shl i32 %204, 16
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %21, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %21, align 8
  br label %210

209:                                              ; preds = %196
  br label %292

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210, %191
  %212 = load i64, i64* %21, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  store i64 65536, i64* %21, align 8
  br label %215

215:                                              ; preds = %214, %211
  %216 = load i64, i64* %20, align 8
  %217 = load i64, i64* %21, align 8
  %218 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %22, i64 %216, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %215
  %221 = load i64, i64* %11, align 8
  %222 = load i64, i64* %22, align 8
  %223 = icmp ult i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* %21, align 8
  %227 = icmp ult i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224, %220, %215
  br label %292

229:                                              ; preds = %224
  %230 = load i8*, i8** %18, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = load i64, i64* %20, align 8
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  %234 = load i64, i64* %21, align 8
  %235 = trunc i64 %234 to i8
  %236 = call i32 @memcpy(i8* %230, i8* %233, i8 zeroext %235)
  %237 = load i64, i64* %21, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 %237
  store i8* %239, i8** %18, align 8
  %240 = load i64, i64* %21, align 8
  %241 = load i64, i64* %16, align 8
  %242 = sub i64 %241, %240
  store i64 %242, i64* %16, align 8
  br label %282

243:                                              ; preds = %63
  %244 = load i8, i8* %19, align 1
  %245 = icmp ne i8 %244, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %243
  %247 = load i8*, i8** %14, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = ptrtoint i8* %247 to i64
  %250 = ptrtoint i8* %248 to i64
  %251 = sub i64 %249, %250
  %252 = load i8, i8* %19, align 1
  %253 = zext i8 %252 to i64
  %254 = icmp slt i64 %251, %253
  br i1 %254, label %260, label %255

255:                                              ; preds = %246
  %256 = load i64, i64* %16, align 8
  %257 = load i8, i8* %19, align 1
  %258 = zext i8 %257 to i64
  %259 = icmp ult i64 %256, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %255, %246
  br label %292

261:                                              ; preds = %255
  %262 = load i8*, i8** %18, align 8
  %263 = load i8*, i8** %12, align 8
  %264 = load i8, i8* %19, align 1
  %265 = call i32 @memcpy(i8* %262, i8* %263, i8 zeroext %264)
  %266 = load i8, i8* %19, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8*, i8** %12, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %12, align 8
  %271 = load i8, i8* %19, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8*, i8** %18, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8* %275, i8** %18, align 8
  %276 = load i8, i8* %19, align 1
  %277 = zext i8 %276 to i64
  %278 = load i64, i64* %16, align 8
  %279 = sub i64 %278, %277
  store i64 %279, i64* %16, align 8
  br label %281

280:                                              ; preds = %243
  br label %292

281:                                              ; preds = %261
  br label %282

282:                                              ; preds = %281, %229
  br label %59

283:                                              ; preds = %59
  %284 = load i8*, i8** %12, align 8
  %285 = load i8*, i8** %14, align 8
  %286 = icmp ne i8* %284, %285
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = load i64, i64* %16, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287, %283
  br label %292

291:                                              ; preds = %287
  store i32 0, i32* %7, align 4
  br label %300

292:                                              ; preds = %290, %280, %260, %228, %209, %189, %169, %149, %129, %109, %89
  %293 = load i8**, i8*** %8, align 8
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @git__free(i8* %294)
  %296 = load i8**, i8*** %8, align 8
  store i8* null, i8** %296, align 8
  %297 = load i64*, i64** %9, align 8
  store i64 0, i64* %297, align 8
  %298 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %299 = call i32 @git_error_set(i32 %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %300

300:                                              ; preds = %292, %291, %42, %35
  %301 = load i32, i32* %7, align 4
  ret i32 %301
}

declare dso_local i64 @hdr_sz(i64*, i8**, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
