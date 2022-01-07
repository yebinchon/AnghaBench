; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_save_bookmarks.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_save_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@index_mode = common dso_local global i64 0, align 8
@ALLOW_OLD_INDEX_MODE = common dso_local global i64 0, align 8
@bookmarks_ptr = common dso_local global i32 0, align 4
@bookmarks = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sorting %d bookmarks...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"building bookmark lists...\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"writing bookmark lists...\0A\00", align 1
@user_iterator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"user #%d: %d, n = %d, max_small = %d, small_cnt = %d\0A\00", align 1
@MAX_SMALL_BOOKMARK = common dso_local global i32 0, align 4
@ANS_BUFF_SIZE = common dso_local global i32 0, align 4
@ANS_BUFF_SIZE_SMALLER = common dso_local global i32 0, align 4
@ans_buff = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"user %d: has %d bookmarks, leaving only %d in index\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"small_users = %d, large_users = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_bookmarks(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %16 = call i32 (...) @clearin()
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load i64, i64* @index_mode, align 8
  %18 = load i64, i64* @ALLOW_OLD_INDEX_MODE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  %21 = load i32, i32* @bookmarks_ptr, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* @bookmarks_ptr, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @bookmarks, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @verbosity, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* @bookmarks_ptr, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i64, i64* @bookmarks, align 8
  %42 = load i32, i32* @bookmarks_ptr, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* @bookmarks_ptr, align 4
  %46 = sub nsw i32 0, %45
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @sort_bookmarks(i64 %44, i32 %47)
  %49 = load i32, i32* @verbosity, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %40
  %55 = call i32 (...) @build_bookmark_lists()
  br label %56

56:                                               ; preds = %54, %20, %1
  %57 = load i32, i32* @verbosity, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @init_user_iterator()
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %113, %90, %62
  %65 = call i64 (...) @advance_user_iterator()
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %114

67:                                               ; preds = %64
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @get_bookmarks_num(i32 %69, i32 -1)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sge i32 %77, 4
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @MAX_SMALL_BOOKMARK, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %67
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %64

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @MAX_SMALL_BOOKMARK, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @writeint(i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @writeint(i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = icmp sge i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %99, %91
  br label %64

114:                                              ; preds = %64
  %115 = call i32 @writeint(i32 0)
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @writeint(i32 %116)
  %118 = call i32 (...) @init_user_iterator()
  br label %119

119:                                              ; preds = %161, %132, %114
  %120 = call i64 (...) @advance_user_iterator()
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %162

122:                                              ; preds = %119
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 4
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @get_bookmarks_num(i32 %124, i32 -1)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp sge i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %119

133:                                              ; preds = %122
  %134 = load i32, i32* %11, align 4
  %135 = icmp sgt i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @MAX_SMALL_BOOKMARK, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %133
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @ANS_BUFF_SIZE, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @ANS_BUFF_SIZE_SMALLER, align 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %145, %141
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @writeint(i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @writeint(i32 %150)
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp sge i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %147, %133
  br label %119

162:                                              ; preds = %119
  %163 = call i32 @writeint(i32 0)
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @writeint(i32 %164)
  store i32 0, i32* %3, align 4
  %166 = call i32 (...) @init_user_iterator()
  br label %167

167:                                              ; preds = %212, %180, %162
  %168 = call i64 (...) @advance_user_iterator()
  %169 = icmp sge i64 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %167
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 4
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @get_bookmarks_num(i32 %172, i32 -1)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp sge i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  br label %167

181:                                              ; preds = %170
  %182 = load i32, i32* %13, align 4
  %183 = icmp sgt i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @MAX_SMALL_BOOKMARK, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %212

189:                                              ; preds = %181
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @ans_buff, align 4
  %193 = load i32, i32* @ANS_BUFF_SIZE, align 4
  %194 = call i32 @get_bookmarks_packed(i32 %191, i32 %192, i32 %193)
  %195 = icmp eq i32 %190, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @ANS_BUFF_SIZE, align 4
  %200 = icmp sle i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %3, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %3, align 4
  %206 = load i32, i32* @ans_buff, align 4
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @writeout(i32 %206, i32 %210)
  br label %212

212:                                              ; preds = %189, %181
  br label %167

213:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  %214 = call i32 (...) @init_user_iterator()
  br label %215

215:                                              ; preds = %271, %228, %213
  %216 = call i64 (...) @advance_user_iterator()
  %217 = icmp sge i64 %216, 0
  br i1 %217, label %218, label %272

218:                                              ; preds = %215
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 4
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @get_bookmarks_num(i32 %220, i32 -1)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = icmp sge i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = load i32, i32* %15, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %215

229:                                              ; preds = %218
  %230 = load i32, i32* %15, align 4
  %231 = icmp sgt i32 %230, 0
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @MAX_SMALL_BOOKMARK, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %271

237:                                              ; preds = %229
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @ANS_BUFF_SIZE, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load i32, i32* @stderr, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* @ANS_BUFF_SIZE_SMALLER, align 4
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %242, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* @ANS_BUFF_SIZE_SMALLER, align 4
  store i32 %247, i32* %15, align 4
  br label %248

248:                                              ; preds = %241, %237
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* @ans_buff, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @get_bookmarks_packed(i32 %250, i32 %251, i32 %252)
  %254 = icmp eq i32 %249, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* @ANS_BUFF_SIZE, align 4
  %259 = icmp sle i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %4, align 4
  %265 = load i32, i32* @ans_buff, align 4
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = mul i64 %267, 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 @writeout(i32 %265, i32 %269)
  br label %271

271:                                              ; preds = %248, %229
  br label %215

272:                                              ; preds = %215
  %273 = call i32 (...) @flushout()
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = mul i64 %276, 4
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = mul i64 %280, 4
  %282 = add i64 %277, %281
  %283 = trunc i64 %282 to i32
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 4
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = load i32, i32* %3, align 4
  %291 = sext i32 %290 to i64
  %292 = mul i64 8, %291
  %293 = add i64 %289, %292
  %294 = trunc i64 %293 to i32
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* %5, align 4
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 3
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @verbosity, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %272
  %306 = load i32, i32* @stderr, align 4
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* %6, align 4
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %306, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %272
  ret void
}

declare dso_local i32 @clearin(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sort_bookmarks(i64, i32) #1

declare dso_local i32 @build_bookmark_lists(...) #1

declare dso_local i32 @init_user_iterator(...) #1

declare dso_local i64 @advance_user_iterator(...) #1

declare dso_local i32 @get_bookmarks_num(i32, i32) #1

declare dso_local i32 @writeint(i32) #1

declare dso_local i32 @get_bookmarks_packed(i32, i32, i32) #1

declare dso_local i32 @writeout(i32, i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
