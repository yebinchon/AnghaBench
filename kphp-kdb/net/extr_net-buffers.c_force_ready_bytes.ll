; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_force_ready_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_force_ready_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@NB_MAGIC_HEAD = common dso_local global i64 0, align 8
@NB_MAGIC_BUSYHEAD = common dso_local global i64 0, align 8
@NET_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_ready_bytes(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NB_MAGIC_HEAD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NB_MAGIC_BUSYHEAD, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ true, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %22
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %62, %66
  br label %68

68:                                               ; preds = %59, %50
  %69 = phi i1 [ false, %50 ], [ %67, %59 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %74, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %396

81:                                               ; preds = %41, %22
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 9
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = icmp eq %struct.TYPE_5__* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %396

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @NET_BUFFER_SIZE, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @NET_BUFFER_SIZE, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 9
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %9, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  br label %116

111:                                              ; preds = %99
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  br label %116

116:                                              ; preds = %111, %107
  %117 = phi i64 [ %110, %107 ], [ %115, %111 ]
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %117, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @NET_BUFFER_SIZE, align 4
  %126 = icmp ule i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %5, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %116
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 9
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = icmp eq %struct.TYPE_5__* %137, %138
  br i1 %139, label %140, label %310

140:                                              ; preds = %134, %116
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %396

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  %154 = icmp sle i32 %146, %153
  br i1 %154, label %155, label %191

155:                                              ; preds = %145
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @memcpy(i32 %163, i32 %166, i32 %167)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  store i32 %171, i32* %175, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %155
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %180, %155
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %3, align 4
  br label %396

191:                                              ; preds = %145
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 %193, %194
  %196 = icmp sgt i32 %192, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %197, %191
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %204, %207
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %240

212:                                              ; preds = %201
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @memmove(i32 %215, i32 %218, i32 %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %228, %229
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %235, %238
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %212, %201
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %244, %240
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @memcpy(i32 %249, i32 %252, i32 %253)
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %246
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 3
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %269, %246
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %279, %282
  br i1 %283, label %284, label %306

284:                                              ; preds = %276
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 9
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  store %struct.TYPE_5__* %287, %struct.TYPE_5__** %10, align 8
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = icmp sgt i64 %290, 0
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 9
  store %struct.TYPE_5__* %294, %struct.TYPE_5__** %296, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 8
  store %struct.TYPE_5__* %297, %struct.TYPE_5__** %299, align 8
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %301 = call i32 @free_buffer(%struct.TYPE_5__* %300)
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, -1
  store i64 %305, i64* %303, align 8
  br label %306

306:                                              ; preds = %284, %276
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %7, align 4
  %309 = add nsw i32 %307, %308
  store i32 %309, i32* %3, align 4
  br label %396

310:                                              ; preds = %134
  %311 = load i32, i32* %6, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %310
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @memmove(i32 %316, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %313, %310
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 2
  store i32 %325, i32* %329, align 4
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %322
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 3
  store i64 %338, i64* %340, align 8
  br label %341

341:                                              ; preds = %334, %322
  %342 = load i32, i32* %5, align 4
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = sub nsw i32 %345, %348
  %350 = icmp sgt i32 %342, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %341
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %354, %357
  store i32 %358, i32* %5, align 4
  br label %359

359:                                              ; preds = %351, %341
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %6, align 4
  %365 = add nsw i32 %363, %364
  %366 = load i32, i32* %5, align 4
  %367 = load i32, i32* %6, align 4
  %368 = sub nsw i32 %366, %367
  %369 = call i32 @read_in(%struct.TYPE_5__* %360, i32 %365, i32 %368)
  store i32 %369, i32* %8, align 4
  %370 = load i32, i32* %6, align 4
  %371 = load i32, i32* %8, align 4
  %372 = add nsw i32 %370, %371
  store i32 %372, i32* %7, align 4
  %373 = load i32, i32* %8, align 4
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 8
  %377 = add nsw i32 %376, %373
  store i32 %377, i32* %375, align 8
  %378 = load i32, i32* %7, align 4
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, %378
  store i32 %382, i32* %380, align 8
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %359
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 3
  store i64 %391, i64* %393, align 8
  br label %394

394:                                              ; preds = %387, %359
  %395 = load i32, i32* %7, align 4
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %394, %306, %187, %143, %91, %68
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @free_buffer(%struct.TYPE_5__*) #1

declare dso_local i32 @read_in(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
