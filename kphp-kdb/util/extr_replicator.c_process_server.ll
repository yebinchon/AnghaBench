; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_server_status = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@RS_REPL_STARTED = common dso_local global i32 0, align 4
@MAX_NET_OUT_QUEUE_BYTES = common dso_local global i64 0, align 8
@DIRTY_THRESHOLD_LOW = common dso_local global i64 0, align 8
@DIRTY_THRESHOLD_HIGH = common dso_local global i32 0, align 4
@RS_ZIPPED = common dso_local global i32 0, align 4
@RS_LOGROTATE = common dso_local global i32 0, align 4
@MAX_UPDATE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_server(%struct.repl_server_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repl_server_status*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.repl_server_status* %0, %struct.repl_server_status** %3, align 8
  %9 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %10 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RS_REPL_STARTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %17 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %302

21:                                               ; preds = %15
  %22 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %23 = call i64 @get_buffer_bytes(%struct.repl_server_status* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %302

27:                                               ; preds = %21
  %28 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %29 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %28, i32 0, i32 7
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %35 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %34, i32 0, i32 7
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %33, %39
  %41 = load i64, i64* @MAX_NET_OUT_QUEUE_BYTES, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %302

44:                                               ; preds = %27
  %45 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %46 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %49 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp sge i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @DIRTY_THRESHOLD_LOW, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %302

60:                                               ; preds = %44
  %61 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %62 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %6, align 8
  %66 = load i32, i32* @DIRTY_THRESHOLD_HIGH, align 4
  %67 = load i64, i64* %5, align 8
  %68 = trunc i64 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %71 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RS_ZIPPED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %253, label %76

76:                                               ; preds = %60
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %79 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %78, i32 0, i32 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %77, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %76
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %89 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %88, i32 0, i32 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 36
  %96 = icmp sgt i64 %87, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %86
  %98 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %99 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %98, i32 0, i32 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 36
  %106 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %107 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  store i64 %109, i64* %4, align 8
  br label %252

110:                                              ; preds = %86, %76
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %113 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %112, i32 0, i32 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %111, %118
  br i1 %119, label %120, label %251

120:                                              ; preds = %110
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %4, align 8
  %124 = sub nsw i64 %123, 36
  %125 = icmp sge i64 %122, %124
  br i1 %125, label %126, label %251

126:                                              ; preds = %120
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %129 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %128, i32 0, i32 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %127, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %139 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %138, i32 0, i32 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %146 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %145, i32 0, i32 10
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %144, %149
  br i1 %150, label %151, label %189

151:                                              ; preds = %126
  %152 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %153 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %152, i32 0, i32 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %160 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %159, i32 0, i32 10
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %158, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i64, i64* %4, align 8
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %151
  %170 = load i64, i64* %4, align 8
  %171 = sub nsw i64 %170, 36
  store i64 %171, i64* %4, align 8
  br label %172

172:                                              ; preds = %169, %151
  %173 = load i64, i64* %4, align 8
  %174 = icmp sge i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %178 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %4, align 8
  %181 = add nsw i64 %179, %180
  %182 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %183 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %182, i32 0, i32 4
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* @RS_LOGROTATE, align 4
  %185 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %186 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %250

189:                                              ; preds = %126
  %190 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %191 = call i32 @check_last36_bytes(%struct.repl_server_status* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %249

193:                                              ; preds = %189
  %194 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %195 = call i32 @load_data(%struct.repl_server_status* %194)
  %196 = load i64, i64* %4, align 8
  store i64 %196, i64* %8, align 8
  %197 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %198 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %201 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  store i64 %203, i64* %4, align 8
  %204 = load i64, i64* %4, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %193
  %207 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %208 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %207, i32 0, i32 9
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %4, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %4, align 8
  %213 = icmp sgt i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  br label %216

216:                                              ; preds = %206, %193
  %217 = load i64, i64* %4, align 8
  %218 = load i64, i64* %8, align 8
  %219 = icmp sge i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %223 = call i32 @check_last36_bytes(%struct.repl_server_status* %222)
  %224 = icmp eq i32 %223, 36
  br i1 %224, label %225, label %248

225:                                              ; preds = %216
  %226 = load i64, i64* %4, align 8
  %227 = icmp sge i64 %226, 36
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load i64, i64* %4, align 8
  %231 = sub nsw i64 %230, 36
  store i64 %231, i64* %4, align 8
  %232 = load i64, i64* %4, align 8
  %233 = icmp sge i64 %232, 0
  %234 = zext i1 %233 to i32
  %235 = call i32 @assert(i32 %234)
  %236 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %237 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %4, align 8
  %240 = add nsw i64 %238, %239
  %241 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %242 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %241, i32 0, i32 4
  store i64 %240, i64* %242, align 8
  %243 = load i32, i32* @RS_LOGROTATE, align 4
  %244 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %245 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %225, %216
  br label %249

249:                                              ; preds = %248, %189
  br label %250

250:                                              ; preds = %249, %172
  br label %251

251:                                              ; preds = %250, %120, %110
  br label %252

252:                                              ; preds = %251, %97
  br label %277

253:                                              ; preds = %60
  %254 = load i64, i64* %6, align 8
  %255 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %256 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %255, i32 0, i32 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %254, %261
  br i1 %262, label %263, label %276

263:                                              ; preds = %253
  %264 = load i32, i32* @RS_LOGROTATE, align 4
  %265 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %266 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %270 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %4, align 8
  %273 = add nsw i64 %271, %272
  %274 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %275 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %274, i32 0, i32 4
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %263, %253
  br label %277

277:                                              ; preds = %276, %252
  %278 = load i64, i64* %4, align 8
  %279 = icmp sle i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 0, i32* %2, align 4
  br label %302

281:                                              ; preds = %277
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64, i64* %4, align 8
  %285 = icmp sgt i64 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i64, i64* %4, align 8
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %7, align 4
  br label %289

289:                                              ; preds = %286, %281
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @MAX_UPDATE_SIZE, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, i32* @MAX_UPDATE_SIZE, align 4
  store i32 %294, i32* %7, align 4
  br label %295

295:                                              ; preds = %293, %289
  %296 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %297 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %296, i32 0, i32 7
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @send_update_packet(%struct.TYPE_10__* %298, %struct.repl_server_status* %299, i32 %300)
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %295, %280, %59, %43, %26, %20
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i64 @get_buffer_bytes(%struct.repl_server_status*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_last36_bytes(%struct.repl_server_status*) #1

declare dso_local i32 @load_data(%struct.repl_server_status*) #1

declare dso_local i32 @send_update_packet(%struct.TYPE_10__*, %struct.repl_server_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
