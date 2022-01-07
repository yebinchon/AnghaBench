; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-client.c_htc_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-client.c_htc_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32 }
%struct.htc_data = type { i32, i32, i32, i8*, i32, i32, i64, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.connection*, i32)* }

@conn_wait_answer = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@htrt_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@HTTP_V10 = common dso_local global i32 0, align 4
@RF_KEEPALIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@HTTP_V11 = common dso_local global i32 0, align 4
@RF_ERROR = common dso_local global i32 0, align 4
@htrt_error = common dso_local global i8* null, align 8
@RF_LOCATION = common dso_local global i32 0, align 4
@RF_CONNECTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@MAX_HTTP_HEADER_SIZE = common dso_local global i64 0, align 8
@RF_DATASIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@http_bad_response_headers = common dso_local global i32 0, align 4
@conn_running = common dso_local global i64 0, align 8
@outbound_http_queries = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@conn_write_close = common dso_local global i64 0, align 8
@conn_wait_aio = common dso_local global i64 0, align 8
@NEED_MORE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htc_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.htc_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = call %struct.htc_data* @HTC_DATA(%struct.connection* %12)
  store %struct.htc_data* %13, %struct.htc_data** %4, align 8
  br label %14

14:                                               ; preds = %1095, %1
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @conn_wait_answer, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @conn_reading_answer, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ true, %14 ], [ %25, %20 ]
  br i1 %27, label %28, label %1096

28:                                               ; preds = %26
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 3
  %31 = call i32 @nbit_ready_bytes(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 3
  %34 = call i8* @nbit_get_ptr(i32* %33)
  store i8* %34, i8** %6, align 8
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %1096

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %891, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.connection*, %struct.connection** %3, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 140
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %54, label %892

54:                                               ; preds = %52
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %889 [
    i32 130, label %58
    i32 134, label %68
    i32 133, label %322
    i32 132, label %322
    i32 135, label %445
    i32 136, label %597
    i32 131, label %678
    i32 139, label %727
    i32 128, label %747
    i32 137, label %793
    i32 129, label %847
    i32 140, label %880
    i32 138, label %881
  ]

58:                                               ; preds = %54
  %59 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %60 = call i32 @memset(%struct.htc_data* %59, i32 0, i32 72)
  %61 = load i32, i32* @htrt_none, align 4
  %62 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %63 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %65 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 1
  store i32 134, i32* %67, align 8
  br label %68

68:                                               ; preds = %54, %58
  br label %69

69:                                               ; preds = %96, %68
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ugt i32 %76, 32
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i1 [ false, %69 ], [ %77, %73 ]
  br i1 %79, label %80, label %103

80:                                               ; preds = %78
  %81 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %82 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 15
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %89 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %92 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8 %87, i8* %95, align 1
  br label %96

96:                                               ; preds = %85, %80
  %97 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %98 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  br label %69

103:                                              ; preds = %78
  %104 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %105 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 4096
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.connection*, %struct.connection** %3, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 1
  store i32 138, i32* %110, align 8
  br label %891

111:                                              ; preds = %103
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %891

116:                                              ; preds = %111
  %117 = load %struct.connection*, %struct.connection** %3, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 1
  store i32 133, i32* %118, align 8
  %119 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %120 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %124 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %168

127:                                              ; preds = %116
  %128 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %129 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @memcmp(i8* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @HTTP_V10, align 4
  %135 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %136 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %135, i32 0, i32 10
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @RF_KEEPALIVE, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %140 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %167

143:                                              ; preds = %127
  %144 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %145 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @memcmp(i8* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @HTTP_V11, align 4
  %151 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %152 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @RF_KEEPALIVE, align 4
  %154 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %155 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %166

158:                                              ; preds = %143
  %159 = load %struct.connection*, %struct.connection** %3, align 8
  %160 = getelementptr inbounds %struct.connection, %struct.connection* %159, i32 0, i32 1
  store i32 131, i32* %160, align 8
  %161 = load i32, i32* @RF_ERROR, align 4
  %162 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %163 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %158, %149
  br label %167

167:                                              ; preds = %166, %133
  br label %313

168:                                              ; preds = %116
  %169 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %170 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %232

173:                                              ; preds = %168
  %174 = load i8*, i8** @htrt_error, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %177 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %179 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %182, label %215

182:                                              ; preds = %173
  %183 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %184 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 3
  store i8 0, i8* %186, align 1
  %187 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %188 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strtoul(i8* %189, i8** %10, i32 10)
  %191 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %192 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %195 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 3
  %198 = icmp ne i8* %193, %197
  br i1 %198, label %209, label %199

199:                                              ; preds = %182
  %200 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %201 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %202, 100
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %206 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp sgt i32 %207, 599
  br i1 %208, label %209, label %214

209:                                              ; preds = %204, %199, %182
  %210 = load i8*, i8** @htrt_error, align 8
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %213 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %209, %204
  br label %215

215:                                              ; preds = %214, %173
  %216 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %217 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8*, i8** @htrt_error, align 8
  %222 = icmp eq i8* %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load i32, i32* @RF_ERROR, align 4
  %225 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %226 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %215
  %230 = load %struct.connection*, %struct.connection** %3, align 8
  %231 = getelementptr inbounds %struct.connection, %struct.connection* %230, i32 0, i32 1
  store i32 131, i32* %231, align 8
  br label %312

232:                                              ; preds = %168
  %233 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %234 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @RF_LOCATION, align 4
  %237 = load i32, i32* @RF_CONNECTION, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %235, %238
  %240 = call i32 @assert(i32 %239)
  %241 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %242 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %301

245:                                              ; preds = %232
  %246 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %247 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @RF_LOCATION, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %245
  %253 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %254 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %257 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %256, i32 0, i32 6
  store i64 %255, i64* %257, align 8
  %258 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %259 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %262 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %261, i32 0, i32 8
  store i32 %260, i32* %262, align 8
  br label %300

263:                                              ; preds = %245
  %264 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %265 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 10
  br i1 %267, label %268, label %280

268:                                              ; preds = %263
  %269 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %270 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @strncasecmp(i8* %271, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %268
  %275 = load i32, i32* @RF_KEEPALIVE, align 4
  %276 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %277 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %299

280:                                              ; preds = %268, %263
  %281 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %282 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 5
  br i1 %284, label %285, label %298

285:                                              ; preds = %280
  %286 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %287 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %286, i32 0, i32 3
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @strncasecmp(i8* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %285
  %292 = load i32, i32* @RF_KEEPALIVE, align 4
  %293 = xor i32 %292, -1
  %294 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %295 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %291, %285, %280
  br label %299

299:                                              ; preds = %298, %274
  br label %300

300:                                              ; preds = %299, %252
  br label %301

301:                                              ; preds = %300, %232
  %302 = load i32, i32* @RF_LOCATION, align 4
  %303 = load i32, i32* @RF_CONNECTION, align 4
  %304 = or i32 %302, %303
  %305 = xor i32 %304, -1
  %306 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %307 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load %struct.connection*, %struct.connection** %3, align 8
  %311 = getelementptr inbounds %struct.connection, %struct.connection* %310, i32 0, i32 1
  store i32 132, i32* %311, align 8
  br label %312

312:                                              ; preds = %301, %229
  br label %313

313:                                              ; preds = %312, %167
  %314 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %315 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %319 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %318, i32 0, i32 7
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, %317
  store i64 %321, i64* %319, align 8
  br label %891

322:                                              ; preds = %54, %54
  br label %323

323:                                              ; preds = %354, %322
  %324 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %325 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %324, i32 0, i32 7
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @MAX_HTTP_HEADER_SIZE, align 8
  %328 = icmp slt i64 %326, %327
  br i1 %328, label %329, label %352

329:                                              ; preds = %323
  %330 = load i8*, i8** %5, align 8
  %331 = load i8*, i8** %7, align 8
  %332 = icmp ult i8* %330, %331
  br i1 %332, label %333, label %352

333:                                              ; preds = %329
  %334 = load i8*, i8** %5, align 8
  %335 = load i8, i8* %334, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %336, 32
  br i1 %337, label %350, label %338

338:                                              ; preds = %333
  %339 = load i8*, i8** %5, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 9
  br i1 %342, label %343, label %348

343:                                              ; preds = %338
  %344 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %345 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = icmp sge i32 %346, 8
  br label %348

348:                                              ; preds = %343, %338
  %349 = phi i1 [ false, %338 ], [ %347, %343 ]
  br label %350

350:                                              ; preds = %348, %333
  %351 = phi i1 [ true, %333 ], [ %349, %348 ]
  br label %352

352:                                              ; preds = %350, %329, %323
  %353 = phi i1 [ false, %329 ], [ false, %323 ], [ %351, %350 ]
  br i1 %353, label %354, label %361

354:                                              ; preds = %352
  %355 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %356 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %355, i32 0, i32 7
  %357 = load i64, i64* %356, align 8
  %358 = add nsw i64 %357, 1
  store i64 %358, i64* %356, align 8
  %359 = load i8*, i8** %5, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** %5, align 8
  br label %323

361:                                              ; preds = %352
  %362 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %363 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %362, i32 0, i32 7
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @MAX_HTTP_HEADER_SIZE, align 8
  %366 = icmp sge i64 %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = load %struct.connection*, %struct.connection** %3, align 8
  %369 = getelementptr inbounds %struct.connection, %struct.connection* %368, i32 0, i32 1
  store i32 138, i32* %369, align 8
  br label %891

370:                                              ; preds = %361
  %371 = load i8*, i8** %5, align 8
  %372 = load i8*, i8** %7, align 8
  %373 = icmp eq i8* %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  br label %891

375:                                              ; preds = %370
  %376 = load %struct.connection*, %struct.connection** %3, align 8
  %377 = getelementptr inbounds %struct.connection, %struct.connection* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 132
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load %struct.connection*, %struct.connection** %3, align 8
  %382 = getelementptr inbounds %struct.connection, %struct.connection* %381, i32 0, i32 1
  store i32 139, i32* %382, align 8
  br label %891

383:                                              ; preds = %375
  %384 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %385 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %386, 2
  br i1 %387, label %388, label %393

388:                                              ; preds = %383
  %389 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %390 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %389, i32 0, i32 2
  store i32 0, i32* %390, align 8
  %391 = load %struct.connection*, %struct.connection** %3, align 8
  %392 = getelementptr inbounds %struct.connection, %struct.connection* %391, i32 0, i32 1
  store i32 134, i32* %392, align 8
  br label %444

393:                                              ; preds = %383
  %394 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %395 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = icmp sge i32 %396, 3
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert(i32 %398)
  %400 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %401 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @RF_DATASIZE, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %425

406:                                              ; preds = %393
  %407 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %408 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, -1
  br i1 %410, label %411, label %419

411:                                              ; preds = %406
  %412 = load %struct.connection*, %struct.connection** %3, align 8
  %413 = getelementptr inbounds %struct.connection, %struct.connection* %412, i32 0, i32 1
  store i32 131, i32* %413, align 8
  %414 = load i32, i32* @RF_ERROR, align 4
  %415 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %416 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, %414
  store i32 %418, i32* %416, align 4
  br label %424

419:                                              ; preds = %406
  %420 = load %struct.connection*, %struct.connection** %3, align 8
  %421 = getelementptr inbounds %struct.connection, %struct.connection* %420, i32 0, i32 1
  store i32 136, i32* %421, align 8
  %422 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %423 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %422, i32 0, i32 1
  store i32 0, i32* %423, align 4
  br label %424

424:                                              ; preds = %419, %411
  br label %443

425:                                              ; preds = %393
  %426 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %427 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @RF_LOCATION, align 4
  %430 = load i32, i32* @RF_CONNECTION, align 4
  %431 = or i32 %429, %430
  %432 = and i32 %428, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %425
  %435 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %436 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %435, i32 0, i32 2
  store i32 0, i32* %436, align 8
  %437 = load %struct.connection*, %struct.connection** %3, align 8
  %438 = getelementptr inbounds %struct.connection, %struct.connection* %437, i32 0, i32 1
  store i32 134, i32* %438, align 8
  br label %442

439:                                              ; preds = %425
  %440 = load %struct.connection*, %struct.connection** %3, align 8
  %441 = getelementptr inbounds %struct.connection, %struct.connection* %440, i32 0, i32 1
  store i32 131, i32* %441, align 8
  br label %442

442:                                              ; preds = %439, %434
  br label %443

443:                                              ; preds = %442, %424
  br label %444

444:                                              ; preds = %443, %388
  br label %891

445:                                              ; preds = %54
  br label %446

446:                                              ; preds = %478, %445
  %447 = load i8*, i8** %5, align 8
  %448 = load i8*, i8** %7, align 8
  %449 = icmp ult i8* %447, %448
  br i1 %449, label %450, label %460

450:                                              ; preds = %446
  %451 = load i8*, i8** %5, align 8
  %452 = load i8, i8* %451, align 1
  %453 = sext i8 %452 to i32
  %454 = icmp ne i32 %453, 58
  br i1 %454, label %455, label %460

455:                                              ; preds = %450
  %456 = load i8*, i8** %5, align 8
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp sgt i32 %458, 32
  br label %460

460:                                              ; preds = %455, %450, %446
  %461 = phi i1 [ false, %450 ], [ false, %446 ], [ %459, %455 ]
  br i1 %461, label %462, label %485

462:                                              ; preds = %460
  %463 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %464 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = icmp slt i32 %465, 15
  br i1 %466, label %467, label %478

467:                                              ; preds = %462
  %468 = load i8*, i8** %5, align 8
  %469 = load i8, i8* %468, align 1
  %470 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %471 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %470, i32 0, i32 3
  %472 = load i8*, i8** %471, align 8
  %473 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %474 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, i8* %472, i64 %476
  store i8 %469, i8* %477, align 1
  br label %478

478:                                              ; preds = %467, %462
  %479 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %480 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %480, align 8
  %483 = load i8*, i8** %5, align 8
  %484 = getelementptr inbounds i8, i8* %483, i32 1
  store i8* %484, i8** %5, align 8
  br label %446

485:                                              ; preds = %460
  %486 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %487 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = icmp sgt i32 %488, 4096
  br i1 %489, label %490, label %493

490:                                              ; preds = %485
  %491 = load %struct.connection*, %struct.connection** %3, align 8
  %492 = getelementptr inbounds %struct.connection, %struct.connection* %491, i32 0, i32 1
  store i32 138, i32* %492, align 8
  br label %891

493:                                              ; preds = %485
  %494 = load i8*, i8** %5, align 8
  %495 = load i8*, i8** %7, align 8
  %496 = icmp eq i8* %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %493
  br label %891

498:                                              ; preds = %493
  %499 = load i8*, i8** %5, align 8
  %500 = load i8, i8* %499, align 1
  %501 = sext i8 %500 to i32
  %502 = icmp ne i32 %501, 58
  br i1 %502, label %503, label %519

503:                                              ; preds = %498
  %504 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %505 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 8
  %507 = sext i32 %506 to i64
  %508 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %509 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %508, i32 0, i32 7
  %510 = load i64, i64* %509, align 8
  %511 = add nsw i64 %510, %507
  store i64 %511, i64* %509, align 8
  %512 = load %struct.connection*, %struct.connection** %3, align 8
  %513 = getelementptr inbounds %struct.connection, %struct.connection* %512, i32 0, i32 1
  store i32 131, i32* %513, align 8
  %514 = load i32, i32* @RF_ERROR, align 4
  %515 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %516 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %515, i32 0, i32 5
  %517 = load i32, i32* %516, align 4
  %518 = or i32 %517, %514
  store i32 %518, i32* %516, align 4
  br label %891

519:                                              ; preds = %498
  %520 = load i8*, i8** %5, align 8
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %5, align 8
  %522 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %523 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = icmp eq i32 %524, 8
  br i1 %525, label %526, label %538

526:                                              ; preds = %519
  %527 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %528 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %527, i32 0, i32 3
  %529 = load i8*, i8** %528, align 8
  %530 = call i32 @strncasecmp(i8* %529, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %538, label %532

532:                                              ; preds = %526
  %533 = load i32, i32* @RF_LOCATION, align 4
  %534 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %535 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %534, i32 0, i32 5
  %536 = load i32, i32* %535, align 4
  %537 = or i32 %536, %533
  store i32 %537, i32* %535, align 4
  br label %585

538:                                              ; preds = %526, %519
  %539 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %540 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 8
  %542 = icmp eq i32 %541, 10
  br i1 %542, label %543, label %555

543:                                              ; preds = %538
  %544 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %545 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %544, i32 0, i32 3
  %546 = load i8*, i8** %545, align 8
  %547 = call i32 @strncasecmp(i8* %546, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %543
  %550 = load i32, i32* @RF_CONNECTION, align 4
  %551 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %552 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %551, i32 0, i32 5
  %553 = load i32, i32* %552, align 4
  %554 = or i32 %553, %550
  store i32 %554, i32* %552, align 4
  br label %584

555:                                              ; preds = %543, %538
  %556 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %557 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = icmp eq i32 %558, 14
  br i1 %559, label %560, label %572

560:                                              ; preds = %555
  %561 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %562 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %561, i32 0, i32 3
  %563 = load i8*, i8** %562, align 8
  %564 = call i32 @strncasecmp(i8* %563, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 14)
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %572, label %566

566:                                              ; preds = %560
  %567 = load i32, i32* @RF_DATASIZE, align 4
  %568 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %569 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %568, i32 0, i32 5
  %570 = load i32, i32* %569, align 4
  %571 = or i32 %570, %567
  store i32 %571, i32* %569, align 4
  br label %583

572:                                              ; preds = %560, %555
  %573 = load i32, i32* @RF_LOCATION, align 4
  %574 = load i32, i32* @RF_DATASIZE, align 4
  %575 = or i32 %573, %574
  %576 = load i32, i32* @RF_CONNECTION, align 4
  %577 = or i32 %575, %576
  %578 = xor i32 %577, -1
  %579 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %580 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %579, i32 0, i32 5
  %581 = load i32, i32* %580, align 4
  %582 = and i32 %581, %578
  store i32 %582, i32* %580, align 4
  br label %583

583:                                              ; preds = %572, %566
  br label %584

584:                                              ; preds = %583, %549
  br label %585

585:                                              ; preds = %584, %532
  %586 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %587 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 8
  %589 = add nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  %591 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %592 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %591, i32 0, i32 7
  %593 = load i64, i64* %592, align 8
  %594 = add nsw i64 %593, %590
  store i64 %594, i64* %592, align 8
  %595 = load %struct.connection*, %struct.connection** %3, align 8
  %596 = getelementptr inbounds %struct.connection, %struct.connection* %595, i32 0, i32 1
  store i32 133, i32* %596, align 8
  br label %891

597:                                              ; preds = %54
  %598 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %599 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %9, align 8
  br label %602

602:                                              ; preds = %629, %597
  %603 = load i8*, i8** %5, align 8
  %604 = load i8*, i8** %7, align 8
  %605 = icmp ult i8* %603, %604
  br i1 %605, label %606, label %616

606:                                              ; preds = %602
  %607 = load i8*, i8** %5, align 8
  %608 = load i8, i8* %607, align 1
  %609 = sext i8 %608 to i32
  %610 = icmp sge i32 %609, 48
  br i1 %610, label %611, label %616

611:                                              ; preds = %606
  %612 = load i8*, i8** %5, align 8
  %613 = load i8, i8* %612, align 1
  %614 = sext i8 %613 to i32
  %615 = icmp sle i32 %614, 57
  br label %616

616:                                              ; preds = %611, %606, %602
  %617 = phi i1 [ false, %606 ], [ false, %602 ], [ %615, %611 ]
  br i1 %617, label %618, label %650

618:                                              ; preds = %616
  %619 = load i64, i64* %9, align 8
  %620 = icmp sge i64 %619, 214748364
  br i1 %620, label %621, label %629

621:                                              ; preds = %618
  %622 = load i32, i32* @RF_ERROR, align 4
  %623 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %624 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %623, i32 0, i32 5
  %625 = load i32, i32* %624, align 4
  %626 = or i32 %625, %622
  store i32 %626, i32* %624, align 4
  %627 = load %struct.connection*, %struct.connection** %3, align 8
  %628 = getelementptr inbounds %struct.connection, %struct.connection* %627, i32 0, i32 1
  store i32 131, i32* %628, align 8
  br label %650

629:                                              ; preds = %618
  %630 = load i64, i64* %9, align 8
  %631 = mul nsw i64 %630, 10
  %632 = load i8*, i8** %5, align 8
  %633 = load i8, i8* %632, align 1
  %634 = sext i8 %633 to i32
  %635 = sub nsw i32 %634, 48
  %636 = sext i32 %635 to i64
  %637 = add nsw i64 %631, %636
  store i64 %637, i64* %9, align 8
  %638 = load i8*, i8** %5, align 8
  %639 = getelementptr inbounds i8, i8* %638, i32 1
  store i8* %639, i8** %5, align 8
  %640 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %641 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %640, i32 0, i32 7
  %642 = load i64, i64* %641, align 8
  %643 = add nsw i64 %642, 1
  store i64 %643, i64* %641, align 8
  %644 = load i32, i32* @RF_DATASIZE, align 4
  %645 = xor i32 %644, -1
  %646 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %647 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %646, i32 0, i32 5
  %648 = load i32, i32* %647, align 4
  %649 = and i32 %648, %645
  store i32 %649, i32* %647, align 4
  br label %602

650:                                              ; preds = %621, %616
  %651 = load i64, i64* %9, align 8
  %652 = trunc i64 %651 to i32
  %653 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %654 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %653, i32 0, i32 1
  store i32 %652, i32* %654, align 4
  %655 = load i8*, i8** %5, align 8
  %656 = load i8*, i8** %7, align 8
  %657 = icmp eq i8* %655, %656
  br i1 %657, label %658, label %659

658:                                              ; preds = %650
  br label %891

659:                                              ; preds = %650
  %660 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %661 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %660, i32 0, i32 5
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @RF_DATASIZE, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %674

666:                                              ; preds = %659
  %667 = load i32, i32* @RF_ERROR, align 4
  %668 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %669 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %668, i32 0, i32 5
  %670 = load i32, i32* %669, align 4
  %671 = or i32 %670, %667
  store i32 %671, i32* %669, align 4
  %672 = load %struct.connection*, %struct.connection** %3, align 8
  %673 = getelementptr inbounds %struct.connection, %struct.connection* %672, i32 0, i32 1
  store i32 131, i32* %673, align 8
  br label %677

674:                                              ; preds = %659
  %675 = load %struct.connection*, %struct.connection** %3, align 8
  %676 = getelementptr inbounds %struct.connection, %struct.connection* %675, i32 0, i32 1
  store i32 132, i32* %676, align 8
  br label %677

677:                                              ; preds = %674, %666
  br label %891

678:                                              ; preds = %54
  br label %679

679:                                              ; preds = %703, %678
  %680 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %681 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %680, i32 0, i32 7
  %682 = load i64, i64* %681, align 8
  %683 = load i64, i64* @MAX_HTTP_HEADER_SIZE, align 8
  %684 = icmp slt i64 %682, %683
  br i1 %684, label %685, label %701

685:                                              ; preds = %679
  %686 = load i8*, i8** %5, align 8
  %687 = load i8*, i8** %7, align 8
  %688 = icmp ult i8* %686, %687
  br i1 %688, label %689, label %701

689:                                              ; preds = %685
  %690 = load i8*, i8** %5, align 8
  %691 = load i8, i8* %690, align 1
  %692 = sext i8 %691 to i32
  %693 = icmp ne i32 %692, 13
  br i1 %693, label %694, label %699

694:                                              ; preds = %689
  %695 = load i8*, i8** %5, align 8
  %696 = load i8, i8* %695, align 1
  %697 = sext i8 %696 to i32
  %698 = icmp ne i32 %697, 10
  br label %699

699:                                              ; preds = %694, %689
  %700 = phi i1 [ false, %689 ], [ %698, %694 ]
  br label %701

701:                                              ; preds = %699, %685, %679
  %702 = phi i1 [ false, %685 ], [ false, %679 ], [ %700, %699 ]
  br i1 %702, label %703, label %710

703:                                              ; preds = %701
  %704 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %705 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %704, i32 0, i32 7
  %706 = load i64, i64* %705, align 8
  %707 = add nsw i64 %706, 1
  store i64 %707, i64* %705, align 8
  %708 = load i8*, i8** %5, align 8
  %709 = getelementptr inbounds i8, i8* %708, i32 1
  store i8* %709, i8** %5, align 8
  br label %679

710:                                              ; preds = %701
  %711 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %712 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %711, i32 0, i32 7
  %713 = load i64, i64* %712, align 8
  %714 = load i64, i64* @MAX_HTTP_HEADER_SIZE, align 8
  %715 = icmp sge i64 %713, %714
  br i1 %715, label %716, label %719

716:                                              ; preds = %710
  %717 = load %struct.connection*, %struct.connection** %3, align 8
  %718 = getelementptr inbounds %struct.connection, %struct.connection* %717, i32 0, i32 1
  store i32 138, i32* %718, align 8
  br label %891

719:                                              ; preds = %710
  %720 = load i8*, i8** %5, align 8
  %721 = load i8*, i8** %7, align 8
  %722 = icmp eq i8* %720, %721
  br i1 %722, label %723, label %724

723:                                              ; preds = %719
  br label %891

724:                                              ; preds = %719
  %725 = load %struct.connection*, %struct.connection** %3, align 8
  %726 = getelementptr inbounds %struct.connection, %struct.connection* %725, i32 0, i32 1
  store i32 139, i32* %726, align 8
  br label %727

727:                                              ; preds = %54, %724
  %728 = load i8*, i8** %5, align 8
  %729 = load i8*, i8** %7, align 8
  %730 = icmp eq i8* %728, %729
  br i1 %730, label %731, label %732

731:                                              ; preds = %727
  br label %891

732:                                              ; preds = %727
  %733 = load i8*, i8** %5, align 8
  %734 = load i8, i8* %733, align 1
  %735 = sext i8 %734 to i32
  %736 = icmp eq i32 %735, 13
  br i1 %736, label %737, label %744

737:                                              ; preds = %732
  %738 = load i8*, i8** %5, align 8
  %739 = getelementptr inbounds i8, i8* %738, i32 1
  store i8* %739, i8** %5, align 8
  %740 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %741 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %740, i32 0, i32 7
  %742 = load i64, i64* %741, align 8
  %743 = add nsw i64 %742, 1
  store i64 %743, i64* %741, align 8
  br label %744

744:                                              ; preds = %737, %732
  %745 = load %struct.connection*, %struct.connection** %3, align 8
  %746 = getelementptr inbounds %struct.connection, %struct.connection* %745, i32 0, i32 1
  store i32 128, i32* %746, align 8
  br label %747

747:                                              ; preds = %54, %744
  %748 = load i8*, i8** %5, align 8
  %749 = load i8*, i8** %7, align 8
  %750 = icmp eq i8* %748, %749
  br i1 %750, label %751, label %752

751:                                              ; preds = %747
  br label %891

752:                                              ; preds = %747
  %753 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %754 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %753, i32 0, i32 4
  %755 = load i32, i32* %754, align 8
  %756 = add nsw i32 %755, 1
  store i32 %756, i32* %754, align 8
  %757 = icmp slt i32 %756, 8
  br i1 %757, label %758, label %771

758:                                              ; preds = %752
  %759 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %760 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %759, i32 0, i32 4
  store i32 8, i32* %760, align 8
  %761 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %762 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %761, i32 0, i32 5
  %763 = load i32, i32* %762, align 4
  %764 = load i32, i32* @RF_ERROR, align 4
  %765 = and i32 %763, %764
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %770

767:                                              ; preds = %758
  %768 = load %struct.connection*, %struct.connection** %3, align 8
  %769 = getelementptr inbounds %struct.connection, %struct.connection* %768, i32 0, i32 1
  store i32 138, i32* %769, align 8
  br label %891

770:                                              ; preds = %758
  br label %771

771:                                              ; preds = %770, %752
  %772 = load i8*, i8** %5, align 8
  %773 = load i8, i8* %772, align 1
  %774 = sext i8 %773 to i32
  %775 = icmp ne i32 %774, 10
  br i1 %775, label %776, label %784

776:                                              ; preds = %771
  %777 = load i32, i32* @RF_ERROR, align 4
  %778 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %779 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %778, i32 0, i32 5
  %780 = load i32, i32* %779, align 4
  %781 = or i32 %780, %777
  store i32 %781, i32* %779, align 4
  %782 = load %struct.connection*, %struct.connection** %3, align 8
  %783 = getelementptr inbounds %struct.connection, %struct.connection* %782, i32 0, i32 1
  store i32 131, i32* %783, align 8
  br label %891

784:                                              ; preds = %771
  %785 = load i8*, i8** %5, align 8
  %786 = getelementptr inbounds i8, i8* %785, i32 1
  store i8* %786, i8** %5, align 8
  %787 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %788 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %787, i32 0, i32 7
  %789 = load i64, i64* %788, align 8
  %790 = add nsw i64 %789, 1
  store i64 %790, i64* %788, align 8
  %791 = load %struct.connection*, %struct.connection** %3, align 8
  %792 = getelementptr inbounds %struct.connection, %struct.connection* %791, i32 0, i32 1
  store i32 137, i32* %792, align 8
  br label %793

793:                                              ; preds = %54, %784
  %794 = load i8*, i8** %5, align 8
  %795 = load i8*, i8** %7, align 8
  %796 = icmp eq i8* %794, %795
  br i1 %796, label %797, label %798

797:                                              ; preds = %793
  br label %891

798:                                              ; preds = %793
  %799 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %800 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %799, i32 0, i32 9
  %801 = load i64, i64* %800, align 8
  %802 = icmp ne i64 %801, 0
  br i1 %802, label %809, label %803

803:                                              ; preds = %798
  %804 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %805 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %804, i32 0, i32 7
  %806 = load i64, i64* %805, align 8
  %807 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %808 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %807, i32 0, i32 9
  store i64 %806, i64* %808, align 8
  br label %809

809:                                              ; preds = %803, %798
  %810 = load i8*, i8** %5, align 8
  %811 = load i8, i8* %810, align 1
  %812 = sext i8 %811 to i32
  %813 = icmp eq i32 %812, 13
  br i1 %813, label %814, label %823

814:                                              ; preds = %809
  %815 = load i8*, i8** %5, align 8
  %816 = getelementptr inbounds i8, i8* %815, i32 1
  store i8* %816, i8** %5, align 8
  %817 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %818 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %817, i32 0, i32 7
  %819 = load i64, i64* %818, align 8
  %820 = add nsw i64 %819, 1
  store i64 %820, i64* %818, align 8
  %821 = load %struct.connection*, %struct.connection** %3, align 8
  %822 = getelementptr inbounds %struct.connection, %struct.connection* %821, i32 0, i32 1
  store i32 129, i32* %822, align 8
  br label %891

823:                                              ; preds = %809
  %824 = load i8*, i8** %5, align 8
  %825 = load i8, i8* %824, align 1
  %826 = sext i8 %825 to i32
  %827 = icmp eq i32 %826, 10
  br i1 %827, label %828, label %831

828:                                              ; preds = %823
  %829 = load %struct.connection*, %struct.connection** %3, align 8
  %830 = getelementptr inbounds %struct.connection, %struct.connection* %829, i32 0, i32 1
  store i32 129, i32* %830, align 8
  br label %891

831:                                              ; preds = %823
  %832 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %833 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %832, i32 0, i32 5
  %834 = load i32, i32* %833, align 4
  %835 = load i32, i32* @RF_ERROR, align 4
  %836 = and i32 %834, %835
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %841

838:                                              ; preds = %831
  %839 = load %struct.connection*, %struct.connection** %3, align 8
  %840 = getelementptr inbounds %struct.connection, %struct.connection* %839, i32 0, i32 1
  store i32 131, i32* %840, align 8
  br label %846

841:                                              ; preds = %831
  %842 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %843 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %842, i32 0, i32 2
  store i32 0, i32* %843, align 8
  %844 = load %struct.connection*, %struct.connection** %3, align 8
  %845 = getelementptr inbounds %struct.connection, %struct.connection* %844, i32 0, i32 1
  store i32 135, i32* %845, align 8
  br label %846

846:                                              ; preds = %841, %838
  br label %891

847:                                              ; preds = %54
  %848 = load i8*, i8** %5, align 8
  %849 = load i8*, i8** %7, align 8
  %850 = icmp eq i8* %848, %849
  br i1 %850, label %851, label %852

851:                                              ; preds = %847
  br label %891

852:                                              ; preds = %847
  %853 = load i8*, i8** %5, align 8
  %854 = load i8, i8* %853, align 1
  %855 = sext i8 %854 to i32
  %856 = icmp ne i32 %855, 10
  br i1 %856, label %857, label %860

857:                                              ; preds = %852
  %858 = load %struct.connection*, %struct.connection** %3, align 8
  %859 = getelementptr inbounds %struct.connection, %struct.connection* %858, i32 0, i32 1
  store i32 138, i32* %859, align 8
  br label %891

860:                                              ; preds = %852
  %861 = load i8*, i8** %5, align 8
  %862 = getelementptr inbounds i8, i8* %861, i32 1
  store i8* %862, i8** %5, align 8
  %863 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %864 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %863, i32 0, i32 7
  %865 = load i64, i64* %864, align 8
  %866 = add nsw i64 %865, 1
  store i64 %866, i64* %864, align 8
  %867 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %868 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %867, i32 0, i32 9
  %869 = load i64, i64* %868, align 8
  %870 = icmp ne i64 %869, 0
  br i1 %870, label %877, label %871

871:                                              ; preds = %860
  %872 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %873 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %872, i32 0, i32 7
  %874 = load i64, i64* %873, align 8
  %875 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %876 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %875, i32 0, i32 9
  store i64 %874, i64* %876, align 8
  br label %877

877:                                              ; preds = %871, %860
  %878 = load %struct.connection*, %struct.connection** %3, align 8
  %879 = getelementptr inbounds %struct.connection, %struct.connection* %878, i32 0, i32 1
  store i32 140, i32* %879, align 8
  br label %880

880:                                              ; preds = %54, %877
  br label %891

881:                                              ; preds = %54
  %882 = load i32, i32* @RF_ERROR, align 4
  %883 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %884 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %883, i32 0, i32 5
  %885 = load i32, i32* %884, align 4
  %886 = or i32 %885, %882
  store i32 %886, i32* %884, align 4
  %887 = load %struct.connection*, %struct.connection** %3, align 8
  %888 = getelementptr inbounds %struct.connection, %struct.connection* %887, i32 0, i32 1
  store i32 140, i32* %888, align 8
  br label %891

889:                                              ; preds = %54
  %890 = call i32 @assert(i32 0)
  br label %891

891:                                              ; preds = %889, %881, %880, %857, %851, %846, %828, %814, %797, %776, %767, %751, %731, %723, %716, %677, %658, %585, %503, %497, %490, %444, %380, %374, %367, %313, %115, %108
  br label %43

892:                                              ; preds = %52
  %893 = load i8*, i8** %5, align 8
  %894 = load i8*, i8** %6, align 8
  %895 = ptrtoint i8* %893 to i64
  %896 = ptrtoint i8* %894 to i64
  %897 = sub i64 %895, %896
  %898 = trunc i64 %897 to i32
  store i32 %898, i32* %8, align 4
  %899 = load %struct.connection*, %struct.connection** %3, align 8
  %900 = getelementptr inbounds %struct.connection, %struct.connection* %899, i32 0, i32 3
  %901 = load i32, i32* %8, align 4
  %902 = call i32 @nbit_advance(i32* %900, i32 %901)
  %903 = load %struct.connection*, %struct.connection** %3, align 8
  %904 = getelementptr inbounds %struct.connection, %struct.connection* %903, i32 0, i32 1
  %905 = load i32, i32* %904, align 8
  %906 = icmp eq i32 %905, 140
  br i1 %906, label %907, label %1095

907:                                              ; preds = %892
  %908 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %909 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %908, i32 0, i32 7
  %910 = load i64, i64* %909, align 8
  %911 = load i64, i64* @MAX_HTTP_HEADER_SIZE, align 8
  %912 = icmp sge i64 %910, %911
  br i1 %912, label %913, label %919

913:                                              ; preds = %907
  %914 = load i32, i32* @RF_ERROR, align 4
  %915 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %916 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %915, i32 0, i32 5
  %917 = load i32, i32* %916, align 4
  %918 = or i32 %917, %914
  store i32 %918, i32* %916, align 4
  br label %919

919:                                              ; preds = %913, %907
  %920 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %921 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %920, i32 0, i32 5
  %922 = load i32, i32* %921, align 4
  %923 = load i32, i32* @RF_ERROR, align 4
  %924 = and i32 %922, %923
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %931

926:                                              ; preds = %919
  %927 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %928 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %927, i32 0, i32 0
  store i32 -1, i32* %928, align 8
  %929 = load i32, i32* @http_bad_response_headers, align 4
  %930 = add nsw i32 %929, 1
  store i32 %930, i32* @http_bad_response_headers, align 4
  br label %931

931:                                              ; preds = %926, %919
  %932 = load i64, i64* @conn_running, align 8
  %933 = load %struct.connection*, %struct.connection** %3, align 8
  %934 = getelementptr inbounds %struct.connection, %struct.connection* %933, i32 0, i32 0
  store i64 %932, i64* %934, align 8
  %935 = load %struct.connection*, %struct.connection** %3, align 8
  %936 = call %struct.TYPE_2__* @HTC_FUNC(%struct.connection* %935)
  %937 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %936, i32 0, i32 0
  %938 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %937, align 8
  %939 = icmp ne i32 (%struct.connection*, i32)* %938, null
  br i1 %939, label %944, label %940

940:                                              ; preds = %931
  %941 = load %struct.connection*, %struct.connection** %3, align 8
  %942 = call %struct.TYPE_2__* @HTC_FUNC(%struct.connection* %941)
  %943 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %942, i32 0, i32 0
  store i32 (%struct.connection*, i32)* @htc_default_execute, i32 (%struct.connection*, i32)** %943, align 8
  br label %944

944:                                              ; preds = %940, %931
  %945 = load %struct.connection*, %struct.connection** %3, align 8
  %946 = call %struct.TYPE_2__* @HTC_FUNC(%struct.connection* %945)
  %947 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %946, i32 0, i32 0
  %948 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %947, align 8
  %949 = load %struct.connection*, %struct.connection** %3, align 8
  %950 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %951 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %950, i32 0, i32 0
  %952 = load i32, i32* %951, align 8
  %953 = call i32 %948(%struct.connection* %949, i32 %952)
  store i32 %953, i32* %11, align 4
  %954 = load i32, i32* @outbound_http_queries, align 4
  %955 = add nsw i32 %954, 1
  store i32 %955, i32* @outbound_http_queries, align 4
  %956 = load i32, i32* %11, align 4
  %957 = icmp sgt i32 %956, 0
  br i1 %957, label %958, label %963

958:                                              ; preds = %944
  %959 = load i64, i64* @conn_reading_answer, align 8
  %960 = load %struct.connection*, %struct.connection** %3, align 8
  %961 = getelementptr inbounds %struct.connection, %struct.connection* %960, i32 0, i32 0
  store i64 %959, i64* %961, align 8
  %962 = load i32, i32* %11, align 4
  store i32 %962, i32* %2, align 4
  br label %1111

963:                                              ; preds = %944
  %964 = load i32, i32* %11, align 4
  %965 = icmp slt i32 %964, 0
  br i1 %965, label %966, label %1029

966:                                              ; preds = %963
  %967 = load i32, i32* %11, align 4
  %968 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %969 = icmp eq i32 %967, %968
  br i1 %969, label %970, label %1021

970:                                              ; preds = %966
  %971 = load %struct.connection*, %struct.connection** %3, align 8
  %972 = getelementptr inbounds %struct.connection, %struct.connection* %971, i32 0, i32 2
  %973 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %974 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %973, i32 0, i32 7
  %975 = load i64, i64* %974, align 8
  %976 = call i32 @advance_skip_read_ptr(i32* %972, i64 %975)
  %977 = sext i32 %976 to i64
  %978 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %979 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %978, i32 0, i32 7
  %980 = load i64, i64* %979, align 8
  %981 = icmp eq i64 %977, %980
  %982 = zext i1 %981 to i32
  %983 = call i32 @assert(i32 %982)
  %984 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %985 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %984, i32 0, i32 1
  %986 = load i32, i32* %985, align 4
  %987 = icmp sgt i32 %986, 0
  br i1 %987, label %988, label %1020

988:                                              ; preds = %970
  %989 = load %struct.connection*, %struct.connection** %3, align 8
  %990 = getelementptr inbounds %struct.connection, %struct.connection* %989, i32 0, i32 2
  %991 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %992 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %991, i32 0, i32 1
  %993 = load i32, i32* %992, align 4
  %994 = sext i32 %993 to i64
  %995 = call i32 @advance_skip_read_ptr(i32* %990, i64 %994)
  store i32 %995, i32* %8, align 4
  %996 = load i32, i32* %8, align 4
  %997 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %998 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %997, i32 0, i32 1
  %999 = load i32, i32* %998, align 4
  %1000 = icmp slt i32 %996, %999
  br i1 %1000, label %1001, label %1019

1001:                                             ; preds = %988
  %1002 = load %struct.connection*, %struct.connection** %3, align 8
  %1003 = getelementptr inbounds %struct.connection, %struct.connection* %1002, i32 0, i32 1
  store i32 130, i32* %1003, align 8
  %1004 = load %struct.connection*, %struct.connection** %3, align 8
  %1005 = getelementptr inbounds %struct.connection, %struct.connection* %1004, i32 0, i32 0
  %1006 = load i64, i64* %1005, align 8
  %1007 = load i64, i64* @conn_running, align 8
  %1008 = icmp eq i64 %1006, %1007
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %1001
  %1010 = load i64, i64* @conn_wait_answer, align 8
  %1011 = load %struct.connection*, %struct.connection** %3, align 8
  %1012 = getelementptr inbounds %struct.connection, %struct.connection* %1011, i32 0, i32 0
  store i64 %1010, i64* %1012, align 8
  br label %1013

1013:                                             ; preds = %1009, %1001
  %1014 = load i32, i32* %8, align 4
  %1015 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %1016 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %1015, i32 0, i32 1
  %1017 = load i32, i32* %1016, align 4
  %1018 = sub nsw i32 %1014, %1017
  store i32 %1018, i32* %2, align 4
  br label %1111

1019:                                             ; preds = %988
  br label %1020

1020:                                             ; preds = %1019, %970
  br label %1028

1021:                                             ; preds = %966
  %1022 = load i32, i32* @RF_ERROR, align 4
  %1023 = xor i32 %1022, -1
  %1024 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %1025 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %1024, i32 0, i32 5
  %1026 = load i32, i32* %1025, align 4
  %1027 = and i32 %1026, %1023
  store i32 %1027, i32* %1025, align 4
  br label %1028

1028:                                             ; preds = %1021, %1020
  br label %1029

1029:                                             ; preds = %1028, %963
  br label %1030

1030:                                             ; preds = %1029
  %1031 = load %struct.connection*, %struct.connection** %3, align 8
  %1032 = getelementptr inbounds %struct.connection, %struct.connection* %1031, i32 0, i32 0
  %1033 = load i64, i64* %1032, align 8
  %1034 = load i64, i64* @conn_running, align 8
  %1035 = icmp eq i64 %1033, %1034
  br i1 %1035, label %1036, label %1040

1036:                                             ; preds = %1030
  %1037 = load i64, i64* @conn_wait_answer, align 8
  %1038 = load %struct.connection*, %struct.connection** %3, align 8
  %1039 = getelementptr inbounds %struct.connection, %struct.connection* %1038, i32 0, i32 0
  store i64 %1037, i64* %1039, align 8
  br label %1040

1040:                                             ; preds = %1036, %1030
  %1041 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %1042 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %1041, i32 0, i32 5
  %1043 = load i32, i32* %1042, align 4
  %1044 = load i32, i32* @RF_ERROR, align 4
  %1045 = and i32 %1043, %1044
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1061

1047:                                             ; preds = %1040
  %1048 = load %struct.connection*, %struct.connection** %3, align 8
  %1049 = getelementptr inbounds %struct.connection, %struct.connection* %1048, i32 0, i32 0
  %1050 = load i64, i64* %1049, align 8
  %1051 = load i64, i64* @conn_wait_answer, align 8
  %1052 = icmp eq i64 %1050, %1051
  %1053 = zext i1 %1052 to i32
  %1054 = call i32 @assert(i32 %1053)
  %1055 = load i32, i32* @RF_KEEPALIVE, align 4
  %1056 = xor i32 %1055, -1
  %1057 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %1058 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %1057, i32 0, i32 5
  %1059 = load i32, i32* %1058, align 4
  %1060 = and i32 %1059, %1056
  store i32 %1060, i32* %1058, align 4
  br label %1061

1061:                                             ; preds = %1047, %1040
  %1062 = load %struct.connection*, %struct.connection** %3, align 8
  %1063 = getelementptr inbounds %struct.connection, %struct.connection* %1062, i32 0, i32 0
  %1064 = load i64, i64* %1063, align 8
  %1065 = load i64, i64* @conn_wait_answer, align 8
  %1066 = icmp eq i64 %1064, %1065
  br i1 %1066, label %1067, label %1080

1067:                                             ; preds = %1061
  %1068 = load %struct.htc_data*, %struct.htc_data** %4, align 8
  %1069 = getelementptr inbounds %struct.htc_data, %struct.htc_data* %1068, i32 0, i32 5
  %1070 = load i32, i32* %1069, align 4
  %1071 = load i32, i32* @RF_KEEPALIVE, align 4
  %1072 = and i32 %1070, %1071
  %1073 = icmp ne i32 %1072, 0
  br i1 %1073, label %1080, label %1074

1074:                                             ; preds = %1067
  %1075 = load i64, i64* @conn_write_close, align 8
  %1076 = load %struct.connection*, %struct.connection** %3, align 8
  %1077 = getelementptr inbounds %struct.connection, %struct.connection* %1076, i32 0, i32 0
  store i64 %1075, i64* %1077, align 8
  %1078 = load %struct.connection*, %struct.connection** %3, align 8
  %1079 = getelementptr inbounds %struct.connection, %struct.connection* %1078, i32 0, i32 1
  store i32 -1, i32* %1079, align 8
  store i32 0, i32* %2, align 4
  br label %1111

1080:                                             ; preds = %1067, %1061
  %1081 = load %struct.connection*, %struct.connection** %3, align 8
  %1082 = getelementptr inbounds %struct.connection, %struct.connection* %1081, i32 0, i32 0
  %1083 = load i64, i64* %1082, align 8
  %1084 = load i64, i64* @conn_wait_aio, align 8
  %1085 = icmp ne i64 %1083, %1084
  br i1 %1085, label %1086, label %1089

1086:                                             ; preds = %1080
  %1087 = load %struct.connection*, %struct.connection** %3, align 8
  %1088 = getelementptr inbounds %struct.connection, %struct.connection* %1087, i32 0, i32 1
  store i32 130, i32* %1088, align 8
  br label %1089

1089:                                             ; preds = %1086, %1080
  %1090 = load %struct.connection*, %struct.connection** %3, align 8
  %1091 = getelementptr inbounds %struct.connection, %struct.connection* %1090, i32 0, i32 3
  %1092 = load %struct.connection*, %struct.connection** %3, align 8
  %1093 = getelementptr inbounds %struct.connection, %struct.connection* %1092, i32 0, i32 2
  %1094 = call i32 @nbit_set(i32* %1091, i32* %1093)
  br label %1095

1095:                                             ; preds = %1089, %892
  br label %14

1096:                                             ; preds = %41, %26
  %1097 = load %struct.connection*, %struct.connection** %3, align 8
  %1098 = getelementptr inbounds %struct.connection, %struct.connection* %1097, i32 0, i32 0
  %1099 = load i64, i64* %1098, align 8
  %1100 = load i64, i64* @conn_reading_answer, align 8
  %1101 = icmp eq i64 %1099, %1100
  br i1 %1101, label %1108, label %1102

1102:                                             ; preds = %1096
  %1103 = load %struct.connection*, %struct.connection** %3, align 8
  %1104 = getelementptr inbounds %struct.connection, %struct.connection* %1103, i32 0, i32 0
  %1105 = load i64, i64* %1104, align 8
  %1106 = load i64, i64* @conn_wait_aio, align 8
  %1107 = icmp eq i64 %1105, %1106
  br i1 %1107, label %1108, label %1110

1108:                                             ; preds = %1102, %1096
  %1109 = load i32, i32* @NEED_MORE_BYTES, align 4
  store i32 %1109, i32* %2, align 4
  br label %1111

1110:                                             ; preds = %1102
  store i32 0, i32* %2, align 4
  br label %1111

1111:                                             ; preds = %1110, %1108, %1074, %1013, %958
  %1112 = load i32, i32* %2, align 4
  ret i32 %1112
}

declare dso_local %struct.htc_data* @HTC_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_ready_bytes(i32*) #1

declare dso_local i8* @nbit_get_ptr(i32*) #1

declare dso_local i32 @memset(%struct.htc_data*, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @nbit_advance(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @HTC_FUNC(%struct.connection*) #1

declare dso_local i32 @htc_default_execute(%struct.connection*, i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i64) #1

declare dso_local i32 @nbit_set(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
