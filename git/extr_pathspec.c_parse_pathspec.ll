; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_parse_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_parse_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, i32, i32, %struct.pathspec_item* }
%struct.pathspec_item = type { i64, i64, i64, i32, i8*, i8* }

@PATHSPEC_MAXDEPTH_VALID = common dso_local global i32 0, align 4
@PATHSPEC_MAXDEPTH = common dso_local global i32 0, align 4
@PATHSPEC_PREFER_CWD = common dso_local global i32 0, align 4
@PATHSPEC_PREFER_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"PATHSPEC_PREFER_CWD and PATHSPEC_PREFER_FULL are incompatible\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"PATHSPEC_PREFER_CWD requires arguments\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"empty string is not a valid pathspec. please use . instead if you meant to match all paths\00", align 1
@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@PATHSPEC_SYMLINK_LEADING_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"pathspec '%s' is beyond a symbolic link\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PATHSPEC_KEEP_ORDER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"PATHSPEC_MAXDEPTH_VALID and PATHSPEC_KEEP_ORDER are incompatible\00", align 1
@pathspec_item_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_pathspec(%struct.pathspec* %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca %struct.pathspec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.pathspec_item*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pathspec* %0, %struct.pathspec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i8* [ %22, %20 ], [ null, %23 ]
  store i8* %25, i8** %12, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %27 = call i32 @memset(%struct.pathspec* %26, i32 0, i32 24)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PATHSPEC_MAXDEPTH_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %34 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %35 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %24
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %300

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @BUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50, %45
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %99, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %300

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = call %struct.pathspec_item* @xcalloc(i32 1, i32 48)
  store %struct.pathspec_item* %74, %struct.pathspec_item** %11, align 8
  %75 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %76 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %75, i32 0, i32 3
  store %struct.pathspec_item* %74, %struct.pathspec_item** %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i8* @xstrdup(i8* %77)
  %79 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %80 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i8* @xstrdup(i8* %81)
  %83 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %84 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i8* @strlen(i8* %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %89 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %91 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %93 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %96 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %98 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %300

99:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i8**, i8*** %10, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load i8**, i8*** %10, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %107
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %124 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %126 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %125, i32 0, i32 3
  %127 = load %struct.pathspec_item*, %struct.pathspec_item** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @ALLOC_ARRAY(%struct.pathspec_item* %127, i32 %129)
  %131 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %132 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %131, i32 0, i32 3
  %133 = load %struct.pathspec_item*, %struct.pathspec_item** %132, align 8
  store %struct.pathspec_item* %133, %struct.pathspec_item** %11, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %121
  %137 = load i8*, i8** %9, align 8
  %138 = call i8* @strlen(i8* %137)
  br label %140

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139, %136
  %141 = phi i8* [ %138, %136 ], [ null, %139 ]
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %143

143:                                              ; preds = %249, %140
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %252

147:                                              ; preds = %143
  %148 = load i8**, i8*** %10, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %12, align 8
  %153 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %153, i64 %155
  %157 = load i32, i32* %8, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @init_pathspec_item(%struct.pathspec_item* %156, i32 %157, i8* %158, i32 %159, i8* %160)
  %162 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %162, i64 %164
  %166 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %147
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %171, %147
  %175 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %175, i64 %177
  %179 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %174
  %185 = load i8*, i8** %12, align 8
  %186 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %186, i64 %188
  %190 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = and i32 %191, %192
  %194 = call i32 @unsupported_magic(i8* %185, i32 %193)
  br label %195

195:                                              ; preds = %184, %174
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @PATHSPEC_SYMLINK_LEADING_PATH, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %221

200:                                              ; preds = %195
  %201 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %201, i64 %203
  %205 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %207, i64 %209
  %211 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @has_symlink_leading_path(i8* %206, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %200
  %216 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = load i8*, i8** %12, align 8
  %220 = call i32 (i8*, ...) @die(i8* %218, i8* %219)
  br label %221

221:                                              ; preds = %215, %200, %195
  %222 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %222, i64 %224
  %226 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %228, i64 %230
  %232 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp slt i64 %227, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %221
  %236 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %237 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %236, i32 0, i32 2
  store i32 1, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %221
  %239 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %239, i64 %241
  %243 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %246 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %238
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  br label %143

252:                                              ; preds = %143
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %277

256:                                              ; preds = %252
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %256
  br label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %15, align 4
  br label %264

264:                                              ; preds = %262, %261
  %265 = phi i32 [ 0, %261 ], [ %263, %262 ]
  store i32 %265, i32* %17, align 4
  %266 = load %struct.pathspec_item*, %struct.pathspec_item** %11, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %266, i64 %268
  %270 = load i8*, i8** %9, align 8
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @init_pathspec_item(%struct.pathspec_item* %269, i32 0, i8* %270, i32 %271, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %273 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %274 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %264, %252
  %278 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %279 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %300

284:                                              ; preds = %277
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* @PATHSPEC_KEEP_ORDER, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = call i32 @BUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %284
  %292 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %293 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %292, i32 0, i32 3
  %294 = load %struct.pathspec_item*, %struct.pathspec_item** %293, align 8
  %295 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %296 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @pathspec_item_cmp, align 4
  %299 = call i32 @QSORT(%struct.pathspec_item* %294, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %44, %65, %73, %291, %277
  ret void
}

declare dso_local i32 @memset(%struct.pathspec*, i32, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.pathspec_item* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.pathspec_item*, i32) #1

declare dso_local i32 @init_pathspec_item(%struct.pathspec_item*, i32, i8*, i32, i8*) #1

declare dso_local i32 @unsupported_magic(i8*, i32) #1

declare dso_local i64 @has_symlink_leading_path(i8*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @QSORT(%struct.pathspec_item*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
