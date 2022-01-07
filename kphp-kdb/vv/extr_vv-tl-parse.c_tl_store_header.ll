; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_store_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_store_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i64*, i32*, i64, i32 }

@RPC_REQ_ERROR = common dso_local global i32 0, align 4
@RPC_REQ_RESULT = common dso_local global i32 0, align 4
@RPC_INVOKE_REQ = common dso_local global i64 0, align 8
@RPC_REQ_ERROR_WRAPPED = common dso_local global i32 0, align 4
@RPC_INVOKE_KPHP_REQ = common dso_local global i64 0, align 8
@TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS = common dso_local global i32 0, align 4
@RPC_DEST_ACTOR_FLAGS = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_WAIT_BINLOG = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_KPHP_DELAY = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_STRING_FORWARD = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_INT_FORWARD = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT = common dso_local global i32 0, align 4
@RPC_DEST_ACTOR = common dso_local global i32 0, align 4
@TL_OUT_QID = common dso_local global i64 0, align 8
@RPC_REQ_RESULT_FLAGS = common dso_local global i32 0, align 4
@TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS = common dso_local global i32 0, align 4
@TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_store_header(%struct.tl_query_header* %0) #0 {
  %2 = alloca %struct.tl_query_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tl_query_header* %0, %struct.tl_query_header** %2, align 8
  %5 = call i64 @tl_store_check(i32 0)
  %6 = icmp sge i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %10 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RPC_REQ_ERROR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %16 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RPC_REQ_RESULT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %14
  %21 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %22 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @RPC_INVOKE_REQ, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %29 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RPC_REQ_ERROR_WRAPPED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %35 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* @RPC_INVOKE_KPHP_REQ, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp eq i32 %36, %38
  br label %40

40:                                               ; preds = %33, %27, %20, %14, %1
  %41 = phi i1 [ true, %27 ], [ true, %20 ], [ true, %14 ], [ true, %1 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %45 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @RPC_INVOKE_REQ, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %52 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @RPC_INVOKE_KPHP_REQ, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %314

57:                                               ; preds = %50, %40
  %58 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %59 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @RPC_INVOKE_KPHP_REQ, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %66 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @tl_store_raw_data(i32 %67, i32 24)
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %71 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %76 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %313

79:                                               ; preds = %74, %69
  %80 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %81 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %305

84:                                               ; preds = %79
  %85 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %86 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %93 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %96 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %103 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %91, %84
  %107 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %108 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %115 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %118 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %125 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %113, %106
  %129 = load i32, i32* @RPC_DEST_ACTOR_FLAGS, align 4
  %130 = call i32 @tl_store_int(i32 %129)
  %131 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %132 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @tl_store_long(i64 %133)
  %135 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %136 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @tl_store_int(i32 %137)
  %139 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %140 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @TL_QUERY_HEADER_FLAG_WAIT_BINLOG, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %128
  %146 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %147 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %146, i32 0, i32 16
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @tl_store_long(i64 %148)
  br label %150

150:                                              ; preds = %145, %128
  %151 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %152 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @TL_QUERY_HEADER_FLAG_KPHP_DELAY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %159 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @tl_store_int(i32 %160)
  br label %162

162:                                              ; preds = %157, %150
  %163 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %164 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %211

169:                                              ; preds = %162
  %170 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %171 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %174 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %172, %175
  %177 = trunc i64 %176 to i32
  %178 = call i32 @tl_store_int(i32 %177)
  %179 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %180 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %207, %169
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %187 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %185, %188
  br i1 %189, label %190, label %210

190:                                              ; preds = %183
  %191 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %192 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %191, i32 0, i32 15
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %199 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %198, i32 0, i32 15
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @strlen(i32 %204)
  %206 = call i32 @tl_store_string(i32 %197, i32 %205)
  br label %207

207:                                              ; preds = %190
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %183

210:                                              ; preds = %183
  br label %211

211:                                              ; preds = %210, %162
  %212 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %213 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %252

218:                                              ; preds = %211
  %219 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %220 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %223 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %221, %224
  %226 = trunc i64 %225 to i32
  %227 = call i32 @tl_store_int(i32 %226)
  %228 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %229 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %248, %218
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %236 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = icmp slt i64 %234, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %232
  %240 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %241 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %240, i32 0, i32 14
  %242 = load i64*, i64** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @tl_store_long(i64 %246)
  br label %248

248:                                              ; preds = %239
  %249 = load i32, i32* %4, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %4, align 4
  br label %232

251:                                              ; preds = %232
  br label %252

252:                                              ; preds = %251, %211
  %253 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %254 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %252
  %260 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %261 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %260, i32 0, i32 13
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %264 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %263, i32 0, i32 13
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @strlen(i32 %265)
  %267 = call i32 @tl_store_string(i32 %262, i32 %266)
  br label %268

268:                                              ; preds = %259, %252
  %269 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %270 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %268
  %276 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %277 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %276, i32 0, i32 12
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @tl_store_long(i64 %278)
  br label %280

280:                                              ; preds = %275, %268
  %281 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %282 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %280
  %288 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %289 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %288, i32 0, i32 11
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @tl_store_long(i64 %290)
  br label %292

292:                                              ; preds = %287, %280
  %293 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %294 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %292
  %300 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %301 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @tl_store_int(i32 %302)
  br label %304

304:                                              ; preds = %299, %292
  br label %312

305:                                              ; preds = %79
  %306 = load i32, i32* @RPC_DEST_ACTOR, align 4
  %307 = call i32 @tl_store_int(i32 %306)
  %308 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %309 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %308, i32 0, i32 10
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @tl_store_long(i64 %310)
  br label %312

312:                                              ; preds = %305, %304
  br label %313

313:                                              ; preds = %312, %74
  br label %370

314:                                              ; preds = %50
  %315 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %316 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @RPC_REQ_ERROR_WRAPPED, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %314
  %321 = load i32, i32* @RPC_REQ_ERROR, align 4
  %322 = call i32 @tl_store_int(i32 %321)
  %323 = load i64, i64* @TL_OUT_QID, align 8
  %324 = call i32 @tl_store_long(i64 %323)
  br label %369

325:                                              ; preds = %314
  %326 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %327 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @RPC_REQ_RESULT, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %368

331:                                              ; preds = %325
  %332 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %333 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %367

336:                                              ; preds = %331
  %337 = load i32, i32* @RPC_REQ_RESULT_FLAGS, align 4
  %338 = call i32 @tl_store_int(i32 %337)
  %339 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %340 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @tl_store_int(i32 %341)
  %343 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %344 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %336
  %350 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %351 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %350, i32 0, i32 9
  %352 = load i64, i64* %351, align 8
  %353 = call i32 @tl_store_long(i64 %352)
  br label %354

354:                                              ; preds = %349, %336
  %355 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %356 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %354
  %362 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %363 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %362, i32 0, i32 8
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @tl_store_long(i64 %364)
  br label %366

366:                                              ; preds = %361, %354
  br label %367

367:                                              ; preds = %366, %331
  br label %368

368:                                              ; preds = %367, %325
  br label %369

369:                                              ; preds = %368, %320
  br label %370

370:                                              ; preds = %369, %313
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_store_check(i32) #1

declare dso_local i32 @tl_store_raw_data(i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_long(i64) #1

declare dso_local i32 @tl_store_string(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
