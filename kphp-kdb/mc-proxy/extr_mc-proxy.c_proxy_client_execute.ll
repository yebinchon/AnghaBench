; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_proxy_client_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_proxy_client_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, %struct.conn_query*, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.conn_query = type { i64, i32, i64, %struct.connection* }
%struct.TYPE_2__ = type { i32 }
%struct.mcc_data = type { i32, i32, i32, i32, i32*, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"proxy_mc_client: op=%d, key_len=%d, arg#=%d, response_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"response received for empty query list? op=%d\0A\00", align 1
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4
@MAX_KEY_LEN = common dso_local global i32 0, align 4
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"error at VALUE: op=%d, key_len=%d, arg_num=%d, value_len=%lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"missing cr/lf at VALUE: op=%d, key_len=%d, arg_num=%d, value_len=%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"mcc_value: op=%d, key_len=%d, flags=%lld, time=%lld, value_len=%lld\0A\00", align 1
@mct_get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [120 x i8] c"VALUE obtained for a non-get query: op=%d, query_type=%d, key_len=%d, arg_num=%d, value_len=%lld, get_allows_stored=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"mcc_got_version: op=%d, key_len=%d, unreliability=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"CLIENT_ERROR received from connection %d (%s:%d)\0A\00", align 1
@client_errors_received = common dso_local global i32 0, align 4
@errors_received = common dso_local global i32 0, align 4
@cr_failed = common dso_local global i32 0, align 4
@mct_incr = common dso_local global i32 0, align 4
@mct_decr = common dso_local global i32 0, align 4
@mct_set = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@mct_replace = common dso_local global i32 0, align 4
@mct_delete = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [104 x i8] c"INCORRECT response obtained for a query: op=%d, query_type=%d, key_len=%d, arg_num=%d, allowed_mask=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"mcc_op: op=%d, key_len=%d, arg=%lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"STORED/NOT_STORED response for get, skipping\0A\00", align 1
@.str.11 = private unnamed_addr constant [97 x i8] c"STORED/NOT_STORED/DELETED/... response (%d) for immediate/diagonal distribution query, skipping\0A\00", align 1
@tot_skipped_answers = common dso_local global i32 0, align 4
@MERGE_EXTENSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proxy_client_execute(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.connection*, %struct.connection** %4, align 8
  %15 = call %struct.mcc_data* @MCC_DATA(%struct.connection* %14)
  store %struct.mcc_data* %15, %struct.mcc_data** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %22 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %25 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %28 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %18, %2
  %32 = load %struct.connection*, %struct.connection** %4, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 4
  %34 = load %struct.conn_query*, %struct.conn_query** %33, align 8
  %35 = load %struct.connection*, %struct.connection** %4, align 8
  %36 = bitcast %struct.connection* %35 to %struct.conn_query*
  %37 = icmp eq %struct.conn_query* %34, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 129
  br i1 %43, label %44, label %91

44:                                               ; preds = %41
  %45 = load i32, i32* @verbosity, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @verbosity, align 4
  %52 = icmp sgt i32 %51, -2
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load %struct.connection*, %struct.connection** %4, align 8
  %55 = call i32 @dump_connection_buffers(%struct.connection* %54)
  %56 = load %struct.connection*, %struct.connection** %4, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 4
  %58 = load %struct.conn_query*, %struct.conn_query** %57, align 8
  %59 = load %struct.connection*, %struct.connection** %4, align 8
  %60 = bitcast %struct.connection* %59 to %struct.conn_query*
  %61 = icmp ne %struct.conn_query* %58, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  %63 = load %struct.connection*, %struct.connection** %4, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 4
  %65 = load %struct.conn_query*, %struct.conn_query** %64, align 8
  %66 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.connection*, %struct.connection** %4, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 4
  %70 = load %struct.conn_query*, %struct.conn_query** %69, align 8
  %71 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %70, i32 0, i32 3
  %72 = load %struct.connection*, %struct.connection** %71, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %67, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %62
  %77 = load %struct.connection*, %struct.connection** %4, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 4
  %79 = load %struct.conn_query*, %struct.conn_query** %78, align 8
  %80 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %79, i32 0, i32 3
  %81 = load %struct.connection*, %struct.connection** %80, align 8
  %82 = call i32 @dump_connection_buffers(%struct.connection* %81)
  br label %83

83:                                               ; preds = %76, %62, %53
  br label %84

84:                                               ; preds = %83, %47
  br label %85

85:                                               ; preds = %84, %44
  %86 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %87 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 16
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %90, i32* %3, align 4
  br label %660

91:                                               ; preds = %41, %38, %31
  %92 = load %struct.connection*, %struct.connection** %4, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 4
  %94 = load %struct.conn_query*, %struct.conn_query** %93, align 8
  %95 = load %struct.connection*, %struct.connection** %4, align 8
  %96 = bitcast %struct.connection* %95 to %struct.conn_query*
  %97 = icmp ne %struct.conn_query* %94, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 128
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 129
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load %struct.connection*, %struct.connection** %4, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 4
  %107 = load %struct.conn_query*, %struct.conn_query** %106, align 8
  %108 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 4096
  store i32 %110, i32* %10, align 4
  %111 = load %struct.connection*, %struct.connection** %4, align 8
  %112 = getelementptr inbounds %struct.connection, %struct.connection* %111, i32 0, i32 4
  %113 = load %struct.conn_query*, %struct.conn_query** %112, align 8
  %114 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 8192
  store i32 %116, i32* %11, align 4
  %117 = load %struct.connection*, %struct.connection** %4, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 4
  %119 = load %struct.conn_query*, %struct.conn_query** %118, align 8
  %120 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, 4095
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %104, %101, %98, %91
  %124 = load i32, i32* @precise_now, align 4
  %125 = load %struct.connection*, %struct.connection** %4, align 8
  %126 = getelementptr inbounds %struct.connection, %struct.connection* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %5, align 4
  switch i32 %127, label %536 [
    i32 128, label %128
    i32 130, label %130
    i32 129, label %413
    i32 139, label %432
    i32 136, label %447
    i32 132, label %493
    i32 133, label %498
    i32 131, label %504
    i32 134, label %504
    i32 138, label %521
    i32 135, label %524
    i32 137, label %533
  ]

128:                                              ; preds = %123
  %129 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %129, i32* %3, align 4
  br label %660

130:                                              ; preds = %123
  %131 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %132 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %193

135:                                              ; preds = %130
  %136 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %137 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MAX_KEY_LEN, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %135
  %142 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %143 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %193

146:                                              ; preds = %141
  %147 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %148 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @MAX_VALUE_LEN, align 4
  %153 = icmp ule i32 %151, %152
  br i1 %153, label %154, label %193

154:                                              ; preds = %146
  %155 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %156 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %161 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = add nsw i32 %163, 2
  %165 = load %struct.connection*, %struct.connection** %4, align 8
  %166 = getelementptr inbounds %struct.connection, %struct.connection* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %164, %168
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %154
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %3, align 4
  br label %660

174:                                              ; preds = %154
  %175 = load %struct.connection*, %struct.connection** %4, align 8
  %176 = getelementptr inbounds %struct.connection, %struct.connection* %175, i32 0, i32 8
  %177 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %178 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @nbit_advance(i32* %176, i32 %181)
  %183 = load %struct.connection*, %struct.connection** %4, align 8
  %184 = getelementptr inbounds %struct.connection, %struct.connection* %183, i32 0, i32 8
  %185 = call i32 @nbit_ready_bytes(i32* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp sgt i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load %struct.connection*, %struct.connection** %4, align 8
  %191 = getelementptr inbounds %struct.connection, %struct.connection* %190, i32 0, i32 8
  %192 = call i8* @nbit_get_ptr(i32* %191)
  store i8* %192, i8** %9, align 8
  br label %247

193:                                              ; preds = %146, %141, %135, %130
  %194 = load i32, i32* @stderr, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %197 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %200 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %203 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %198, i32 %201, i32 %206)
  %208 = load i32, i32* @verbosity, align 4
  %209 = icmp sgt i32 %208, -2
  br i1 %209, label %210, label %241

210:                                              ; preds = %193
  %211 = load %struct.connection*, %struct.connection** %4, align 8
  %212 = call i32 @dump_connection_buffers(%struct.connection* %211)
  %213 = load %struct.connection*, %struct.connection** %4, align 8
  %214 = getelementptr inbounds %struct.connection, %struct.connection* %213, i32 0, i32 4
  %215 = load %struct.conn_query*, %struct.conn_query** %214, align 8
  %216 = load %struct.connection*, %struct.connection** %4, align 8
  %217 = bitcast %struct.connection* %216 to %struct.conn_query*
  %218 = icmp ne %struct.conn_query* %215, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %210
  %220 = load %struct.connection*, %struct.connection** %4, align 8
  %221 = getelementptr inbounds %struct.connection, %struct.connection* %220, i32 0, i32 4
  %222 = load %struct.conn_query*, %struct.conn_query** %221, align 8
  %223 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.connection*, %struct.connection** %4, align 8
  %226 = getelementptr inbounds %struct.connection, %struct.connection* %225, i32 0, i32 4
  %227 = load %struct.conn_query*, %struct.conn_query** %226, align 8
  %228 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %227, i32 0, i32 3
  %229 = load %struct.connection*, %struct.connection** %228, align 8
  %230 = getelementptr inbounds %struct.connection, %struct.connection* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %224, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %219
  %234 = load %struct.connection*, %struct.connection** %4, align 8
  %235 = getelementptr inbounds %struct.connection, %struct.connection* %234, i32 0, i32 4
  %236 = load %struct.conn_query*, %struct.conn_query** %235, align 8
  %237 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %236, i32 0, i32 3
  %238 = load %struct.connection*, %struct.connection** %237, align 8
  %239 = call i32 @dump_connection_buffers(%struct.connection* %238)
  br label %240

240:                                              ; preds = %233, %219, %210
  br label %241

241:                                              ; preds = %240, %193
  %242 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %243 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, 16
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %246, i32* %3, align 4
  br label %660

247:                                              ; preds = %174
  %248 = load i32, i32* %7, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.connection*, %struct.connection** %4, align 8
  %252 = getelementptr inbounds %struct.connection, %struct.connection* %251, i32 0, i32 8
  %253 = call i32 @nbit_advance(i32* %252, i32 1)
  br label %254

254:                                              ; preds = %250, %247
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 13
  br i1 %259, label %277, label %260

260:                                              ; preds = %254
  %261 = load i32, i32* %7, align 4
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  br label %274

268:                                              ; preds = %260
  %269 = load %struct.connection*, %struct.connection** %4, align 8
  %270 = getelementptr inbounds %struct.connection, %struct.connection* %269, i32 0, i32 8
  %271 = call i8* @nbit_get_ptr(i32* %270)
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  br label %274

274:                                              ; preds = %268, %263
  %275 = phi i32 [ %267, %263 ], [ %273, %268 ]
  %276 = icmp ne i32 %275, 10
  br i1 %276, label %277, label %331

277:                                              ; preds = %274, %254
  %278 = load i32, i32* @stderr, align 4
  %279 = load i32, i32* %5, align 4
  %280 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %281 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %284 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %287 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %279, i32 %282, i32 %285, i32 %290)
  %292 = load i32, i32* @verbosity, align 4
  %293 = icmp sgt i32 %292, -2
  br i1 %293, label %294, label %325

294:                                              ; preds = %277
  %295 = load %struct.connection*, %struct.connection** %4, align 8
  %296 = call i32 @dump_connection_buffers(%struct.connection* %295)
  %297 = load %struct.connection*, %struct.connection** %4, align 8
  %298 = getelementptr inbounds %struct.connection, %struct.connection* %297, i32 0, i32 4
  %299 = load %struct.conn_query*, %struct.conn_query** %298, align 8
  %300 = load %struct.connection*, %struct.connection** %4, align 8
  %301 = bitcast %struct.connection* %300 to %struct.conn_query*
  %302 = icmp ne %struct.conn_query* %299, %301
  br i1 %302, label %303, label %324

303:                                              ; preds = %294
  %304 = load %struct.connection*, %struct.connection** %4, align 8
  %305 = getelementptr inbounds %struct.connection, %struct.connection* %304, i32 0, i32 4
  %306 = load %struct.conn_query*, %struct.conn_query** %305, align 8
  %307 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.connection*, %struct.connection** %4, align 8
  %310 = getelementptr inbounds %struct.connection, %struct.connection* %309, i32 0, i32 4
  %311 = load %struct.conn_query*, %struct.conn_query** %310, align 8
  %312 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %311, i32 0, i32 3
  %313 = load %struct.connection*, %struct.connection** %312, align 8
  %314 = getelementptr inbounds %struct.connection, %struct.connection* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp eq i64 %308, %315
  br i1 %316, label %317, label %324

317:                                              ; preds = %303
  %318 = load %struct.connection*, %struct.connection** %4, align 8
  %319 = getelementptr inbounds %struct.connection, %struct.connection* %318, i32 0, i32 4
  %320 = load %struct.conn_query*, %struct.conn_query** %319, align 8
  %321 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %320, i32 0, i32 3
  %322 = load %struct.connection*, %struct.connection** %321, align 8
  %323 = call i32 @dump_connection_buffers(%struct.connection* %322)
  br label %324

324:                                              ; preds = %317, %303, %294
  br label %325

325:                                              ; preds = %324, %277
  %326 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %327 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, 16
  store i32 %329, i32* %327, align 4
  %330 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %330, i32* %3, align 4
  br label %660

331:                                              ; preds = %274
  store i32 2, i32* %7, align 4
  %332 = load i32, i32* @verbosity, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %356

334:                                              ; preds = %331
  %335 = load i32, i32* @stderr, align 4
  %336 = load i32, i32* %5, align 4
  %337 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %338 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %341 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %340, i32 0, i32 4
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %346 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %351 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %350, i32 0, i32 4
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 2
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i32, i8*, ...) @fprintf(i32 %335, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %336, i32 %339, i32 %344, i32 %349, i32 %354)
  br label %356

356:                                              ; preds = %334, %331
  %357 = load %struct.connection*, %struct.connection** %4, align 8
  %358 = getelementptr inbounds %struct.connection, %struct.connection* %357, i32 0, i32 4
  %359 = load %struct.conn_query*, %struct.conn_query** %358, align 8
  %360 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @mct_get, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %367, label %364

364:                                              ; preds = %356
  %365 = load i32, i32* %10, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %393

367:                                              ; preds = %364, %356
  %368 = load i32, i32* @stderr, align 4
  %369 = load i32, i32* %5, align 4
  %370 = load %struct.connection*, %struct.connection** %4, align 8
  %371 = getelementptr inbounds %struct.connection, %struct.connection* %370, i32 0, i32 4
  %372 = load %struct.conn_query*, %struct.conn_query** %371, align 8
  %373 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %376 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %379 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %382 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %10, align 4
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %368, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 %369, i32 %374, i32 %377, i32 %380, i32 %385, i32 %386)
  %388 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %389 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, 16
  store i32 %391, i32* %389, align 4
  %392 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %392, i32* %3, align 4
  br label %660

393:                                              ; preds = %364
  store i32 0, i32* %13, align 4
  %394 = load i32, i32* %13, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %410, label %396

396:                                              ; preds = %393
  %397 = load %struct.connection*, %struct.connection** %4, align 8
  %398 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %399 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %402 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %401, i32 0, i32 4
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 1
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %400, %405
  %407 = load i32, i32* %7, align 4
  %408 = add nsw i32 %406, %407
  %409 = call i32 @forward_response(%struct.connection* %397, i32 %408)
  br label %412

410:                                              ; preds = %393
  %411 = call i32 @assert(i32 0)
  br label %412

412:                                              ; preds = %410, %396
  store i32 0, i32* %3, align 4
  br label %660

413:                                              ; preds = %123
  %414 = load %struct.connection*, %struct.connection** %4, align 8
  %415 = getelementptr inbounds %struct.connection, %struct.connection* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = ashr i32 %416, 1
  store i32 %417, i32* %415, align 8
  %418 = load i32, i32* @verbosity, align 4
  %419 = icmp sgt i32 %418, 0
  br i1 %419, label %420, label %430

420:                                              ; preds = %413
  %421 = load i32, i32* @stderr, align 4
  %422 = load i32, i32* %5, align 4
  %423 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %424 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.connection*, %struct.connection** %4, align 8
  %427 = getelementptr inbounds %struct.connection, %struct.connection* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = call i32 (i32, i8*, ...) @fprintf(i32 %421, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %422, i32 %425, i32 %428)
  br label %430

430:                                              ; preds = %420, %413
  %431 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %431, i32* %3, align 4
  br label %660

432:                                              ; preds = %123
  %433 = load i32, i32* @stderr, align 4
  %434 = load %struct.connection*, %struct.connection** %4, align 8
  %435 = getelementptr inbounds %struct.connection, %struct.connection* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.connection*, %struct.connection** %4, align 8
  %438 = getelementptr inbounds %struct.connection, %struct.connection* %437, i32 0, i32 6
  %439 = load i32, i32* %438, align 4
  %440 = call i8* @conv_addr(i32 %439, i32 0)
  %441 = load %struct.connection*, %struct.connection** %4, align 8
  %442 = getelementptr inbounds %struct.connection, %struct.connection* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = call i32 (i32, i8*, ...) @fprintf(i32 %433, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %436, i8* %440, i32 %443)
  %445 = load i32, i32* @client_errors_received, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* @client_errors_received, align 4
  br label %447

447:                                              ; preds = %123, %432
  %448 = load i32, i32* @errors_received, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* @errors_received, align 4
  %450 = load i32, i32* @verbosity, align 4
  %451 = icmp sgt i32 %450, -2
  br i1 %451, label %452, label %486

452:                                              ; preds = %447
  %453 = load i32, i32* @errors_received, align 4
  %454 = icmp slt i32 %453, 32
  br i1 %454, label %455, label %486

455:                                              ; preds = %452
  %456 = load %struct.connection*, %struct.connection** %4, align 8
  %457 = call i32 @dump_connection_buffers(%struct.connection* %456)
  %458 = load %struct.connection*, %struct.connection** %4, align 8
  %459 = getelementptr inbounds %struct.connection, %struct.connection* %458, i32 0, i32 4
  %460 = load %struct.conn_query*, %struct.conn_query** %459, align 8
  %461 = load %struct.connection*, %struct.connection** %4, align 8
  %462 = bitcast %struct.connection* %461 to %struct.conn_query*
  %463 = icmp ne %struct.conn_query* %460, %462
  br i1 %463, label %464, label %485

464:                                              ; preds = %455
  %465 = load %struct.connection*, %struct.connection** %4, align 8
  %466 = getelementptr inbounds %struct.connection, %struct.connection* %465, i32 0, i32 4
  %467 = load %struct.conn_query*, %struct.conn_query** %466, align 8
  %468 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.connection*, %struct.connection** %4, align 8
  %471 = getelementptr inbounds %struct.connection, %struct.connection* %470, i32 0, i32 4
  %472 = load %struct.conn_query*, %struct.conn_query** %471, align 8
  %473 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %472, i32 0, i32 3
  %474 = load %struct.connection*, %struct.connection** %473, align 8
  %475 = getelementptr inbounds %struct.connection, %struct.connection* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp eq i64 %469, %476
  br i1 %477, label %478, label %485

478:                                              ; preds = %464
  %479 = load %struct.connection*, %struct.connection** %4, align 8
  %480 = getelementptr inbounds %struct.connection, %struct.connection* %479, i32 0, i32 4
  %481 = load %struct.conn_query*, %struct.conn_query** %480, align 8
  %482 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %481, i32 0, i32 3
  %483 = load %struct.connection*, %struct.connection** %482, align 8
  %484 = call i32 @dump_connection_buffers(%struct.connection* %483)
  br label %485

485:                                              ; preds = %478, %464, %455
  br label %486

486:                                              ; preds = %485, %452, %447
  %487 = load %struct.connection*, %struct.connection** %4, align 8
  %488 = call i32 @fail_connection(%struct.connection* %487, i32 -5)
  %489 = load i32, i32* @cr_failed, align 4
  %490 = load %struct.connection*, %struct.connection** %4, align 8
  %491 = getelementptr inbounds %struct.connection, %struct.connection* %490, i32 0, i32 5
  store i32 %489, i32* %491, align 8
  %492 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %492, i32* %3, align 4
  br label %660

493:                                              ; preds = %123
  %494 = load i32, i32* @mct_get, align 4
  %495 = shl i32 1, %494
  %496 = xor i32 %495, -1
  %497 = and i32 -1, %496
  store i32 %497, i32* %8, align 4
  br label %537

498:                                              ; preds = %123
  %499 = load i32, i32* @mct_incr, align 4
  %500 = shl i32 1, %499
  %501 = load i32, i32* @mct_decr, align 4
  %502 = shl i32 1, %501
  %503 = or i32 %500, %502
  store i32 %503, i32* %8, align 4
  br label %537

504:                                              ; preds = %123, %123
  %505 = load i32, i32* @mct_set, align 4
  %506 = shl i32 1, %505
  %507 = load i32, i32* @mct_add, align 4
  %508 = shl i32 1, %507
  %509 = or i32 %506, %508
  %510 = load i32, i32* @mct_replace, align 4
  %511 = shl i32 1, %510
  %512 = or i32 %509, %511
  store i32 %512, i32* %8, align 4
  %513 = load i32, i32* %10, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %504
  %516 = load i32, i32* @mct_get, align 4
  %517 = shl i32 1, %516
  %518 = load i32, i32* %8, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %8, align 4
  br label %520

520:                                              ; preds = %515, %504
  br label %537

521:                                              ; preds = %123
  %522 = load i32, i32* @mct_delete, align 4
  %523 = shl i32 1, %522
  store i32 %523, i32* %8, align 4
  br label %537

524:                                              ; preds = %123
  %525 = load i32, i32* @mct_delete, align 4
  %526 = shl i32 1, %525
  %527 = load i32, i32* @mct_incr, align 4
  %528 = shl i32 1, %527
  %529 = or i32 %526, %528
  %530 = load i32, i32* @mct_decr, align 4
  %531 = shl i32 1, %530
  %532 = or i32 %529, %531
  store i32 %532, i32* %8, align 4
  br label %537

533:                                              ; preds = %123
  %534 = load i32, i32* @mct_get, align 4
  %535 = shl i32 1, %534
  store i32 %535, i32* %8, align 4
  br label %537

536:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %537

537:                                              ; preds = %536, %533, %524, %521, %520, %498, %493
  %538 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %539 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %560, label %542

542:                                              ; preds = %537
  %543 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %544 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* %5, align 4
  %547 = icmp eq i32 %546, 133
  %548 = zext i1 %547 to i32
  %549 = icmp ne i32 %545, %548
  br i1 %549, label %560, label %550

550:                                              ; preds = %542
  %551 = load %struct.connection*, %struct.connection** %4, align 8
  %552 = getelementptr inbounds %struct.connection, %struct.connection* %551, i32 0, i32 4
  %553 = load %struct.conn_query*, %struct.conn_query** %552, align 8
  %554 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 8
  %556 = shl i32 1, %555
  %557 = load i32, i32* %8, align 4
  %558 = and i32 %556, %557
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %581

560:                                              ; preds = %550, %542, %537
  %561 = load i32, i32* @stderr, align 4
  %562 = load i32, i32* %5, align 4
  %563 = load %struct.connection*, %struct.connection** %4, align 8
  %564 = getelementptr inbounds %struct.connection, %struct.connection* %563, i32 0, i32 4
  %565 = load %struct.conn_query*, %struct.conn_query** %564, align 8
  %566 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 8
  %568 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %569 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %572 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = load i32, i32* %8, align 4
  %575 = call i32 (i32, i8*, ...) @fprintf(i32 %561, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.8, i64 0, i64 0), i32 %562, i32 %567, i32 %570, i32 %573, i32 %574)
  %576 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %577 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 4
  %579 = or i32 %578, 16
  store i32 %579, i32* %577, align 4
  %580 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %580, i32* %3, align 4
  br label %660

581:                                              ; preds = %550
  %582 = load i32, i32* @verbosity, align 4
  %583 = icmp sgt i32 %582, 0
  br i1 %583, label %584, label %596

584:                                              ; preds = %581
  %585 = load i32, i32* @stderr, align 4
  %586 = load i32, i32* %5, align 4
  %587 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %588 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %591 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %590, i32 0, i32 4
  %592 = load i32*, i32** %591, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 0
  %594 = load i32, i32* %593, align 4
  %595 = call i32 (i32, i8*, ...) @fprintf(i32 %585, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %586, i32 %589, i32 %594)
  br label %596

596:                                              ; preds = %584, %581
  %597 = load %struct.connection*, %struct.connection** %4, align 8
  %598 = getelementptr inbounds %struct.connection, %struct.connection* %597, i32 0, i32 4
  %599 = load %struct.conn_query*, %struct.conn_query** %598, align 8
  %600 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = load i32, i32* @mct_get, align 4
  %603 = icmp eq i32 %601, %602
  br i1 %603, label %604, label %618

604:                                              ; preds = %596
  %605 = load i32, i32* %5, align 4
  %606 = icmp eq i32 %605, 131
  br i1 %606, label %610, label %607

607:                                              ; preds = %604
  %608 = load i32, i32* %5, align 4
  %609 = icmp eq i32 %608, 134
  br i1 %609, label %610, label %618

610:                                              ; preds = %607, %604
  %611 = load i32, i32* @verbosity, align 4
  %612 = icmp sgt i32 %611, 1
  br i1 %612, label %613, label %616

613:                                              ; preds = %610
  %614 = load i32, i32* @stderr, align 4
  %615 = call i32 (i32, i8*, ...) @fprintf(i32 %614, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %616

616:                                              ; preds = %613, %610
  %617 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %617, i32* %3, align 4
  br label %660

618:                                              ; preds = %607, %596
  %619 = load i32, i32* %11, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %634

621:                                              ; preds = %618
  %622 = load i32, i32* @verbosity, align 4
  %623 = icmp sgt i32 %622, 1
  br i1 %623, label %624, label %628

624:                                              ; preds = %621
  %625 = load i32, i32* @stderr, align 4
  %626 = load i32, i32* %5, align 4
  %627 = call i32 (i32, i8*, ...) @fprintf(i32 %625, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.11, i64 0, i64 0), i32 %626)
  br label %628

628:                                              ; preds = %624, %621
  %629 = load i32, i32* @tot_skipped_answers, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* @tot_skipped_answers, align 4
  %631 = load %struct.connection*, %struct.connection** %4, align 8
  %632 = call i32 @query_complete(%struct.connection* %631, i32 1)
  %633 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %633, i32* %3, align 4
  br label %660

634:                                              ; preds = %618
  %635 = load %struct.connection*, %struct.connection** %4, align 8
  %636 = getelementptr inbounds %struct.connection, %struct.connection* %635, i32 0, i32 4
  %637 = load %struct.conn_query*, %struct.conn_query** %636, align 8
  %638 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 8
  %640 = load i32, i32* @mct_get, align 4
  %641 = icmp eq i32 %639, %640
  br i1 %641, label %645, label %642

642:                                              ; preds = %634
  %643 = load i32, i32* %5, align 4
  %644 = icmp eq i32 %643, 137
  br i1 %644, label %645, label %652

645:                                              ; preds = %642, %634
  %646 = load %struct.connection*, %struct.connection** %4, align 8
  %647 = load i32, i32* %5, align 4
  %648 = icmp eq i32 %647, 137
  %649 = zext i1 %648 to i32
  %650 = call i32 @query_complete(%struct.connection* %646, i32 %649)
  %651 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %651, i32* %3, align 4
  br label %660

652:                                              ; preds = %642
  %653 = load %struct.connection*, %struct.connection** %4, align 8
  %654 = load %struct.mcc_data*, %struct.mcc_data** %6, align 8
  %655 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %654, i32 0, i32 2
  %656 = load i32, i32* %655, align 8
  %657 = call i32 @forward_response(%struct.connection* %653, i32 %656)
  %658 = load %struct.connection*, %struct.connection** %4, align 8
  %659 = call i32 @query_complete(%struct.connection* %658, i32 1)
  store i32 0, i32* %3, align 4
  br label %660

660:                                              ; preds = %652, %645, %628, %616, %560, %486, %430, %412, %367, %325, %241, %172, %128, %85
  %661 = load i32, i32* %3, align 4
  ret i32 %661
}

declare dso_local %struct.mcc_data* @MCC_DATA(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_connection_buffers(%struct.connection*) #1

declare dso_local i32 @nbit_advance(i32*, i32) #1

declare dso_local i32 @nbit_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @nbit_get_ptr(i32*) #1

declare dso_local i32 @forward_response(%struct.connection*, i32) #1

declare dso_local i8* @conv_addr(i32, i32) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local i32 @query_complete(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
