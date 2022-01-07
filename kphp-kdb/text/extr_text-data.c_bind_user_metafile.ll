; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_bind_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_bind_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i32, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i8*, i64, i32 }

@UserHdr = common dso_local global %struct.TYPE_11__* null, align 8
@sublists_num = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"bind_user_metafile(%p) : user_id=%d mf=%p\0A\00", align 1
@idx_Sublists_packed = common dso_local global %struct.TYPE_15__* null, align 8
@NIL_N = common dso_local global i64 0, align 8
@MAX_PEER_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bind_user_metafile(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 7
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %3, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ false, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @sublists_num, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* @verbosity, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %22
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %44, i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %42, %22
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %197, %50
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @sublists_num, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %200

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i32, i32* @sublists_num, align 4
  %77 = mul nsw i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = bitcast i8* %80 to i32*
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = mul nsw i32 2, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 2, %91
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 2, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %96, %102
  store i32 %103, i32* %8, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %4, align 4
  %106 = mul nsw i32 2, %105
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** @idx_Sublists_packed, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %110, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %124, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32*, i32** %7, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  store i32* %148, i32** %155, align 8
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %69
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 6
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp sle i32 %164, %172
  br label %174

174:                                              ; preds = %158, %69
  %175 = phi i1 [ true, %69 ], [ %173, %158 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  br label %188

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %180
  %189 = phi i32 [ %186, %180 ], [ 0, %187 ]
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  store i32 %189, i32* %196, align 8
  br label %197

197:                                              ; preds = %188
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %65

200:                                              ; preds = %65
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @sublists_num, align 4
  %205 = mul nsw i32 %204, 8
  %206 = add nsw i32 %203, %205
  %207 = add nsw i32 %206, 4
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %4, align 4
  %210 = mul nsw i32 2, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %213, 4
  %215 = add nsw i32 %207, %214
  %216 = sext i32 %215 to i64
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp sle i64 %216, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %200
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp sle i64 %224, %227
  br label %229

229:                                              ; preds = %221, %200
  %230 = phi i1 [ false, %200 ], [ %228, %221 ]
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @NIL_N, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load i8*, i8** %6, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %240, i64 %244
  %246 = bitcast i8* %245 to i32*
  store i32* %246, i32** %9, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 2, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %247, i64 %252
  store i32* %253, i32** %10, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = load i32*, i32** %9, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* @MAX_PEER_ID, align 4
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = call i32* @rebuild_topmsg_tree(i32 %256, i32* %257, i32* %258, i32 %259, %struct.TYPE_13__* %260, i8* %261)
  %263 = load i32*, i32** %10, align 8
  %264 = icmp eq i32* %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %229
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @process_delayed_ops(%struct.TYPE_13__* %272, i64 %275)
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 4
  store i64 0, i64* %278, align 8
  br label %279

279:                                              ; preds = %271, %229
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @process_delayed_values(%struct.TYPE_13__* %285, i64 %288)
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 3
  store i64 0, i64* %291, align 8
  br label %292

292:                                              ; preds = %284, %279
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32* @rebuild_topmsg_tree(i32, i32*, i32*, i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @process_delayed_ops(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @process_delayed_values(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
