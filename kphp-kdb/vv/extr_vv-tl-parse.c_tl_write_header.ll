; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_write_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i32, i64, i32, i64, i64, i64, i64, i64, i64*, i64, i64, i64, i64, i32, i32, i32*, i32, i32 }

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
define dso_local i32 @tl_write_header(%struct.tl_query_header* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_query_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tl_query_header* %0, %struct.tl_query_header** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %15 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RPC_REQ_ERROR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %45, label %19

19:                                               ; preds = %3
  %20 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %21 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RPC_REQ_RESULT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %19
  %26 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %27 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @RPC_INVOKE_REQ, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %34 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RPC_REQ_ERROR_WRAPPED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %40 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @RPC_INVOKE_KPHP_REQ, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %41, %43
  br label %45

45:                                               ; preds = %38, %32, %25, %19, %3
  %46 = phi i1 [ true, %32 ], [ true, %25 ], [ true, %19 ], [ true, %3 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %50 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @RPC_INVOKE_REQ, align 8
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %45
  %56 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %57 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @RPC_INVOKE_KPHP_REQ, align 8
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %443

62:                                               ; preds = %55, %45
  %63 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %64 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @RPC_INVOKE_KPHP_REQ, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 24
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %536

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %76 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %75, i32 0, i32 17
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32* %74, i32 %77, i32 24)
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 24
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 24
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %73, %62
  %84 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %85 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %90 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %442

93:                                               ; preds = %88, %83
  %94 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %95 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %428

98:                                               ; preds = %93
  %99 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %100 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %98
  %106 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %107 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %110 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %117 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %113, %105, %98
  %121 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %122 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %129 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %132 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %139 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %127, %120
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 16
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 -1, i32* %4, align 4
  br label %536

146:                                              ; preds = %142
  %147 = load i32, i32* @RPC_DEST_ACTOR_FLAGS, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %6, align 8
  store i32 %147, i32* %148, align 4
  %150 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %151 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = bitcast i32* %153 to i64*
  store i64 %152, i64* %154, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32* %156, i32** %6, align 8
  %157 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %158 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %6, align 8
  store i32 %159, i32* %160, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %162, 16
  store i32 %163, i32* %7, align 4
  %164 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %165 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @TL_QUERY_HEADER_FLAG_WAIT_BINLOG, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %146
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 8
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 -1, i32* %4, align 4
  br label %536

174:                                              ; preds = %170
  %175 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %176 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = load i32*, i32** %6, align 8
  %179 = bitcast i32* %178 to i64*
  store i64 %177, i64* %179, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32* %181, i32** %6, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %182, 8
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %174, %146
  %185 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %186 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @TL_QUERY_HEADER_FLAG_KPHP_DELAY, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %184
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 -1, i32* %4, align 4
  br label %536

195:                                              ; preds = %191
  %196 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %197 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %196, i32 0, i32 16
  %198 = load i32, i32* %197, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %6, align 8
  store i32 %198, i32* %199, align 4
  %201 = load i32, i32* %7, align 4
  %202 = sub nsw i32 %201, 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %195, %184
  %204 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %205 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %275

210:                                              ; preds = %203
  %211 = load i32, i32* %7, align 4
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 -1, i32* %4, align 4
  br label %536

214:                                              ; preds = %210
  %215 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %216 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %219 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %217, %220
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %6, align 8
  store i32 %222, i32* %223, align 4
  %225 = load i32, i32* %7, align 4
  %226 = sub nsw i32 %225, 4
  store i32 %226, i32* %7, align 4
  %227 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %228 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %271, %214
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %235 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %238, label %274

238:                                              ; preds = %231
  %239 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %240 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %239, i32 0, i32 15
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %247 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %246, i32 0, i32 15
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @strlen(i32 %252)
  %254 = load i32*, i32** %6, align 8
  %255 = bitcast i32* %254 to i8*
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @tl_write_string(i32 %245, i32 %253, i8* %255, i32 %256)
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %238
  %261 = load i32, i32* %10, align 4
  store i32 %261, i32* %4, align 4
  br label %536

262:                                              ; preds = %238
  %263 = load i32, i32* %10, align 4
  %264 = sdiv i32 %263, 4
  %265 = load i32*, i32** %6, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32* %267, i32** %6, align 8
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* %7, align 4
  %270 = sub nsw i32 %269, %268
  store i32 %270, i32* %7, align 4
  br label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %231

274:                                              ; preds = %231
  br label %275

275:                                              ; preds = %274, %203
  %276 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %277 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %332

282:                                              ; preds = %275
  %283 = load i32, i32* %7, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 -1, i32* %4, align 4
  br label %536

286:                                              ; preds = %282
  %287 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %288 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %291 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %289, %292
  %294 = trunc i64 %293 to i32
  %295 = load i32*, i32** %6, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 1
  store i32* %296, i32** %6, align 8
  store i32 %294, i32* %295, align 4
  %297 = load i32, i32* %7, align 4
  %298 = sub nsw i32 %297, 4
  store i32 %298, i32* %7, align 4
  %299 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %300 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %299, i32 0, i32 5
  %301 = load i64, i64* %300, align 8
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %11, align 4
  br label %303

303:                                              ; preds = %328, %286
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %307 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %305, %308
  br i1 %309, label %310, label %331

310:                                              ; preds = %303
  %311 = load i32, i32* %7, align 4
  %312 = icmp slt i32 %311, 8
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 -1, i32* %4, align 4
  br label %536

314:                                              ; preds = %310
  %315 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %316 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %315, i32 0, i32 8
  %317 = load i64*, i64** %316, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %317, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = load i32*, i32** %6, align 8
  %323 = bitcast i32* %322 to i64*
  store i64 %321, i64* %323, align 8
  %324 = load i32*, i32** %6, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  store i32* %325, i32** %6, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sub nsw i32 %326, 8
  store i32 %327, i32* %7, align 4
  br label %328

328:                                              ; preds = %314
  %329 = load i32, i32* %11, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %11, align 4
  br label %303

331:                                              ; preds = %303
  br label %332

332:                                              ; preds = %331, %275
  %333 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %334 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @TL_QUERY_HEADER_FLAG_STRING_FORWARD, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %363

339:                                              ; preds = %332
  %340 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %341 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %340, i32 0, i32 14
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %344 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %343, i32 0, i32 14
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @strlen(i32 %345)
  %347 = load i32*, i32** %6, align 8
  %348 = bitcast i32* %347 to i8*
  %349 = load i32, i32* %7, align 4
  %350 = call i32 @tl_write_string(i32 %342, i32 %346, i8* %348, i32 %349)
  store i32 %350, i32* %12, align 4
  %351 = load i32, i32* %12, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %339
  store i32 -1, i32* %4, align 4
  br label %536

354:                                              ; preds = %339
  %355 = load i32, i32* %12, align 4
  %356 = sdiv i32 %355, 4
  %357 = load i32*, i32** %6, align 8
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  store i32* %359, i32** %6, align 8
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %7, align 4
  %362 = sub nsw i32 %361, %360
  store i32 %362, i32* %7, align 4
  br label %363

363:                                              ; preds = %354, %332
  %364 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %365 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @TL_QUERY_HEADER_FLAG_INT_FORWARD, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %384

370:                                              ; preds = %363
  %371 = load i32, i32* %7, align 4
  %372 = icmp slt i32 %371, 8
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  store i32 -1, i32* %4, align 4
  br label %536

374:                                              ; preds = %370
  %375 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %376 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %375, i32 0, i32 9
  %377 = load i64, i64* %376, align 8
  %378 = load i32*, i32** %6, align 8
  %379 = bitcast i32* %378 to i64*
  store i64 %377, i64* %379, align 8
  %380 = load i32*, i32** %6, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  store i32* %381, i32** %6, align 8
  %382 = load i32, i32* %7, align 4
  %383 = sub nsw i32 %382, 8
  store i32 %383, i32* %7, align 4
  br label %384

384:                                              ; preds = %374, %363
  %385 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %386 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* @TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %405

391:                                              ; preds = %384
  %392 = load i32, i32* %7, align 4
  %393 = icmp slt i32 %392, 8
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  store i32 -1, i32* %4, align 4
  br label %536

395:                                              ; preds = %391
  %396 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %397 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %396, i32 0, i32 10
  %398 = load i64, i64* %397, align 8
  %399 = load i32*, i32** %6, align 8
  %400 = bitcast i32* %399 to i64*
  store i64 %398, i64* %400, align 8
  %401 = load i32*, i32** %6, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 2
  store i32* %402, i32** %6, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sub nsw i32 %403, 8
  store i32 %404, i32* %7, align 4
  br label %405

405:                                              ; preds = %395, %384
  %406 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %407 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %424

412:                                              ; preds = %405
  %413 = load i32, i32* %7, align 4
  %414 = icmp slt i32 %413, 4
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i32 -1, i32* %4, align 4
  br label %536

416:                                              ; preds = %412
  %417 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %418 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %417, i32 0, i32 13
  %419 = load i32, i32* %418, align 8
  %420 = load i32*, i32** %6, align 8
  %421 = getelementptr inbounds i32, i32* %420, i32 1
  store i32* %421, i32** %6, align 8
  store i32 %419, i32* %420, align 4
  %422 = load i32, i32* %7, align 4
  %423 = sub nsw i32 %422, 4
  store i32 %423, i32* %7, align 4
  br label %424

424:                                              ; preds = %416, %405
  %425 = load i32, i32* %8, align 4
  %426 = load i32, i32* %7, align 4
  %427 = sub nsw i32 %425, %426
  store i32 %427, i32* %4, align 4
  br label %536

428:                                              ; preds = %93
  %429 = load i32, i32* %7, align 4
  %430 = icmp slt i32 %429, 12
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i32 -1, i32* %4, align 4
  br label %536

432:                                              ; preds = %428
  %433 = load i32, i32* @RPC_DEST_ACTOR, align 4
  %434 = load i32*, i32** %6, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  store i32 %433, i32* %435, align 4
  %436 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %437 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load i32*, i32** %6, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 1
  %441 = bitcast i32* %440 to i64*
  store i64 %438, i64* %441, align 8
  store i32 12, i32* %4, align 4
  br label %536

442:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %536

443:                                              ; preds = %55
  %444 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %445 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @RPC_REQ_ERROR_WRAPPED, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %449, label %461

449:                                              ; preds = %443
  %450 = load i32, i32* %7, align 4
  %451 = icmp slt i32 %450, 12
  br i1 %451, label %452, label %453

452:                                              ; preds = %449
  store i32 -1, i32* %4, align 4
  br label %536

453:                                              ; preds = %449
  %454 = load i32, i32* @RPC_REQ_ERROR, align 4
  %455 = load i32*, i32** %6, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  store i32 %454, i32* %456, align 4
  %457 = load i64, i64* @TL_OUT_QID, align 8
  %458 = load i32*, i32** %6, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  %460 = bitcast i32* %459 to i64*
  store i64 %457, i64* %460, align 8
  store i32 12, i32* %4, align 4
  br label %536

461:                                              ; preds = %443
  %462 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %463 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @RPC_REQ_RESULT, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %525

467:                                              ; preds = %461
  %468 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %469 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %524

472:                                              ; preds = %467
  %473 = load i32, i32* %7, align 4
  %474 = icmp slt i32 %473, 32
  br i1 %474, label %475, label %476

475:                                              ; preds = %472
  store i32 -1, i32* %4, align 4
  br label %536

476:                                              ; preds = %472
  %477 = load i32, i32* @RPC_REQ_RESULT_FLAGS, align 4
  %478 = load i32*, i32** %6, align 8
  %479 = getelementptr inbounds i32, i32* %478, i32 1
  store i32* %479, i32** %6, align 8
  store i32 %477, i32* %478, align 4
  %480 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %481 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = load i32*, i32** %6, align 8
  %484 = getelementptr inbounds i32, i32* %483, i32 1
  store i32* %484, i32** %6, align 8
  store i32 %482, i32* %483, align 4
  %485 = load i32, i32* %7, align 4
  %486 = sub nsw i32 %485, 8
  store i32 %486, i32* %7, align 4
  %487 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %488 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %503

493:                                              ; preds = %476
  %494 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %495 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %494, i32 0, i32 11
  %496 = load i64, i64* %495, align 8
  %497 = load i32*, i32** %6, align 8
  %498 = bitcast i32* %497 to i64*
  store i64 %496, i64* %498, align 8
  %499 = load i32*, i32** %6, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 2
  store i32* %500, i32** %6, align 8
  %501 = load i32, i32* %7, align 4
  %502 = sub nsw i32 %501, 8
  store i32 %502, i32* %7, align 4
  br label %503

503:                                              ; preds = %493, %476
  %504 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %505 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %520

510:                                              ; preds = %503
  %511 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %512 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %511, i32 0, i32 12
  %513 = load i64, i64* %512, align 8
  %514 = load i32*, i32** %6, align 8
  %515 = bitcast i32* %514 to i64*
  store i64 %513, i64* %515, align 8
  %516 = load i32*, i32** %6, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 2
  store i32* %517, i32** %6, align 8
  %518 = load i32, i32* %7, align 4
  %519 = sub nsw i32 %518, 8
  store i32 %519, i32* %7, align 4
  br label %520

520:                                              ; preds = %510, %503
  %521 = load i32, i32* %8, align 4
  %522 = load i32, i32* %7, align 4
  %523 = sub nsw i32 %521, %522
  store i32 %523, i32* %4, align 4
  br label %536

524:                                              ; preds = %467
  store i32 0, i32* %4, align 4
  br label %536

525:                                              ; preds = %461
  %526 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %527 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @RPC_REQ_ERROR, align 4
  %530 = icmp eq i32 %528, %529
  br i1 %530, label %531, label %532

531:                                              ; preds = %525
  store i32 0, i32* %4, align 4
  br label %536

532:                                              ; preds = %525
  br label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  store i32 0, i32* %4, align 4
  br label %536

536:                                              ; preds = %535, %531, %524, %520, %475, %453, %452, %442, %432, %431, %424, %415, %394, %373, %353, %313, %285, %260, %213, %194, %173, %145, %72
  %537 = load i32, i32* %4, align 4
  ret i32 %537
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @tl_write_string(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
