; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_sqls_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_sqls_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { {}* }
%struct.sqls_data = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.connection*, i8*, i32)*, i32 (%struct.connection*, i32)* }

@sqls_parse_execute.psize = internal global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"sqls_parse_execute(%d), bytes=%d\0A\00", align 1
@C_FAILED = common dso_local global i32 0, align 4
@C_STOPREAD = common dso_local global i32 0, align 4
@conn_reading_query = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"client packet ready: len=%d, padding=%d, seq_num=%d\0A\00", align 1
@sql_auth_sent = common dso_local global i64 0, align 8
@sqls_parse_execute.nonce_buff = internal global [20 x i8] zeroinitializer, align 16
@conn_expect_query = common dso_local global i64 0, align 8
@conn_error = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"authorized ok\0A\00", align 1
@sql_auth_ok = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"authorization error\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"execute, op=%d\0A\00", align 1
@conn_running = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [161 x i8] c"error: in SKIP_ALL_BYTES for connection %d: keep_total=%d != total_bytes=%d, packet_len=%d, packet_padding=%d, packet_state=%d, packet_seq=%d, op=%d, status=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqls_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.sqls_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = call %struct.sqls_data* @SQLS_DATA(%struct.connection* %10)
  store %struct.sqls_data* %11, %struct.sqls_data** %4, align 8
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 4
  %14 = call i32 @nbit_total_ready_bytes(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @verbosity, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  br label %25

25:                                               ; preds = %460, %215, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @C_FAILED, align 4
  %33 = load i32, i32* @C_STOPREAD, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %28, %25
  %39 = phi i1 [ false, %25 ], [ %37, %28 ]
  br i1 %39, label %40, label %469

40:                                               ; preds = %38
  %41 = load i32, i32* @conn_reading_query, align 4
  %42 = load %struct.connection*, %struct.connection** %3, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %45 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 4, %52
  store i32 %53, i32* %2, align 4
  br label %470

54:                                               ; preds = %48
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 4
  %57 = call i32 @nbit_read_in(i32* %56, i32* @sqls_parse_execute.psize, i32 4)
  %58 = icmp eq i32 %57, 4
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 4
  store i32 %62, i32* %5, align 4
  %63 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %64 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @sqls_parse_execute.psize, align 4
  %66 = and i32 %65, 16777215
  %67 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %68 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @sqls_parse_execute.psize, align 4
  %70 = lshr i32 %69, 24
  %71 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %72 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %74 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %76 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %105

79:                                               ; preds = %54
  %80 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %81 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %84 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, 4
  %87 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %88 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = urem i32 %86, %89
  %91 = sub i32 %82, %90
  %92 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %93 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %95 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %98 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %79
  %102 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %103 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %102, i32 0, i32 5
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %79
  br label %105

105:                                              ; preds = %104, %54
  br label %106

106:                                              ; preds = %105, %40
  %107 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %108 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %115 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %118 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %116, %119
  %121 = icmp ult i32 %113, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %106
  %123 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %124 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %127 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %125, %128
  %130 = load i32, i32* %5, align 4
  %131 = sub i32 %129, %130
  store i32 %131, i32* %2, align 4
  br label %470

132:                                              ; preds = %106
  %133 = load i32, i32* @verbosity, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32, i32* @stderr, align 4
  %137 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %138 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %141 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %144 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %135, %132
  %148 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %149 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @sql_auth_sent, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %318

153:                                              ; preds = %147
  %154 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %155 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 16
  br i1 %157, label %158, label %242

158:                                              ; preds = %153
  %159 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %160 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 204
  br i1 %162, label %163, label %242

163:                                              ; preds = %158
  %164 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %165 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, 14
  %168 = icmp eq i32 %167, 6
  br i1 %168, label %169, label %242

169:                                              ; preds = %163
  %170 = load %struct.connection*, %struct.connection** %3, align 8
  %171 = getelementptr inbounds %struct.connection, %struct.connection* %170, i32 0, i32 5
  %172 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %173 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add i32 %174, 4
  %176 = call i32 @read_in(%struct.TYPE_7__* %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sqls_parse_execute.nonce_buff, i64 0, i64 0), i32 %175)
  %177 = icmp eq i32 %176, 20
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load %struct.connection*, %struct.connection** %3, align 8
  %181 = call %struct.TYPE_8__* @SQLS_FUNC(%struct.connection* %180)
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32 (%struct.connection*, i8*, i32)*, i32 (%struct.connection*, i8*, i32)** %182, align 8
  %184 = load %struct.connection*, %struct.connection** %3, align 8
  %185 = call i32 %183(%struct.connection* %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sqls_parse_execute.nonce_buff, i64 0, i64 4), i32 16)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 1
  br i1 %187, label %188, label %189

188:                                              ; preds = %169
  store i32 -1, i32* %6, align 4
  br label %241

189:                                              ; preds = %169
  %190 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %191 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, -16
  %194 = or i32 %193, 10
  %195 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %196 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 8
  %197 = load %struct.connection*, %struct.connection** %3, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 6
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = bitcast {}** %200 to i32 (%struct.connection*)**
  %202 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %201, align 8
  %203 = icmp ne i32 (%struct.connection*)* %202, null
  br i1 %203, label %204, label %215

204:                                              ; preds = %189
  %205 = load %struct.connection*, %struct.connection** %3, align 8
  %206 = getelementptr inbounds %struct.connection, %struct.connection* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load %struct.connection*, %struct.connection** %3, align 8
  %211 = getelementptr inbounds %struct.connection, %struct.connection* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br label %215

215:                                              ; preds = %209, %204, %189
  %216 = phi i1 [ false, %204 ], [ false, %189 ], [ %214, %209 ]
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load %struct.connection*, %struct.connection** %3, align 8
  %220 = getelementptr inbounds %struct.connection, %struct.connection* %219, i32 0, i32 6
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = bitcast {}** %222 to i32 (%struct.connection*)**
  %224 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %223, align 8
  %225 = load %struct.connection*, %struct.connection** %3, align 8
  %226 = call i32 %224(%struct.connection* %225)
  %227 = load %struct.connection*, %struct.connection** %3, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 4
  %229 = load %struct.connection*, %struct.connection** %3, align 8
  %230 = getelementptr inbounds %struct.connection, %struct.connection* %229, i32 0, i32 5
  %231 = call i32 @nbit_set(i32* %228, %struct.TYPE_7__* %230)
  %232 = load %struct.connection*, %struct.connection** %3, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 4
  %234 = call i32 @nbit_total_ready_bytes(i32* %233)
  store i32 %234, i32* %5, align 4
  %235 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %236 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %235, i32 0, i32 0
  store i32 0, i32* %236, align 8
  %237 = load i64, i64* @conn_expect_query, align 8
  %238 = trunc i64 %237 to i32
  %239 = load %struct.connection*, %struct.connection** %3, align 8
  %240 = getelementptr inbounds %struct.connection, %struct.connection* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  br label %25

241:                                              ; preds = %188
  br label %269

242:                                              ; preds = %163, %158, %153
  %243 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %244 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %266

248:                                              ; preds = %242
  %249 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %250 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 8
  %252 = and i32 %251, -7
  store i32 %252, i32* %250, align 8
  %253 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %254 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, 1
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %248
  %259 = load i8*, i8** @conn_error, align 8
  %260 = ptrtoint i8* %259 to i32
  %261 = load %struct.connection*, %struct.connection** %3, align 8
  %262 = getelementptr inbounds %struct.connection, %struct.connection* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  %263 = load %struct.connection*, %struct.connection** %3, align 8
  %264 = getelementptr inbounds %struct.connection, %struct.connection* %263, i32 0, i32 3
  store i32 -1, i32* %264, align 4
  store i32 0, i32* %2, align 4
  br label %470

265:                                              ; preds = %248
  br label %266

266:                                              ; preds = %265, %242
  %267 = load %struct.connection*, %struct.connection** %3, align 8
  %268 = call i32 @sqls_inner_authorise(%struct.connection* %267)
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %266, %241
  %270 = load i32, i32* %6, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %269
  %273 = load i8*, i8** @conn_error, align 8
  %274 = ptrtoint i8* %273 to i32
  %275 = load %struct.connection*, %struct.connection** %3, align 8
  %276 = getelementptr inbounds %struct.connection, %struct.connection* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 8
  %277 = load %struct.connection*, %struct.connection** %3, align 8
  %278 = getelementptr inbounds %struct.connection, %struct.connection* %277, i32 0, i32 3
  store i32 -1, i32* %278, align 4
  store i32 0, i32* %2, align 4
  br label %470

279:                                              ; preds = %269
  %280 = load i32, i32* %6, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = load %struct.connection*, %struct.connection** %3, align 8
  %284 = call i32 @send_ok_packet(%struct.connection* %283, i32 0, i32 0, i32 2, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7, i32 2)
  %285 = load i32, i32* @verbosity, align 4
  %286 = icmp sgt i32 %285, 1
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 (i32, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %290

290:                                              ; preds = %287, %282
  %291 = load i64, i64* @sql_auth_ok, align 8
  %292 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %293 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %292, i32 0, i32 6
  store i64 %291, i64* %293, align 8
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %296 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %295, i32 0, i32 8
  store i32 %294, i32* %296, align 4
  br label %306

297:                                              ; preds = %279
  %298 = load i32, i32* @verbosity, align 4
  %299 = icmp sgt i32 %298, 1
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32, i32* @stderr, align 4
  %302 = call i32 (i32, i8*, ...) @fprintf(i32 %301, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %297
  %304 = load %struct.connection*, %struct.connection** %3, align 8
  %305 = call i32 @send_error_packet(%struct.connection* %304, i32 1045, i32 28000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6, i32 2)
  br label %306

306:                                              ; preds = %303, %290
  %307 = load %struct.connection*, %struct.connection** %3, align 8
  %308 = getelementptr inbounds %struct.connection, %struct.connection* %307, i32 0, i32 5
  %309 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %310 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %313 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = add i32 %311, %314
  %316 = add i32 %315, 4
  %317 = call i32 @advance_skip_read_ptr(%struct.TYPE_7__* %308, i32 %316)
  br label %450

318:                                              ; preds = %147
  %319 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %320 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ugt i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %318
  %324 = load %struct.connection*, %struct.connection** %3, align 8
  %325 = getelementptr inbounds %struct.connection, %struct.connection* %324, i32 0, i32 4
  %326 = call i64 @nbit_get_ptr(i32* %325)
  %327 = inttoptr i64 %326 to i8*
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  br label %331

330:                                              ; preds = %318
  br label %331

331:                                              ; preds = %330, %323
  %332 = phi i32 [ %329, %323 ], [ -1, %330 ]
  store i32 %332, i32* %7, align 4
  %333 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %334 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %333, i32 0, i32 6
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @sql_auth_ok, align 8
  %337 = icmp eq i64 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load i32, i32* @verbosity, align 4
  %341 = icmp sgt i32 %340, 1
  br i1 %341, label %342, label %346

342:                                              ; preds = %331
  %343 = load i32, i32* @stderr, align 4
  %344 = load i32, i32* %7, align 4
  %345 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %342, %331
  %347 = load %struct.connection*, %struct.connection** %3, align 8
  %348 = getelementptr inbounds %struct.connection, %struct.connection* %347, i32 0, i32 5
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  store i32 %350, i32* %8, align 4
  %351 = load i32, i32* @conn_running, align 4
  %352 = load %struct.connection*, %struct.connection** %3, align 8
  %353 = getelementptr inbounds %struct.connection, %struct.connection* %352, i32 0, i32 2
  store i32 %351, i32* %353, align 8
  %354 = load %struct.connection*, %struct.connection** %3, align 8
  %355 = call %struct.TYPE_8__* @SQLS_FUNC(%struct.connection* %354)
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  %357 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %356, align 8
  %358 = load %struct.connection*, %struct.connection** %3, align 8
  %359 = load i32, i32* %7, align 4
  %360 = call i32 %357(%struct.connection* %358, i32 %359)
  store i32 %360, i32* %9, align 4
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %410

364:                                              ; preds = %346
  %365 = load i32, i32* %8, align 4
  %366 = load %struct.connection*, %struct.connection** %3, align 8
  %367 = getelementptr inbounds %struct.connection, %struct.connection* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %365, %369
  br i1 %370, label %371, label %398

371:                                              ; preds = %364
  %372 = load i32, i32* @stderr, align 4
  %373 = load %struct.connection*, %struct.connection** %3, align 8
  %374 = getelementptr inbounds %struct.connection, %struct.connection* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = load %struct.connection*, %struct.connection** %3, align 8
  %378 = getelementptr inbounds %struct.connection, %struct.connection* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %382 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %385 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %388 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %391 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %7, align 4
  %394 = load %struct.connection*, %struct.connection** %3, align 8
  %395 = getelementptr inbounds %struct.connection, %struct.connection* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = call i32 (i32, i8*, ...) @fprintf(i32 %372, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.7, i64 0, i64 0), i32 %375, i32 %376, i32 %380, i32 %383, i32 %386, i32 %389, i32 %392, i32 %393, i32 %396)
  br label %398

398:                                              ; preds = %371, %364
  %399 = load %struct.connection*, %struct.connection** %3, align 8
  %400 = getelementptr inbounds %struct.connection, %struct.connection* %399, i32 0, i32 5
  %401 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %402 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %405 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %403, %406
  %408 = add i32 %407, 4
  %409 = call i32 @advance_skip_read_ptr(%struct.TYPE_7__* %400, i32 %408)
  br label %438

410:                                              ; preds = %346
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.connection*, %struct.connection** %3, align 8
  %413 = getelementptr inbounds %struct.connection, %struct.connection* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %411, %415
  br i1 %416, label %417, label %437

417:                                              ; preds = %410
  %418 = load i32, i32* %8, align 4
  %419 = load %struct.connection*, %struct.connection** %3, align 8
  %420 = getelementptr inbounds %struct.connection, %struct.connection* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %424 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %422, %425
  %427 = add i32 %426, 4
  %428 = icmp eq i32 %418, %427
  %429 = zext i1 %428 to i32
  %430 = call i32 @assert(i32 %429)
  %431 = load %struct.connection*, %struct.connection** %3, align 8
  %432 = getelementptr inbounds %struct.connection, %struct.connection* %431, i32 0, i32 5
  %433 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %434 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @advance_skip_read_ptr(%struct.TYPE_7__* %432, i32 %435)
  br label %437

437:                                              ; preds = %417, %410
  br label %438

438:                                              ; preds = %437, %398
  %439 = load %struct.connection*, %struct.connection** %3, align 8
  %440 = getelementptr inbounds %struct.connection, %struct.connection* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @conn_running, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %449

444:                                              ; preds = %438
  %445 = load i64, i64* @conn_expect_query, align 8
  %446 = trunc i64 %445 to i32
  %447 = load %struct.connection*, %struct.connection** %3, align 8
  %448 = getelementptr inbounds %struct.connection, %struct.connection* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 8
  br label %449

449:                                              ; preds = %444, %438
  br label %450

450:                                              ; preds = %449, %306
  %451 = load %struct.sqls_data*, %struct.sqls_data** %4, align 8
  %452 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %451, i32 0, i32 0
  store i32 0, i32* %452, align 8
  %453 = load %struct.connection*, %struct.connection** %3, align 8
  %454 = getelementptr inbounds %struct.connection, %struct.connection* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = sext i32 %455 to i64
  %457 = load i64, i64* @conn_expect_query, align 8
  %458 = icmp ne i64 %456, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %450
  br label %469

460:                                              ; preds = %450
  %461 = load %struct.connection*, %struct.connection** %3, align 8
  %462 = getelementptr inbounds %struct.connection, %struct.connection* %461, i32 0, i32 4
  %463 = load %struct.connection*, %struct.connection** %3, align 8
  %464 = getelementptr inbounds %struct.connection, %struct.connection* %463, i32 0, i32 5
  %465 = call i32 @nbit_set(i32* %462, %struct.TYPE_7__* %464)
  %466 = load %struct.connection*, %struct.connection** %3, align 8
  %467 = getelementptr inbounds %struct.connection, %struct.connection* %466, i32 0, i32 4
  %468 = call i32 @nbit_total_ready_bytes(i32* %467)
  store i32 %468, i32* %5, align 4
  br label %25

469:                                              ; preds = %459, %38
  store i32 0, i32* %2, align 4
  br label %470

470:                                              ; preds = %469, %272, %258, %122, %51
  %471 = load i32, i32* %2, align 4
  ret i32 %471
}

declare dso_local %struct.sqls_data* @SQLS_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_total_ready_bytes(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local i32 @read_in(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @SQLS_FUNC(%struct.connection*) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @sqls_inner_authorise(%struct.connection*) #1

declare dso_local i32 @send_ok_packet(%struct.connection*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @send_error_packet(%struct.connection*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @advance_skip_read_ptr(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @nbit_get_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
