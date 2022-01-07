; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_compact_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_compact_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rpcc_data = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.connection*, i32, i32)* }

@conn_reading_answer = common dso_local global i8* null, align 8
@conn_error = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"error while parsing compact packet: got length %d in overlong encoding\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"error while parsing compact packet: got zero packet length\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"error while parsing packet: bad packet length %d\0A\00", align 1
@conn_running = common dso_local global i64 0, align 8
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_compact_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = call %struct.rpcc_data* @RPCC_DATA(%struct.connection* %8)
  store %struct.rpcc_data* %9, %struct.rpcc_data** %4, align 8
  br label %10

10:                                               ; preds = %1, %261
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 3
  %13 = call i32 @nbit_total_ready_bytes(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %275

17:                                               ; preds = %10
  %18 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %19 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %132, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8*, i8** @conn_reading_answer, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 4, %30
  store i32 %31, i32* %2, align 4
  br label %276

32:                                               ; preds = %22
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 3
  %35 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %36 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %35, i32 0, i32 0
  %37 = call i32 @nbit_read_in(i32* %34, i32* %36, i32 1)
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %44 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %32
  %49 = load i64, i64* @conn_error, align 8
  %50 = load %struct.connection*, %struct.connection** %3, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %276

54:                                               ; preds = %32
  %55 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %56 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 127
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 3
  %62 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %63 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %62, i32 0, i32 0
  %64 = call i32 @nbit_read_in(i32* %61, i32* %63, i32 3)
  %65 = icmp eq i32 %64, 3
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %69 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 127
  br i1 %71, label %72, label %82

72:                                               ; preds = %59
  %73 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %74 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* @conn_error, align 8
  %78 = load %struct.connection*, %struct.connection** %3, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.connection*, %struct.connection** %3, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %276

82:                                               ; preds = %59
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 3
  store i32 %84, i32* %5, align 4
  br label %98

85:                                               ; preds = %54
  %86 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %87 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i64, i64* @conn_error, align 8
  %93 = load %struct.connection*, %struct.connection** %3, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.connection*, %struct.connection** %3, align 8
  %96 = getelementptr inbounds %struct.connection, %struct.connection* %95, i32 0, i32 1
  store i32 -1, i32* %96, align 8
  store i32 0, i32* %2, align 4
  br label %276

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %100 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 1073741824
  store i32 %102, i32* %100, align 4
  %103 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %104 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 2
  store i32 %106, i32* %104, align 4
  %107 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %108 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.connection*, %struct.connection** %3, align 8
  %111 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %98
  %116 = load %struct.connection*, %struct.connection** %3, align 8
  %117 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %116)
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %123 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i64, i64* @conn_error, align 8
  %127 = load %struct.connection*, %struct.connection** %3, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.connection*, %struct.connection** %3, align 8
  %130 = getelementptr inbounds %struct.connection, %struct.connection* %129, i32 0, i32 1
  store i32 -1, i32* %130, align 8
  store i32 0, i32* %2, align 4
  br label %276

131:                                              ; preds = %115, %98
  br label %132

132:                                              ; preds = %131, %17
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %135 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i8*, i8** @conn_reading_answer, align 8
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.connection*, %struct.connection** %3, align 8
  %142 = getelementptr inbounds %struct.connection, %struct.connection* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %144 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %2, align 4
  br label %276

148:                                              ; preds = %132
  %149 = load %struct.connection*, %struct.connection** %3, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 3
  %151 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %152 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %151, i32 0, i32 2
  %153 = call i32 @nbit_read_in(i32* %150, i32* %152, i32 4)
  %154 = icmp eq i32 %153, 4
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %158 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sle i32 %159, 504
  br i1 %160, label %161, label %168

161:                                              ; preds = %148
  %162 = load %struct.connection*, %struct.connection** %3, align 8
  %163 = getelementptr inbounds %struct.connection, %struct.connection* %162, i32 0, i32 2
  %164 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %163, i32 1)
  %165 = icmp eq i32 %164, 1
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  br label %175

168:                                              ; preds = %148
  %169 = load %struct.connection*, %struct.connection** %3, align 8
  %170 = getelementptr inbounds %struct.connection, %struct.connection* %169, i32 0, i32 2
  %171 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %170, i32 4)
  %172 = icmp eq i32 %171, 4
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  br label %175

175:                                              ; preds = %168, %161
  %176 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %177 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %180 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load %struct.connection*, %struct.connection** %3, align 8
  %182 = getelementptr inbounds %struct.connection, %struct.connection* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %6, align 4
  %185 = load i64, i64* @conn_running, align 8
  %186 = load %struct.connection*, %struct.connection** %3, align 8
  %187 = getelementptr inbounds %struct.connection, %struct.connection* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.connection*, %struct.connection** %3, align 8
  %189 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %188)
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32 (%struct.connection*, i32, i32)*, i32 (%struct.connection*, i32, i32)** %190, align 8
  %192 = load %struct.connection*, %struct.connection** %3, align 8
  %193 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %194 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %197 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 %191(%struct.connection* %192, i32 %195, i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load %struct.connection*, %struct.connection** %3, align 8
  %201 = getelementptr inbounds %struct.connection, %struct.connection* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @conn_error, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %175
  %206 = load %struct.connection*, %struct.connection** %3, align 8
  %207 = getelementptr inbounds %struct.connection, %struct.connection* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = load %struct.connection*, %struct.connection** %3, align 8
  %212 = getelementptr inbounds %struct.connection, %struct.connection* %211, i32 0, i32 1
  store i32 -2, i32* %212, align 8
  br label %213

213:                                              ; preds = %210, %205
  store i32 0, i32* %2, align 4
  br label %276

214:                                              ; preds = %175
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %214
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.connection*, %struct.connection** %3, align 8
  %221 = getelementptr inbounds %struct.connection, %struct.connection* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %219, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load %struct.connection*, %struct.connection** %3, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 2
  %229 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %230 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %228, i32 %231)
  br label %246

233:                                              ; preds = %214
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.connection*, %struct.connection** %3, align 8
  %236 = getelementptr inbounds %struct.connection, %struct.connection* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %240 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %238, %241
  %243 = icmp eq i32 %234, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  br label %246

246:                                              ; preds = %233, %218
  %247 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %248 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  %251 = load %struct.connection*, %struct.connection** %3, align 8
  %252 = getelementptr inbounds %struct.connection, %struct.connection* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %246
  %256 = load %struct.connection*, %struct.connection** %3, align 8
  %257 = getelementptr inbounds %struct.connection, %struct.connection* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @conn_running, align 8
  %260 = icmp eq i64 %258, %259
  br label %261

261:                                              ; preds = %255, %246
  %262 = phi i1 [ false, %246 ], [ %260, %255 ]
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  %265 = load i64, i64* @conn_wait_answer, align 8
  %266 = load %struct.connection*, %struct.connection** %3, align 8
  %267 = getelementptr inbounds %struct.connection, %struct.connection* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  %268 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %269 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %268, i32 0, i32 0
  store i32 0, i32* %269, align 4
  %270 = load %struct.connection*, %struct.connection** %3, align 8
  %271 = getelementptr inbounds %struct.connection, %struct.connection* %270, i32 0, i32 3
  %272 = load %struct.connection*, %struct.connection** %3, align 8
  %273 = getelementptr inbounds %struct.connection, %struct.connection* %272, i32 0, i32 2
  %274 = call i32 @nbit_set(i32* %271, %struct.TYPE_4__* %273)
  br label %10

275:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %276

276:                                              ; preds = %275, %213, %138, %121, %90, %72, %48, %25
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local %struct.rpcc_data* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_total_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @RPCC_FUNC(%struct.connection*) #1

declare dso_local i32 @advance_skip_read_ptr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
