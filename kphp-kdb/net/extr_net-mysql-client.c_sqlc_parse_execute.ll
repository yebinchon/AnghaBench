; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-client.c_sqlc_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-client.c_sqlc_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sqlc_data = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.connection*, i32)*, i32 (%struct.connection*)*, i64 (%struct.connection*)* }

@sqlc_parse_execute.psize = internal global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"sqlc_parse_execute(%d), status=%d, bytes=%d, packet_state=%d, packet_len=%d\0A\00", align 1
@C_FAILED = common dso_local global i32 0, align 4
@C_STOPREAD = common dso_local global i32 0, align 4
@conn_reading_answer = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"client packet ready: len=%d, seq_num=%d\0A\00", align 1
@sql_noauth = common dso_local global i64 0, align 8
@conn_error = common dso_local global i8* null, align 8
@sql_auth_sent = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"ok packet expected in response to authentification from connection %d (%s:%d)\0A\00", align 1
@sql_auth_ok = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"sql authorisation failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"outcoming authorization successful\0A\00", align 1
@sql_auth_initdb = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"ok packet expected in response to initdb\0A\00", align 1
@conn_ready = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"outcoming initdb successful\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"execute, op=%d\0A\00", align 1
@conn_running = common dso_local global i64 0, align 8
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [161 x i8] c"error: in SKIP_ALL_BYTES for connection %d: keep_total=%d != total_bytes=%d, packet_len=%d, packet_padding=%d, packet_state=%d, packet_seq=%d, op=%d, status=%d\0A\00", align 1
@conn_wait_answer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlc_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.sqlc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %11)
  store %struct.sqlc_data* %12, %struct.sqlc_data** %4, align 8
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 5
  %15 = call i32 @nbit_total_ready_bytes(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %28 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %31 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %18, %1
  br label %35

35:                                               ; preds = %500, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @C_FAILED, align 4
  %43 = load i32, i32* @C_STOPREAD, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %38, %35
  %49 = phi i1 [ false, %35 ], [ %47, %38 ]
  br i1 %49, label %50, label %501

50:                                               ; preds = %48
  %51 = load i32, i32* @conn_reading_answer, align 4
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %55 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %114

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 4, %62
  store i32 %63, i32* %2, align 4
  br label %502

64:                                               ; preds = %58
  %65 = load %struct.connection*, %struct.connection** %3, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 5
  %67 = call i32 @nbit_read_in(i32* %66, i32* @sqlc_parse_execute.psize, i32 4)
  %68 = icmp eq i32 %67, 4
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 4
  store i32 %72, i32* %5, align 4
  %73 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %74 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @sqlc_parse_execute.psize, align 4
  %76 = and i32 %75, 16777215
  %77 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %78 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @sqlc_parse_execute.psize, align 4
  %80 = lshr i32 %79, 24
  %81 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %82 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %84 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %113

87:                                               ; preds = %64
  %88 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %89 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %92 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 4
  %95 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %96 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = srem i32 %94, %97
  %99 = sub nsw i32 %90, %98
  %100 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %101 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %103 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %106 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %87
  %110 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %111 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %110, i32 0, i32 4
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %87
  br label %113

113:                                              ; preds = %112, %64
  br label %114

114:                                              ; preds = %113, %50
  %115 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %116 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %123 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %126 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %124, %127
  %129 = icmp slt i32 %121, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %114
  %131 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %132 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %135 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %133, %136
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %2, align 4
  br label %502

140:                                              ; preds = %114
  %141 = load i32, i32* @precise_now, align 4
  %142 = load %struct.connection*, %struct.connection** %3, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @verbosity, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load i32, i32* @stderr, align 4
  %148 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %149 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %152 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %146, %140
  %156 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %157 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @sql_noauth, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %206

161:                                              ; preds = %155
  %162 = load %struct.connection*, %struct.connection** %3, align 8
  %163 = call i32 @sqlc_inner_authorise(%struct.connection* %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i8*, i8** @conn_error, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.connection*, %struct.connection** %3, align 8
  %170 = getelementptr inbounds %struct.connection, %struct.connection* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.connection*, %struct.connection** %3, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 3
  store i32 -1, i32* %172, align 4
  store i32 0, i32* %2, align 4
  br label %502

173:                                              ; preds = %161
  %174 = load i64, i64* @sql_auth_sent, align 8
  %175 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %176 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %175, i32 0, i32 5
  store i64 %174, i64* %176, align 8
  %177 = load %struct.connection*, %struct.connection** %3, align 8
  %178 = getelementptr inbounds %struct.connection, %struct.connection* %177, i32 0, i32 6
  %179 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %180 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %183 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %181, %184
  %186 = add nsw i32 %185, 4
  %187 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %178, i32 %186)
  %188 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %189 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, 10
  %192 = icmp eq i32 %191, 10
  br i1 %192, label %193, label %197

193:                                              ; preds = %173
  %194 = load %struct.connection*, %struct.connection** %3, align 8
  %195 = getelementptr inbounds %struct.connection, %struct.connection* %194, i32 0, i32 6
  %196 = call i32 @mark_all_unprocessed(%struct.TYPE_6__* %195)
  br label %197

197:                                              ; preds = %193, %173
  %198 = load %struct.connection*, %struct.connection** %3, align 8
  %199 = getelementptr inbounds %struct.connection, %struct.connection* %198, i32 0, i32 5
  %200 = load %struct.connection*, %struct.connection** %3, align 8
  %201 = getelementptr inbounds %struct.connection, %struct.connection* %200, i32 0, i32 6
  %202 = call i32 @nbit_set(i32* %199, %struct.TYPE_6__* %201)
  %203 = load %struct.connection*, %struct.connection** %3, align 8
  %204 = getelementptr inbounds %struct.connection, %struct.connection* %203, i32 0, i32 5
  %205 = call i32 @nbit_ready_bytes(i32* %204)
  store i32 %205, i32* %5, align 4
  br label %478

206:                                              ; preds = %155
  %207 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %208 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @sql_auth_sent, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %288

212:                                              ; preds = %206
  %213 = load %struct.connection*, %struct.connection** %3, align 8
  %214 = getelementptr inbounds %struct.connection, %struct.connection* %213, i32 0, i32 6
  %215 = call i64 @get_read_ptr(%struct.TYPE_6__* %214)
  %216 = inttoptr i64 %215 to i8*
  %217 = getelementptr inbounds i8, i8* %216, i64 4
  store i8* %217, i8** %6, align 8
  %218 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %219 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %212
  %223 = load i8*, i8** %6, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %222, %212
  %228 = load i8*, i8** @conn_error, align 8
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.connection*, %struct.connection** %3, align 8
  %231 = getelementptr inbounds %struct.connection, %struct.connection* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.connection*, %struct.connection** %3, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 3
  store i32 -1, i32* %233, align 4
  %234 = load i32, i32* @stderr, align 4
  %235 = load %struct.connection*, %struct.connection** %3, align 8
  %236 = getelementptr inbounds %struct.connection, %struct.connection* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.connection*, %struct.connection** %3, align 8
  %239 = getelementptr inbounds %struct.connection, %struct.connection* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = call i8* @show_ip(i32 %240)
  %242 = load %struct.connection*, %struct.connection** %3, align 8
  %243 = getelementptr inbounds %struct.connection, %struct.connection* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %234, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %237, i8* %241, i32 %244)
  store i32 0, i32* %2, align 4
  br label %502

246:                                              ; preds = %222
  %247 = load i64, i64* @sql_auth_ok, align 8
  %248 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %249 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %248, i32 0, i32 5
  store i64 %247, i64* %249, align 8
  %250 = load %struct.connection*, %struct.connection** %3, align 8
  %251 = getelementptr inbounds %struct.connection, %struct.connection* %250, i32 0, i32 6
  %252 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %253 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %256 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %254, %257
  %259 = add nsw i32 %258, 4
  %260 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %251, i32 %259)
  %261 = load %struct.connection*, %struct.connection** %3, align 8
  %262 = call %struct.TYPE_7__* @SQLC_FUNC(%struct.connection* %261)
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 2
  %264 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %263, align 8
  %265 = load %struct.connection*, %struct.connection** %3, align 8
  %266 = call i64 %264(%struct.connection* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %246
  %269 = load i8*, i8** @conn_error, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.connection*, %struct.connection** %3, align 8
  %272 = getelementptr inbounds %struct.connection, %struct.connection* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.connection*, %struct.connection** %3, align 8
  %274 = getelementptr inbounds %struct.connection, %struct.connection* %273, i32 0, i32 3
  store i32 -1, i32* %274, align 4
  %275 = load i32, i32* @verbosity, align 4
  %276 = icmp sgt i32 %275, 1
  br i1 %276, label %277, label %280

277:                                              ; preds = %268
  %278 = load i32, i32* @stderr, align 4
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %268
  store i32 0, i32* %2, align 4
  br label %502

281:                                              ; preds = %246
  %282 = load i32, i32* @verbosity, align 4
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i32, i32* @stderr, align 4
  %286 = call i32 (i32, i8*, ...) @fprintf(i32 %285, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284, %281
  br label %477

288:                                              ; preds = %206
  %289 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %290 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @sql_auth_initdb, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %354

294:                                              ; preds = %288
  %295 = load %struct.connection*, %struct.connection** %3, align 8
  %296 = getelementptr inbounds %struct.connection, %struct.connection* %295, i32 0, i32 6
  %297 = call i64 @get_read_ptr(%struct.TYPE_6__* %296)
  %298 = inttoptr i64 %297 to i8*
  %299 = getelementptr inbounds i8, i8* %298, i64 4
  store i8* %299, i8** %6, align 8
  %300 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %301 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %309, label %304

304:                                              ; preds = %294
  %305 = load i8*, i8** %6, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %304, %294
  %310 = load i8*, i8** @conn_error, align 8
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.connection*, %struct.connection** %3, align 8
  %313 = getelementptr inbounds %struct.connection, %struct.connection* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  %314 = load %struct.connection*, %struct.connection** %3, align 8
  %315 = getelementptr inbounds %struct.connection, %struct.connection* %314, i32 0, i32 3
  store i32 -1, i32* %315, align 4
  %316 = load i32, i32* @verbosity, align 4
  %317 = icmp sgt i32 %316, 1
  br i1 %317, label %318, label %321

318:                                              ; preds = %309
  %319 = load i32, i32* @stderr, align 4
  %320 = call i32 (i32, i8*, ...) @fprintf(i32 %319, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %309
  store i32 0, i32* %2, align 4
  br label %502

322:                                              ; preds = %304
  %323 = load i64, i64* @sql_auth_ok, align 8
  %324 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %325 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %324, i32 0, i32 5
  store i64 %323, i64* %325, align 8
  %326 = load %struct.connection*, %struct.connection** %3, align 8
  %327 = getelementptr inbounds %struct.connection, %struct.connection* %326, i32 0, i32 6
  %328 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %329 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %332 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %330, %333
  %335 = add nsw i32 %334, 4
  %336 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %327, i32 %335)
  %337 = load i32, i32* @conn_ready, align 4
  %338 = load %struct.connection*, %struct.connection** %3, align 8
  %339 = getelementptr inbounds %struct.connection, %struct.connection* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %341 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %340, i32 0, i32 0
  store i32 0, i32* %341, align 8
  %342 = load i32, i32* @verbosity, align 4
  %343 = icmp sgt i32 %342, 1
  br i1 %343, label %344, label %347

344:                                              ; preds = %322
  %345 = load i32, i32* @stderr, align 4
  %346 = call i32 (i32, i8*, ...) @fprintf(i32 %345, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %347

347:                                              ; preds = %344, %322
  %348 = load %struct.connection*, %struct.connection** %3, align 8
  %349 = call %struct.TYPE_7__* @SQLC_FUNC(%struct.connection* %348)
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  %351 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %350, align 8
  %352 = load %struct.connection*, %struct.connection** %3, align 8
  %353 = call i32 %351(%struct.connection* %352)
  store i32 0, i32* %2, align 4
  br label %502

354:                                              ; preds = %288
  %355 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %356 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %354
  %360 = load %struct.connection*, %struct.connection** %3, align 8
  %361 = getelementptr inbounds %struct.connection, %struct.connection* %360, i32 0, i32 5
  %362 = call i64 @nbit_get_ptr(i32* %361)
  %363 = inttoptr i64 %362 to i8*
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  br label %367

366:                                              ; preds = %354
  br label %367

367:                                              ; preds = %366, %359
  %368 = phi i32 [ %365, %359 ], [ -1, %366 ]
  store i32 %368, i32* %8, align 4
  %369 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %370 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %369, i32 0, i32 5
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @sql_auth_ok, align 8
  %373 = icmp eq i64 %371, %372
  %374 = zext i1 %373 to i32
  %375 = call i32 @assert(i32 %374)
  %376 = load i32, i32* @verbosity, align 4
  %377 = icmp sgt i32 %376, 1
  br i1 %377, label %378, label %382

378:                                              ; preds = %367
  %379 = load i32, i32* @stderr, align 4
  %380 = load i32, i32* %8, align 4
  %381 = call i32 (i32, i8*, ...) @fprintf(i32 %379, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %380)
  br label %382

382:                                              ; preds = %378, %367
  %383 = load %struct.connection*, %struct.connection** %3, align 8
  %384 = getelementptr inbounds %struct.connection, %struct.connection* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %9, align 4
  %387 = load i64, i64* @conn_running, align 8
  %388 = trunc i64 %387 to i32
  %389 = load %struct.connection*, %struct.connection** %3, align 8
  %390 = getelementptr inbounds %struct.connection, %struct.connection* %389, i32 0, i32 1
  store i32 %388, i32* %390, align 4
  %391 = load %struct.connection*, %struct.connection** %3, align 8
  %392 = call %struct.TYPE_7__* @SQLC_FUNC(%struct.connection* %391)
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  %394 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %393, align 8
  %395 = load %struct.connection*, %struct.connection** %3, align 8
  %396 = load i32, i32* %8, align 4
  %397 = call i32 %394(%struct.connection* %395, i32 %396)
  store i32 %397, i32* %10, align 4
  %398 = load i32, i32* %10, align 4
  %399 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %447

401:                                              ; preds = %382
  %402 = load i32, i32* %9, align 4
  %403 = load %struct.connection*, %struct.connection** %3, align 8
  %404 = getelementptr inbounds %struct.connection, %struct.connection* %403, i32 0, i32 6
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %402, %406
  br i1 %407, label %408, label %435

408:                                              ; preds = %401
  %409 = load i32, i32* @stderr, align 4
  %410 = load %struct.connection*, %struct.connection** %3, align 8
  %411 = getelementptr inbounds %struct.connection, %struct.connection* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load %struct.connection*, %struct.connection** %3, align 8
  %415 = getelementptr inbounds %struct.connection, %struct.connection* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %419 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %422 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %425 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %428 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %8, align 4
  %431 = load %struct.connection*, %struct.connection** %3, align 8
  %432 = getelementptr inbounds %struct.connection, %struct.connection* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = call i32 (i32, i8*, ...) @fprintf(i32 %409, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.8, i64 0, i64 0), i32 %412, i32 %413, i32 %417, i32 %420, i32 %423, i32 %426, i32 %429, i32 %430, i32 %433)
  br label %435

435:                                              ; preds = %408, %401
  %436 = load %struct.connection*, %struct.connection** %3, align 8
  %437 = getelementptr inbounds %struct.connection, %struct.connection* %436, i32 0, i32 6
  %438 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %439 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %442 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = add nsw i32 %440, %443
  %445 = add nsw i32 %444, 4
  %446 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %437, i32 %445)
  br label %475

447:                                              ; preds = %382
  %448 = load i32, i32* %9, align 4
  %449 = load %struct.connection*, %struct.connection** %3, align 8
  %450 = getelementptr inbounds %struct.connection, %struct.connection* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = icmp ne i32 %448, %452
  br i1 %453, label %454, label %474

454:                                              ; preds = %447
  %455 = load i32, i32* %9, align 4
  %456 = load %struct.connection*, %struct.connection** %3, align 8
  %457 = getelementptr inbounds %struct.connection, %struct.connection* %456, i32 0, i32 6
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %461 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %459, %462
  %464 = add nsw i32 %463, 4
  %465 = icmp eq i32 %455, %464
  %466 = zext i1 %465 to i32
  %467 = call i32 @assert(i32 %466)
  %468 = load %struct.connection*, %struct.connection** %3, align 8
  %469 = getelementptr inbounds %struct.connection, %struct.connection* %468, i32 0, i32 6
  %470 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %471 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %469, i32 %472)
  br label %474

474:                                              ; preds = %454, %447
  br label %475

475:                                              ; preds = %474, %435
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476, %287
  br label %478

478:                                              ; preds = %477, %197
  %479 = load %struct.connection*, %struct.connection** %3, align 8
  %480 = getelementptr inbounds %struct.connection, %struct.connection* %479, i32 0, i32 5
  %481 = load %struct.connection*, %struct.connection** %3, align 8
  %482 = getelementptr inbounds %struct.connection, %struct.connection* %481, i32 0, i32 6
  %483 = call i32 @nbit_set(i32* %480, %struct.TYPE_6__* %482)
  %484 = load %struct.connection*, %struct.connection** %3, align 8
  %485 = getelementptr inbounds %struct.connection, %struct.connection* %484, i32 0, i32 5
  %486 = call i32 @nbit_ready_bytes(i32* %485)
  store i32 %486, i32* %5, align 4
  %487 = load %struct.sqlc_data*, %struct.sqlc_data** %4, align 8
  %488 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %487, i32 0, i32 0
  store i32 0, i32* %488, align 8
  %489 = load %struct.connection*, %struct.connection** %3, align 8
  %490 = getelementptr inbounds %struct.connection, %struct.connection* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  %493 = load i64, i64* @conn_running, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %500

495:                                              ; preds = %478
  %496 = load i64, i64* @conn_wait_answer, align 8
  %497 = trunc i64 %496 to i32
  %498 = load %struct.connection*, %struct.connection** %3, align 8
  %499 = getelementptr inbounds %struct.connection, %struct.connection* %498, i32 0, i32 1
  store i32 %497, i32* %499, align 4
  br label %500

500:                                              ; preds = %495, %478
  br label %35

501:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %502

502:                                              ; preds = %501, %347, %321, %280, %227, %166, %130, %61
  %503 = load i32, i32* %2, align 4
  ret i32 %503
}

declare dso_local %struct.sqlc_data* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_total_ready_bytes(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local i32 @sqlc_inner_authorise(%struct.connection*) #1

declare dso_local i32 @advance_skip_read_ptr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mark_all_unprocessed(%struct.TYPE_6__*) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @nbit_ready_bytes(i32*) #1

declare dso_local i64 @get_read_ptr(%struct.TYPE_6__*) #1

declare dso_local i8* @show_ip(i32) #1

declare dso_local %struct.TYPE_7__* @SQLC_FUNC(%struct.connection*) #1

declare dso_local i64 @nbit_get_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
