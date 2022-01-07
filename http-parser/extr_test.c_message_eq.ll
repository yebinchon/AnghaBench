; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_message_eq.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_message_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i32**, i32, i64, i64 }
%struct.http_parser_url = type { i32, i32 }

@messages = common dso_local global %struct.message* null, align 8
@http_major = common dso_local global i32 0, align 4
@http_minor = common dso_local global i32 0, align 4
@HTTP_REQUEST = common dso_local global i64 0, align 8
@method = common dso_local global i32 0, align 4
@status_code = common dso_local global i32 0, align 4
@response_status = common dso_local global i32 0, align 4
@should_keep_alive = common dso_local global i32 0, align 4
@message_complete_on_eof = common dso_local global i32 0, align 4
@request_url = common dso_local global i32 0, align 4
@HTTP_CONNECT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0A\0A*** failed to parse URL %s ***\0A\0A\00", align 1
@host = common dso_local global i32 0, align 4
@UF_HOST = common dso_local global i32 0, align 4
@userinfo = common dso_local global i32 0, align 4
@UF_USERINFO = common dso_local global i32 0, align 4
@UF_PORT = common dso_local global i32 0, align 4
@query_string = common dso_local global i32 0, align 4
@UF_QUERY = common dso_local global i32 0, align 4
@fragment = common dso_local global i32 0, align 4
@UF_FRAGMENT = common dso_local global i32 0, align 4
@request_path = common dso_local global i32 0, align 4
@UF_PATH = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"body_size\00", align 1
@body_size = common dso_local global i32 0, align 4
@body = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"num_chunks_complete\00", align 1
@num_chunks_complete = common dso_local global i32 0, align 4
@MAX_CHUNKS = common dso_local global i32 0, align 4
@chunk_lengths = common dso_local global i32* null, align 8
@num_headers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"header field\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"header value\00", align 1
@upgrade = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @message_eq(i32 %0, i32 %1, %struct.message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.message*, align 8
  %10 = alloca %struct.http_parser_url, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.message* %2, %struct.message** %7, align 8
  %12 = load %struct.message*, %struct.message** @messages, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.message, %struct.message* %12, i64 %14
  store %struct.message* %15, %struct.message** %9, align 8
  %16 = load %struct.message*, %struct.message** %7, align 8
  %17 = load %struct.message*, %struct.message** %9, align 8
  %18 = load i32, i32* @http_major, align 4
  %19 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %16, %struct.message* %17, i32 %18)
  %20 = load %struct.message*, %struct.message** %7, align 8
  %21 = load %struct.message*, %struct.message** %9, align 8
  %22 = load i32, i32* @http_minor, align 4
  %23 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %20, %struct.message* %21, i32 %22)
  %24 = load %struct.message*, %struct.message** %7, align 8
  %25 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HTTP_REQUEST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.message*, %struct.message** %7, align 8
  %31 = load %struct.message*, %struct.message** %9, align 8
  %32 = load i32, i32* @method, align 4
  %33 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %30, %struct.message* %31, i32 %32)
  br label %47

34:                                               ; preds = %3
  %35 = load %struct.message*, %struct.message** %7, align 8
  %36 = load %struct.message*, %struct.message** %9, align 8
  %37 = load i32, i32* @status_code, align 4
  %38 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %35, %struct.message* %36, i32 %37)
  %39 = load %struct.message*, %struct.message** %7, align 8
  %40 = load %struct.message*, %struct.message** %9, align 8
  %41 = load i32, i32* @response_status, align 4
  %42 = call i32 @MESSAGE_CHECK_STR_EQ(%struct.message* %39, %struct.message* %40, i32 %41)
  %43 = load %struct.message*, %struct.message** %9, align 8
  %44 = getelementptr inbounds %struct.message, %struct.message* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %34, %29
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %struct.message*, %struct.message** %7, align 8
  %52 = load %struct.message*, %struct.message** %9, align 8
  %53 = load i32, i32* @should_keep_alive, align 4
  %54 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %51, %struct.message* %52, i32 %53)
  %55 = load %struct.message*, %struct.message** %7, align 8
  %56 = load %struct.message*, %struct.message** %9, align 8
  %57 = load i32, i32* @message_complete_on_eof, align 4
  %58 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %55, %struct.message* %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.message*, %struct.message** %9, align 8
  %61 = getelementptr inbounds %struct.message, %struct.message* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.message*, %struct.message** %9, align 8
  %65 = getelementptr inbounds %struct.message, %struct.message* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.message*, %struct.message** %9, align 8
  %69 = getelementptr inbounds %struct.message, %struct.message* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.message*, %struct.message** %7, align 8
  %73 = load %struct.message*, %struct.message** %9, align 8
  %74 = load i32, i32* @request_url, align 4
  %75 = call i32 @MESSAGE_CHECK_STR_EQ(%struct.message* %72, %struct.message* %73, i32 %74)
  %76 = load %struct.message*, %struct.message** %9, align 8
  %77 = getelementptr inbounds %struct.message, %struct.message* %76, i32 0, i32 5
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %161

82:                                               ; preds = %59
  %83 = load %struct.message*, %struct.message** %9, align 8
  %84 = getelementptr inbounds %struct.message, %struct.message* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HTTP_CONNECT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %161

88:                                               ; preds = %82
  %89 = load %struct.message*, %struct.message** %9, align 8
  %90 = getelementptr inbounds %struct.message, %struct.message* %89, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.message*, %struct.message** %9, align 8
  %93 = getelementptr inbounds %struct.message, %struct.message* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = call i64 @http_parser_parse_url(i8* %91, i32 %95, i32 0, %struct.http_parser_url* %10)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load i32, i32* @stderr, align 4
  %100 = load %struct.message*, %struct.message** %9, align 8
  %101 = getelementptr inbounds %struct.message, %struct.message* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %102)
  %104 = call i32 (...) @abort() #3
  unreachable

105:                                              ; preds = %88
  %106 = load %struct.message*, %struct.message** %7, align 8
  %107 = getelementptr inbounds %struct.message, %struct.message* %106, i32 0, i32 14
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.message*, %struct.message** %7, align 8
  %112 = load %struct.message*, %struct.message** %9, align 8
  %113 = load i32, i32* @host, align 4
  %114 = load i32, i32* @UF_HOST, align 4
  %115 = call i32 @MESSAGE_CHECK_URL_EQ(%struct.http_parser_url* %10, %struct.message* %111, %struct.message* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %105
  %117 = load %struct.message*, %struct.message** %7, align 8
  %118 = getelementptr inbounds %struct.message, %struct.message* %117, i32 0, i32 13
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.message*, %struct.message** %7, align 8
  %123 = load %struct.message*, %struct.message** %9, align 8
  %124 = load i32, i32* @userinfo, align 4
  %125 = load i32, i32* @UF_USERINFO, align 4
  %126 = call i32 @MESSAGE_CHECK_URL_EQ(%struct.http_parser_url* %10, %struct.message* %122, %struct.message* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %10, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @UF_PORT, align 4
  %131 = shl i32 1, %130
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %10, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  br label %138

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i32 [ %136, %134 ], [ 0, %137 ]
  %140 = load %struct.message*, %struct.message** %9, align 8
  %141 = getelementptr inbounds %struct.message, %struct.message* %140, i32 0, i32 12
  store i32 %139, i32* %141, align 8
  %142 = load %struct.message*, %struct.message** %7, align 8
  %143 = load %struct.message*, %struct.message** %9, align 8
  %144 = load i32, i32* @query_string, align 4
  %145 = load i32, i32* @UF_QUERY, align 4
  %146 = call i32 @MESSAGE_CHECK_URL_EQ(%struct.http_parser_url* %10, %struct.message* %142, %struct.message* %143, i32 %144, i32 %145)
  %147 = load %struct.message*, %struct.message** %7, align 8
  %148 = load %struct.message*, %struct.message** %9, align 8
  %149 = load i32, i32* @fragment, align 4
  %150 = load i32, i32* @UF_FRAGMENT, align 4
  %151 = call i32 @MESSAGE_CHECK_URL_EQ(%struct.http_parser_url* %10, %struct.message* %147, %struct.message* %148, i32 %149, i32 %150)
  %152 = load %struct.message*, %struct.message** %7, align 8
  %153 = load %struct.message*, %struct.message** %9, align 8
  %154 = load i32, i32* @request_path, align 4
  %155 = load i32, i32* @UF_PATH, align 4
  %156 = call i32 @MESSAGE_CHECK_URL_EQ(%struct.http_parser_url* %10, %struct.message* %152, %struct.message* %153, i32 %154, i32 %155)
  %157 = load %struct.message*, %struct.message** %7, align 8
  %158 = load %struct.message*, %struct.message** %9, align 8
  %159 = load i32, i32* @port, align 4
  %160 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %157, %struct.message* %158, i32 %159)
  br label %161

161:                                              ; preds = %138, %82, %59
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.message*, %struct.message** %9, align 8
  %166 = load %struct.message*, %struct.message** %9, align 8
  %167 = getelementptr inbounds %struct.message, %struct.message* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @check_num_eq(%struct.message* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %168)
  br label %186

170:                                              ; preds = %161
  %171 = load %struct.message*, %struct.message** %7, align 8
  %172 = getelementptr inbounds %struct.message, %struct.message* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.message*, %struct.message** %7, align 8
  %177 = load %struct.message*, %struct.message** %9, align 8
  %178 = load i32, i32* @body_size, align 4
  %179 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %176, %struct.message* %177, i32 %178)
  br label %185

180:                                              ; preds = %170
  %181 = load %struct.message*, %struct.message** %7, align 8
  %182 = load %struct.message*, %struct.message** %9, align 8
  %183 = load i32, i32* @body, align 4
  %184 = call i32 @MESSAGE_CHECK_STR_EQ(%struct.message* %181, %struct.message* %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %175
  br label %186

186:                                              ; preds = %185, %164
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.message*, %struct.message** %9, align 8
  %191 = load %struct.message*, %struct.message** %9, align 8
  %192 = getelementptr inbounds %struct.message, %struct.message* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @check_num_eq(%struct.message* %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %193)
  br label %234

195:                                              ; preds = %186
  %196 = load %struct.message*, %struct.message** %9, align 8
  %197 = getelementptr inbounds %struct.message, %struct.message* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.message*, %struct.message** %9, align 8
  %200 = getelementptr inbounds %struct.message, %struct.message* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %198, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.message*, %struct.message** %7, align 8
  %206 = load %struct.message*, %struct.message** %9, align 8
  %207 = load i32, i32* @num_chunks_complete, align 4
  %208 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %205, %struct.message* %206, i32 %207)
  store i32 0, i32* %8, align 4
  br label %209

209:                                              ; preds = %230, %195
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.message*, %struct.message** %9, align 8
  %212 = getelementptr inbounds %struct.message, %struct.message* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @MAX_CHUNKS, align 4
  %218 = icmp slt i32 %216, %217
  br label %219

219:                                              ; preds = %215, %209
  %220 = phi i1 [ false, %209 ], [ %218, %215 ]
  br i1 %220, label %221, label %233

221:                                              ; preds = %219
  %222 = load %struct.message*, %struct.message** %7, align 8
  %223 = load %struct.message*, %struct.message** %9, align 8
  %224 = load i32*, i32** @chunk_lengths, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %222, %struct.message* %223, i32 %228)
  br label %230

230:                                              ; preds = %221
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %209

233:                                              ; preds = %219
  br label %234

234:                                              ; preds = %233, %189
  %235 = load %struct.message*, %struct.message** %7, align 8
  %236 = load %struct.message*, %struct.message** %9, align 8
  %237 = load i32, i32* @num_headers, align 4
  %238 = call i32 @MESSAGE_CHECK_NUM_EQ(%struct.message* %235, %struct.message* %236, i32 %237)
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %294, %234
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.message*, %struct.message** %9, align 8
  %242 = getelementptr inbounds %struct.message, %struct.message* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %297

245:                                              ; preds = %239
  %246 = load %struct.message*, %struct.message** %7, align 8
  %247 = load %struct.message*, %struct.message** %7, align 8
  %248 = getelementptr inbounds %struct.message, %struct.message* %247, i32 0, i32 11
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.message*, %struct.message** %9, align 8
  %257 = getelementptr inbounds %struct.message, %struct.message* %256, i32 0, i32 11
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @check_str_eq(%struct.message* %246, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %255, i32 %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %306

269:                                              ; preds = %245
  %270 = load %struct.message*, %struct.message** %7, align 8
  %271 = load %struct.message*, %struct.message** %7, align 8
  %272 = getelementptr inbounds %struct.message, %struct.message* %271, i32 0, i32 11
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.message*, %struct.message** %9, align 8
  %281 = getelementptr inbounds %struct.message, %struct.message* %280, i32 0, i32 11
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @check_str_eq(%struct.message* %270, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %279, i32 %288)
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %269
  store i32 0, i32* %4, align 4
  br label %306

293:                                              ; preds = %269
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %8, align 4
  br label %239

297:                                              ; preds = %239
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  %301 = load %struct.message*, %struct.message** %7, align 8
  %302 = load %struct.message*, %struct.message** %9, align 8
  %303 = load i32, i32* @upgrade, align 4
  %304 = call i32 @MESSAGE_CHECK_STR_EQ(%struct.message* %301, %struct.message* %302, i32 %303)
  br label %305

305:                                              ; preds = %300, %297
  store i32 1, i32* %4, align 4
  br label %306

306:                                              ; preds = %305, %292, %268
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @MESSAGE_CHECK_NUM_EQ(%struct.message*, %struct.message*, i32) #1

declare dso_local i32 @MESSAGE_CHECK_STR_EQ(%struct.message*, %struct.message*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @http_parser_parse_url(i8*, i32, i32, %struct.http_parser_url*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @MESSAGE_CHECK_URL_EQ(%struct.http_parser_url*, %struct.message*, %struct.message*, i32, i32) #1

declare dso_local i32 @check_num_eq(%struct.message*, i8*, i32, i32) #1

declare dso_local i32 @check_str_eq(%struct.message*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
