; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rpcc_data = type { i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 (%struct.connection*)*, i32 (%struct.connection*, i64, i32)* }

@conn_reading_answer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"error while parsing packet: bad packet length %d\0A\00", align 1
@conn_error = common dso_local global i64 0, align 8
@rpc_disable_crc32_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"error while parsing packet: crc32 = %08x != %08x\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"received packet from connection %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"error while parsing packet: got packet num %d, expected %d\0A\00", align 1
@conn_running = common dso_local global i64 0, align 8
@RPC_PING = common dso_local global i64 0, align 8
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = call %struct.rpcc_data* @RPCC_DATA(%struct.connection* %11)
  store %struct.rpcc_data* %12, %struct.rpcc_data** %4, align 8
  br label %13

13:                                               ; preds = %1, %87, %443
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 4
  %16 = call i32 @nbit_total_ready_bytes(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %449

20:                                               ; preds = %13
  %21 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %22 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** @conn_reading_answer, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 4, %33
  store i32 %34, i32* %2, align 4
  br label %450

35:                                               ; preds = %25
  %36 = load %struct.connection*, %struct.connection** %3, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 4
  %38 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %39 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %38, i32 0, i32 0
  %40 = call i32 @nbit_read_in(i32* %37, i32* %39, i32 4)
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %47 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ule i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %35
  %51 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %52 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 3
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %50
  %57 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %58 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ugt i32 %59, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %56
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65, %50, %35
  %72 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %73 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* @conn_error, align 8
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.connection*, %struct.connection** %3, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 8
  store i32 0, i32* %2, align 4
  br label %450

81:                                               ; preds = %65, %56
  br label %82

82:                                               ; preds = %81, %20
  %83 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %84 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load %struct.connection*, %struct.connection** %3, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 3
  %90 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %89, i32 4)
  %91 = icmp eq i32 %90, 4
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %95 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.connection*, %struct.connection** %3, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 4
  %98 = load %struct.connection*, %struct.connection** %3, align 8
  %99 = getelementptr inbounds %struct.connection, %struct.connection* %98, i32 0, i32 3
  %100 = call i32 @nbit_set(i32* %97, %struct.TYPE_4__* %99)
  br label %13

101:                                              ; preds = %82
  %102 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %103 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ult i32 %104, 16
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %108 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* @conn_error, align 8
  %112 = load %struct.connection*, %struct.connection** %3, align 8
  %113 = getelementptr inbounds %struct.connection, %struct.connection* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.connection*, %struct.connection** %3, align 8
  %115 = getelementptr inbounds %struct.connection, %struct.connection* %114, i32 0, i32 1
  store i32 -1, i32* %115, align 8
  store i32 0, i32* %2, align 4
  br label %450

116:                                              ; preds = %101
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 4
  %119 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %120 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load i8*, i8** @conn_reading_answer, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.connection*, %struct.connection** %3, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %129 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sub i32 %130, %131
  %133 = sub i32 %132, 4
  store i32 %133, i32* %2, align 4
  br label %450

134:                                              ; preds = %116
  %135 = load %struct.connection*, %struct.connection** %3, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 4
  %137 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %138 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %137, i32 0, i32 1
  %139 = call i32 @nbit_read_in(i32* %136, i32* %138, i32 8)
  %140 = icmp eq i32 %139, 8
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* @rpc_disable_crc32_check, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %134
  %146 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %147 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %146, i32 0, i32 0
  %148 = bitcast i32* %147 to i8*
  %149 = call i32 @crc32_partial(i8* %148, i32 12, i32 -1)
  br label %151

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150, %145
  %152 = phi i32 [ %149, %145 ], [ 0, %150 ]
  store i32 %152, i32* %6, align 4
  %153 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %154 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub i32 %155, 16
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %184, %151
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %157
  %161 = load %struct.connection*, %struct.connection** %3, align 8
  %162 = getelementptr inbounds %struct.connection, %struct.connection* %161, i32 0, i32 4
  %163 = call i32 @nbit_ready_bytes(i32* %162)
  store i32 %163, i32* %7, align 4
  %164 = load %struct.connection*, %struct.connection** %3, align 8
  %165 = getelementptr inbounds %struct.connection, %struct.connection* %164, i32 0, i32 4
  %166 = call i8* @nbit_get_ptr(i32* %165)
  store i8* %166, i8** %8, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %170, %160
  %173 = load i32, i32* %7, align 4
  %174 = icmp sgt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i32, i32* @rpc_disable_crc32_check, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %172
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @crc32_partial(i8* %180, i32 %181, i32 %182)
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %179, %172
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %5, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %5, align 4
  %188 = load %struct.connection*, %struct.connection** %3, align 8
  %189 = getelementptr inbounds %struct.connection, %struct.connection* %188, i32 0, i32 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @nbit_advance(i32* %189, i32 %190)
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  br label %157

196:                                              ; preds = %157
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load %struct.connection*, %struct.connection** %3, align 8
  %203 = getelementptr inbounds %struct.connection, %struct.connection* %202, i32 0, i32 4
  %204 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %205 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %204, i32 0, i32 2
  %206 = call i32 @nbit_read_in(i32* %203, i32* %205, i32 4)
  %207 = icmp eq i32 %206, 4
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load i32, i32* %6, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %213 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %211, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %196
  %217 = load i32, i32* @rpc_disable_crc32_check, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %6, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %223 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %221, i32 %224)
  %226 = load i64, i64* @conn_error, align 8
  %227 = load %struct.connection*, %struct.connection** %3, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  %229 = load %struct.connection*, %struct.connection** %3, align 8
  %230 = getelementptr inbounds %struct.connection, %struct.connection* %229, i32 0, i32 1
  store i32 -1, i32* %230, align 8
  store i32 0, i32* %2, align 4
  br label %450

231:                                              ; preds = %216, %196
  %232 = load i32, i32* @verbosity, align 4
  %233 = icmp sgt i32 %232, 2
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i32, i32* @stderr, align 4
  %236 = load %struct.connection*, %struct.connection** %3, align 8
  %237 = getelementptr inbounds %struct.connection, %struct.connection* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @fprintf(i32 %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load %struct.connection*, %struct.connection** %3, align 8
  %241 = call i32 @dump_next_rpc_packet(%struct.connection* %240)
  br label %242

242:                                              ; preds = %234, %231
  %243 = load %struct.connection*, %struct.connection** %3, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %247 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %248 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %251 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %249, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %242
  %255 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %256 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %259 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %257, i32 %260)
  %262 = load i64, i64* @conn_error, align 8
  %263 = load %struct.connection*, %struct.connection** %3, align 8
  %264 = getelementptr inbounds %struct.connection, %struct.connection* %263, i32 0, i32 0
  store i64 %262, i64* %264, align 8
  %265 = load %struct.connection*, %struct.connection** %3, align 8
  %266 = getelementptr inbounds %struct.connection, %struct.connection* %265, i32 0, i32 1
  store i32 -1, i32* %266, align 8
  store i32 0, i32* %2, align 4
  br label %450

267:                                              ; preds = %242
  %268 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %269 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ult i32 %270, 0
  br i1 %271, label %272, label %328

272:                                              ; preds = %267
  %273 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %274 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, -2
  br i1 %276, label %277, label %289

277:                                              ; preds = %272
  %278 = load i64, i64* @conn_running, align 8
  %279 = load %struct.connection*, %struct.connection** %3, align 8
  %280 = getelementptr inbounds %struct.connection, %struct.connection* %279, i32 0, i32 0
  store i64 %278, i64* %280, align 8
  %281 = load %struct.connection*, %struct.connection** %3, align 8
  %282 = call i32 @rpcc_process_nonce_packet(%struct.connection* %281)
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %10, align 4
  %284 = icmp sge i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load %struct.connection*, %struct.connection** %3, align 8
  %287 = call i32 @rpcc_send_handshake_packet(%struct.connection* %286)
  store i32 %287, i32* %10, align 4
  br label %288

288:                                              ; preds = %285, %277
  br label %317

289:                                              ; preds = %272
  %290 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %291 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %316

294:                                              ; preds = %289
  %295 = load i64, i64* @conn_running, align 8
  %296 = load %struct.connection*, %struct.connection** %3, align 8
  %297 = getelementptr inbounds %struct.connection, %struct.connection* %296, i32 0, i32 0
  store i64 %295, i64* %297, align 8
  %298 = load %struct.connection*, %struct.connection** %3, align 8
  %299 = call i32 @rpcc_process_handshake_packet(%struct.connection* %298)
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = icmp sge i32 %300, 0
  br i1 %301, label %302, label %315

302:                                              ; preds = %294
  %303 = load %struct.connection*, %struct.connection** %3, align 8
  %304 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %303)
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %305, align 8
  %307 = icmp ne i32 (%struct.connection*)* %306, null
  br i1 %307, label %308, label %315

308:                                              ; preds = %302
  %309 = load %struct.connection*, %struct.connection** %3, align 8
  %310 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %309)
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %311, align 8
  %313 = load %struct.connection*, %struct.connection** %3, align 8
  %314 = call i32 %312(%struct.connection* %313)
  store i32 %314, i32* %10, align 4
  br label %315

315:                                              ; preds = %308, %302, %294
  br label %316

316:                                              ; preds = %315, %289
  br label %317

317:                                              ; preds = %316, %288
  %318 = load i32, i32* %10, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %317
  %321 = load i64, i64* @conn_error, align 8
  %322 = load %struct.connection*, %struct.connection** %3, align 8
  %323 = getelementptr inbounds %struct.connection, %struct.connection* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  %324 = load i32, i32* %10, align 4
  %325 = load %struct.connection*, %struct.connection** %3, align 8
  %326 = getelementptr inbounds %struct.connection, %struct.connection* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 8
  store i32 0, i32* %2, align 4
  br label %450

327:                                              ; preds = %317
  br label %360

328:                                              ; preds = %267
  %329 = load i64, i64* @conn_running, align 8
  %330 = load %struct.connection*, %struct.connection** %3, align 8
  %331 = getelementptr inbounds %struct.connection, %struct.connection* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  %332 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %333 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @RPC_PING, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %328
  %338 = load %struct.connection*, %struct.connection** %3, align 8
  %339 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %340 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %343 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @rpcc_default_execute(%struct.connection* %338, i64 %341, i32 %344)
  store i32 %345, i32* %10, align 4
  br label %359

346:                                              ; preds = %328
  %347 = load %struct.connection*, %struct.connection** %3, align 8
  %348 = call %struct.TYPE_5__* @RPCC_FUNC(%struct.connection* %347)
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 2
  %350 = load i32 (%struct.connection*, i64, i32)*, i32 (%struct.connection*, i64, i32)** %349, align 8
  %351 = load %struct.connection*, %struct.connection** %3, align 8
  %352 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %353 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %356 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 %350(%struct.connection* %351, i64 %354, i32 %357)
  store i32 %358, i32* %10, align 4
  br label %359

359:                                              ; preds = %346, %337
  br label %360

360:                                              ; preds = %359, %327
  br label %361

361:                                              ; preds = %360
  %362 = load %struct.connection*, %struct.connection** %3, align 8
  %363 = getelementptr inbounds %struct.connection, %struct.connection* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @conn_error, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %376

367:                                              ; preds = %361
  %368 = load %struct.connection*, %struct.connection** %3, align 8
  %369 = getelementptr inbounds %struct.connection, %struct.connection* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %367
  %373 = load %struct.connection*, %struct.connection** %3, align 8
  %374 = getelementptr inbounds %struct.connection, %struct.connection* %373, i32 0, i32 1
  store i32 -2, i32* %374, align 8
  br label %375

375:                                              ; preds = %372, %367
  store i32 0, i32* %2, align 4
  br label %450

376:                                              ; preds = %361
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %399

380:                                              ; preds = %376
  %381 = load i32, i32* %9, align 4
  %382 = load %struct.connection*, %struct.connection** %3, align 8
  %383 = getelementptr inbounds %struct.connection, %struct.connection* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp eq i32 %381, %385
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load %struct.connection*, %struct.connection** %3, align 8
  %390 = getelementptr inbounds %struct.connection, %struct.connection* %389, i32 0, i32 3
  %391 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %392 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %390, i32 %393)
  %395 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %396 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %424

399:                                              ; preds = %376
  %400 = load i32, i32* %9, align 4
  %401 = load %struct.connection*, %struct.connection** %3, align 8
  %402 = getelementptr inbounds %struct.connection, %struct.connection* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %400, %404
  br i1 %405, label %406, label %423

406:                                              ; preds = %399
  %407 = load i32, i32* %9, align 4
  %408 = load %struct.connection*, %struct.connection** %3, align 8
  %409 = getelementptr inbounds %struct.connection, %struct.connection* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %413 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = add i32 %411, %414
  %416 = icmp eq i32 %407, %415
  %417 = zext i1 %416 to i32
  %418 = call i32 @assert(i32 %417)
  %419 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %420 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %406, %399
  br label %424

424:                                              ; preds = %423, %380
  %425 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %426 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %425, i32 0, i32 0
  store i32 0, i32* %426, align 8
  %427 = load %struct.connection*, %struct.connection** %3, align 8
  %428 = getelementptr inbounds %struct.connection, %struct.connection* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @conn_running, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %436

432:                                              ; preds = %424
  %433 = load i64, i64* @conn_wait_answer, align 8
  %434 = load %struct.connection*, %struct.connection** %3, align 8
  %435 = getelementptr inbounds %struct.connection, %struct.connection* %434, i32 0, i32 0
  store i64 %433, i64* %435, align 8
  br label %436

436:                                              ; preds = %432, %424
  %437 = load %struct.connection*, %struct.connection** %3, align 8
  %438 = getelementptr inbounds %struct.connection, %struct.connection* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @conn_wait_answer, align 8
  %441 = icmp ne i64 %439, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %436
  br label %449

443:                                              ; preds = %436
  %444 = load %struct.connection*, %struct.connection** %3, align 8
  %445 = getelementptr inbounds %struct.connection, %struct.connection* %444, i32 0, i32 4
  %446 = load %struct.connection*, %struct.connection** %3, align 8
  %447 = getelementptr inbounds %struct.connection, %struct.connection* %446, i32 0, i32 3
  %448 = call i32 @nbit_set(i32* %445, %struct.TYPE_4__* %447)
  br label %13

449:                                              ; preds = %442, %19
  store i32 0, i32* %2, align 4
  br label %450

450:                                              ; preds = %449, %375, %320, %254, %219, %123, %106, %71, %28
  %451 = load i32, i32* %2, align 4
  ret i32 %451
}

declare dso_local %struct.rpcc_data* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_total_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @RPCC_FUNC(%struct.connection*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @advance_skip_read_ptr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @crc32_partial(i8*, i32, i32) #1

declare dso_local i32 @nbit_ready_bytes(i32*) #1

declare dso_local i8* @nbit_get_ptr(i32*) #1

declare dso_local i32 @nbit_advance(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @dump_next_rpc_packet(%struct.connection*) #1

declare dso_local i32 @rpcc_process_nonce_packet(%struct.connection*) #1

declare dso_local i32 @rpcc_send_handshake_packet(%struct.connection*) #1

declare dso_local i32 @rpcc_process_handshake_packet(%struct.connection*) #1

declare dso_local i32 @rpcc_default_execute(%struct.connection*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
