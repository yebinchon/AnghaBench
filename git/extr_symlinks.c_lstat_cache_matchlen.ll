; ModuleID = '/home/carl/AnghaBench/git/extr_symlinks.c_lstat_cache_matchlen.c'
source_filename = "/home/carl/AnghaBench/git/extr_symlinks.c_lstat_cache_matchlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_def = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.stat = type { i32 }

@FL_NOENT = common dso_local global i32 0, align 4
@FL_SYMLINK = common dso_local global i32 0, align 4
@FL_FULLPATH = common dso_local global i32 0, align 4
@FL_DIR = common dso_local global i32 0, align 4
@FL_LSTATERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_def*, i8*, i32, i32*, i32, i32)* @lstat_cache_matchlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lstat_cache_matchlen(%struct.cache_def* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_def*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.stat, align 4
  store %struct.cache_def* %0, %struct.cache_def** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %22 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %6
  %27 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %28 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26, %6
  %33 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %34 = call i32 @reset_lstat_cache(%struct.cache_def* %33)
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %37 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %40 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %101

41:                                               ; preds = %26
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %45 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %49 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @longest_path_match(i8* %42, i32 %43, i8* %47, i32 %51, i32* %17)
  store i32 %52, i32* %15, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %54 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @FL_NOENT, align 4
  %59 = load i32, i32* @FL_SYMLINK, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @FL_FULLPATH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %41
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %15, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %71, %67, %41
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %80 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %284

86:                                               ; preds = %77, %73
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @FL_DIR, align 4
  %89 = and i32 %87, %88
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %7, align 4
  br label %284

100:                                              ; preds = %94, %86
  br label %101

101:                                              ; preds = %100, %32
  %102 = load i32, i32* @FL_DIR, align 4
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %107 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %105, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %101
  %112 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %113 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %112, i32 0, i32 3
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %116 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %114, %118
  %120 = call i32 @strbuf_grow(%struct.TYPE_2__* %113, i32 %119)
  br label %121

121:                                              ; preds = %111, %101
  br label %122

122:                                              ; preds = %210, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %226

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %134 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %132, i8* %139, align 1
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %127
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load i8*, i8** %9, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 47
  br label %154

154:                                              ; preds = %146, %142
  %155 = phi i1 [ false, %142 ], [ %153, %146 ]
  br i1 %155, label %127, label %156

156:                                              ; preds = %154
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @FL_FULLPATH, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %226

166:                                              ; preds = %160, %156
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %15, align 4
  %168 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %169 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %166
  %179 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %180 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @stat(i8* %182, %struct.stat* %20)
  store i32 %183, i32* %19, align 4
  br label %190

184:                                              ; preds = %166
  %185 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %186 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @lstat(i8* %188, %struct.stat* %20)
  store i32 %189, i32* %19, align 4
  br label %190

190:                                              ; preds = %184, %178
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load i32, i32* @FL_LSTATERR, align 4
  %195 = load i32*, i32** %11, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i64, i64* @errno, align 8
  %197 = load i64, i64* @ENOENT, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load i32, i32* @FL_NOENT, align 4
  %201 = load i32*, i32** %11, align 8
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %200
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %199, %193
  br label %225

205:                                              ; preds = %190
  %206 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @S_ISDIR(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %16, align 4
  br label %122

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @S_ISLNK(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* @FL_SYMLINK, align 4
  %219 = load i32*, i32** %11, align 8
  store i32 %218, i32* %219, align 4
  br label %223

220:                                              ; preds = %212
  %221 = load i32, i32* @FL_ERR, align 4
  %222 = load i32*, i32** %11, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224, %204
  br label %226

226:                                              ; preds = %225, %165, %122
  %227 = load i32*, i32** %11, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %12, align 4
  %230 = and i32 %228, %229
  %231 = load i32, i32* @FL_NOENT, align 4
  %232 = load i32, i32* @FL_SYMLINK, align 4
  %233 = or i32 %231, %232
  %234 = and i32 %230, %233
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %226
  %238 = load i32, i32* %15, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %237
  %241 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %242 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  store i8 0, i8* %247, align 1
  %248 = load i32, i32* %15, align 4
  %249 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %250 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 1
  store i32 %248, i32* %251, align 8
  %252 = load i32, i32* %18, align 4
  %253 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %254 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  br label %282

255:                                              ; preds = %237, %226
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* @FL_DIR, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %255
  %261 = load i32, i32* %16, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %260
  %264 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %265 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %16, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 0, i8* %270, align 1
  %271 = load i32, i32* %16, align 4
  %272 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %273 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 8
  %275 = load i32, i32* @FL_DIR, align 4
  %276 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %277 = getelementptr inbounds %struct.cache_def, %struct.cache_def* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  br label %281

278:                                              ; preds = %260, %255
  %279 = load %struct.cache_def*, %struct.cache_def** %8, align 8
  %280 = call i32 @reset_lstat_cache(%struct.cache_def* %279)
  br label %281

281:                                              ; preds = %278, %263
  br label %282

282:                                              ; preds = %281, %240
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %7, align 4
  br label %284

284:                                              ; preds = %282, %98, %84
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

declare dso_local i32 @reset_lstat_cache(%struct.cache_def*) #1

declare dso_local i32 @longest_path_match(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @strbuf_grow(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
