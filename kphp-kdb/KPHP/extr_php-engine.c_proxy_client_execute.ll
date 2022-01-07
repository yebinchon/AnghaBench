; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_proxy_client_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_proxy_client_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i8*, i8*, i8*, i8*, %struct.conn_query*, i32, i32, i8* }
%struct.conn_query = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sqlc_data = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@proxy_client_execute.buffer = internal global [8 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [72 x i8] c"proxy_db_client: op=%d, packet_len=%d, response_state=%d, field_num=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"response received for empty query list? op=%d\0A\00", align 1
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@precise_now = common dso_local global i8* null, align 8
@cr_failed = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"looks like unused code\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"outbound connection %d: nowhere to forward replication stream, closing\0A\00", align 1
@conn_error = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"unexpected packet from server!\0A\00", align 1
@conn_ready = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proxy_client_execute(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sqlc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.connection*, %struct.connection** %4, align 8
  %14 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %13)
  store %struct.sqlc_data* %14, %struct.sqlc_data** %6, align 8
  store i32 -1, i32* %8, align 4
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 6
  %17 = call i32 @nbit_set(i32* %9, i32* %16)
  %18 = call i32 @nbit_read_in(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @proxy_client_execute.buffer, i64 0, i64 0), i32 8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 5
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @proxy_client_execute.buffer, i64 0, i64 4), align 1
  %23 = sext i8 %22 to i32
  %24 = and i32 %23, 255
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %28 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %31 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %33)
  %35 = load %struct.connection*, %struct.connection** %4, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 5
  %37 = load %struct.conn_query*, %struct.conn_query** %36, align 8
  %38 = load %struct.connection*, %struct.connection** %4, align 8
  %39 = bitcast %struct.connection* %38 to %struct.conn_query*
  %40 = icmp eq %struct.conn_query* %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %44, i32* %3, align 4
  br label %268

45:                                               ; preds = %25
  %46 = load i8*, i8** @precise_now, align 8
  %47 = load %struct.connection*, %struct.connection** %4, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.connection*, %struct.connection** %4, align 8
  %50 = call i64 @stop_forwarding_response(%struct.connection* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %268

53:                                               ; preds = %45
  %54 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %55 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.connection*, %struct.connection** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.TYPE_6__* @create_data_reader(%struct.connection* %58, i32 %59)
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %11, align 8
  %61 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %62 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %229 [
    i32 130, label %64
    i32 129, label %156
    i32 128, label %191
    i32 131, label %226
  ]

64:                                               ; preds = %53
  %65 = load %struct.connection*, %struct.connection** %4, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 5
  %67 = load %struct.conn_query*, %struct.conn_query** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = call i32 @sql_query_packet(%struct.conn_query* %67, %struct.TYPE_6__* %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %64
  %75 = load %struct.connection*, %struct.connection** %4, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 6
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @advance_skip_read_ptr(i32* %76, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %83

83:                                               ; preds = %74, %64
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.connection*, %struct.connection** %4, align 8
  %88 = call i32 @fail_connection(%struct.connection* %87, i32 -6)
  %89 = load i8*, i8** @cr_failed, align 8
  %90 = load %struct.connection*, %struct.connection** %4, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  store i32 0, i32* %3, align 4
  br label %268

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %92
  %96 = load %struct.connection*, %struct.connection** %4, align 8
  %97 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %96)
  %98 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %95
  %103 = call i32 @dl_unreachable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.connection*, %struct.connection** %4, align 8
  %105 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %104)
  %106 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 2
  store i32 %108, i32* %106, align 4
  %109 = load %struct.connection*, %struct.connection** %4, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 5
  %111 = load %struct.conn_query*, %struct.conn_query** %110, align 8
  %112 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.connection*, %struct.connection** %4, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 5
  %118 = load %struct.conn_query*, %struct.conn_query** %117, align 8
  %119 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %115, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %102
  %123 = load %struct.connection*, %struct.connection** %4, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i8*, i8** @conn_error, align 8
  %128 = load %struct.connection*, %struct.connection** %4, align 8
  %129 = getelementptr inbounds %struct.connection, %struct.connection* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %122, %102
  br label %155

131:                                              ; preds = %95, %92
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 255
  br i1 %136, label %137, label %140

137:                                              ; preds = %134, %131
  %138 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %139 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %138, i32 0, i32 1
  store i32 131, i32* %139, align 4
  br label %154

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp sge i32 %144, 254
  br i1 %145, label %146, label %150

146:                                              ; preds = %143, %140
  %147 = load i8*, i8** @conn_error, align 8
  %148 = load %struct.connection*, %struct.connection** %4, align 8
  %149 = getelementptr inbounds %struct.connection, %struct.connection* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  br label %153

150:                                              ; preds = %143
  %151 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %152 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %151, i32 0, i32 1
  store i32 129, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %146
  br label %154

154:                                              ; preds = %153, %137
  br label %155

155:                                              ; preds = %154, %130
  br label %229

156:                                              ; preds = %53
  %157 = load %struct.connection*, %struct.connection** %4, align 8
  %158 = getelementptr inbounds %struct.connection, %struct.connection* %157, i32 0, i32 5
  %159 = load %struct.conn_query*, %struct.conn_query** %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %161 = call i32 @sql_query_packet(%struct.conn_query* %159, %struct.TYPE_6__* %160)
  store i32 %161, i32* %12, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %156
  %167 = load %struct.connection*, %struct.connection** %4, align 8
  %168 = getelementptr inbounds %struct.connection, %struct.connection* %167, i32 0, i32 6
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @advance_skip_read_ptr(i32* %168, i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  br label %175

175:                                              ; preds = %166, %156
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load %struct.connection*, %struct.connection** %4, align 8
  %180 = call i32 @fail_connection(%struct.connection* %179, i32 -7)
  %181 = load i8*, i8** @cr_failed, align 8
  %182 = load %struct.connection*, %struct.connection** %4, align 8
  %183 = getelementptr inbounds %struct.connection, %struct.connection* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  store i32 0, i32* %3, align 4
  br label %268

184:                                              ; preds = %175
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %185, 254
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %189 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %188, i32 0, i32 1
  store i32 128, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %184
  br label %229

191:                                              ; preds = %53
  %192 = load %struct.connection*, %struct.connection** %4, align 8
  %193 = getelementptr inbounds %struct.connection, %struct.connection* %192, i32 0, i32 5
  %194 = load %struct.conn_query*, %struct.conn_query** %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %196 = call i32 @sql_query_packet(%struct.conn_query* %194, %struct.TYPE_6__* %195)
  store i32 %196, i32* %12, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %191
  %202 = load %struct.connection*, %struct.connection** %4, align 8
  %203 = getelementptr inbounds %struct.connection, %struct.connection* %202, i32 0, i32 6
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @advance_skip_read_ptr(i32* %203, i32 %204)
  %206 = load i32, i32* %10, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  br label %210

210:                                              ; preds = %201, %191
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load %struct.connection*, %struct.connection** %4, align 8
  %215 = call i32 @fail_connection(%struct.connection* %214, i32 -8)
  %216 = load i8*, i8** @cr_failed, align 8
  %217 = load %struct.connection*, %struct.connection** %4, align 8
  %218 = getelementptr inbounds %struct.connection, %struct.connection* %217, i32 0, i32 4
  store i8* %216, i8** %218, align 8
  store i32 0, i32* %3, align 4
  br label %268

219:                                              ; preds = %210
  %220 = load i32, i32* %8, align 4
  %221 = icmp eq i32 %220, 254
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %224 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %223, i32 0, i32 1
  store i32 131, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %219
  br label %229

226:                                              ; preds = %53
  %227 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %228 = call i32 @assert(i32 0)
  br label %229

229:                                              ; preds = %226, %53, %225, %190, %155
  %230 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %231 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 131
  br i1 %233, label %234, label %267

234:                                              ; preds = %229
  %235 = load %struct.connection*, %struct.connection** %4, align 8
  %236 = getelementptr inbounds %struct.connection, %struct.connection* %235, i32 0, i32 5
  %237 = load %struct.conn_query*, %struct.conn_query** %236, align 8
  %238 = call i32 @sql_query_done(%struct.conn_query* %237)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %234
  %242 = load %struct.connection*, %struct.connection** %4, align 8
  %243 = call i32 @fail_connection(%struct.connection* %242, i32 -9)
  %244 = load i8*, i8** @cr_failed, align 8
  %245 = load %struct.connection*, %struct.connection** %4, align 8
  %246 = getelementptr inbounds %struct.connection, %struct.connection* %245, i32 0, i32 4
  store i8* %244, i8** %246, align 8
  store i32 0, i32* %3, align 4
  br label %268

247:                                              ; preds = %234
  %248 = load %struct.connection*, %struct.connection** %4, align 8
  %249 = getelementptr inbounds %struct.connection, %struct.connection* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = ashr i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = load i8*, i8** @conn_ready, align 8
  %253 = load %struct.connection*, %struct.connection** %4, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 3
  store i8* %252, i8** %254, align 8
  %255 = load i8*, i8** @precise_now, align 8
  %256 = load %struct.connection*, %struct.connection** %4, align 8
  %257 = getelementptr inbounds %struct.connection, %struct.connection* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = ptrtoint i8* %255 to i64
  %260 = ptrtoint i8* %258 to i64
  %261 = sub i64 %259, %260
  %262 = inttoptr i64 %261 to i8*
  %263 = load %struct.connection*, %struct.connection** %4, align 8
  %264 = getelementptr inbounds %struct.connection, %struct.connection* %263, i32 0, i32 2
  store i8* %262, i8** %264, align 8
  %265 = load %struct.connection*, %struct.connection** %4, align 8
  %266 = call i32 @sqlp_becomes_ready(%struct.connection* %265)
  br label %267

267:                                              ; preds = %247, %229
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %241, %213, %178, %86, %52, %41
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.sqlc_data* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_set(i32*, i32*) #1

declare dso_local i32 @nbit_read_in(i32*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @stop_forwarding_response(%struct.connection*) #1

declare dso_local %struct.TYPE_6__* @create_data_reader(%struct.connection*, i32) #1

declare dso_local i32 @sql_query_packet(%struct.conn_query*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local i32 @dl_unreachable(i8*) #1

declare dso_local i32 @sql_query_done(%struct.conn_query*) #1

declare dso_local i32 @sqlp_becomes_ready(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
