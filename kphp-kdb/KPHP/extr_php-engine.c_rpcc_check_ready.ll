; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_check_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, i64, i32, double, double }
%struct.TYPE_2__ = type { i32 }

@C_FAILED = common dso_local global i32 0, align 4
@conn_error = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@cr_failed = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"changing connection %d readiness from %d to %d [FAILED] lq=%.03f lr=%.03f now=%.03f\0A\00", align 1
@precise_now = common dso_local global double 0.000000e+00, align 8
@conn_running = common dso_local global i64 0, align 8
@cr_ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"changing connection %d readiness from %d to %d [OK] lq=%.03f lr=%.03f now=%.03f\0A\00", align 1
@RPC_CONNECT_TIMEOUT = common dso_local global double 0.000000e+00, align 8
@cr_notyet = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i64 0, align 8
@rpc_ping_interval = common dso_local global double 0.000000e+00, align 8
@RPC_FAIL_INTERVAL = common dso_local global double 0.000000e+00, align 8
@RPC_STOP_INTERVAL = common dso_local global double 0.000000e+00, align 8
@cr_stopped = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"changing connection %d readiness from %d to %d [STOPPED] lq=%.03f lr=%.03f now=%.03f\0A\00", align 1
@conn_wait_answer = common dso_local global i64 0, align 8
@conn_expect_query = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@cr_busy = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [83 x i8] c"changing connection %d readiness from %d to %d [BUSY] lq=%.03f lr=%.03f now=%.03f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_check_ready(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @C_FAILED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @conn_error, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @verbosity, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @cr_failed, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @cr_failed, align 8
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 4
  %36 = load double, double* %35, align 8
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 5
  %39 = load double, double* %38, align 8
  %40 = load double, double* @precise_now, align 8
  %41 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %32, i64 %33, double %36, double %39, double %40)
  br label %42

42:                                               ; preds = %25, %19, %16
  %43 = load i64, i64* @cr_failed, align 8
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = trunc i64 %43 to i32
  store i32 %46, i32* %2, align 4
  br label %323

47:                                               ; preds = %10
  %48 = load %struct.connection*, %struct.connection** %3, align 8
  %49 = call %struct.TYPE_2__* @RPCC_DATA(%struct.connection* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %123

53:                                               ; preds = %47
  %54 = load %struct.connection*, %struct.connection** %3, align 8
  %55 = call %struct.TYPE_2__* @RPCC_DATA(%struct.connection* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %96

59:                                               ; preds = %53
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @conn_running, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load i32, i32* @verbosity, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load %struct.connection*, %struct.connection** %3, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @cr_ok, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i32, i32* @stderr, align 4
  %76 = load %struct.connection*, %struct.connection** %3, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.connection*, %struct.connection** %3, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @cr_ok, align 8
  %83 = load %struct.connection*, %struct.connection** %3, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 4
  %85 = load double, double* %84, align 8
  %86 = load %struct.connection*, %struct.connection** %3, align 8
  %87 = getelementptr inbounds %struct.connection, %struct.connection* %86, i32 0, i32 5
  %88 = load double, double* %87, align 8
  %89 = load double, double* @precise_now, align 8
  %90 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %78, i64 %81, i64 %82, double %85, double %88, double %89)
  br label %91

91:                                               ; preds = %74, %68, %65
  %92 = load i64, i64* @cr_ok, align 8
  %93 = load %struct.connection*, %struct.connection** %3, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = trunc i64 %92 to i32
  store i32 %95, i32* %2, align 4
  br label %323

96:                                               ; preds = %59, %53
  %97 = load %struct.connection*, %struct.connection** %3, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 4
  %99 = load double, double* %98, align 8
  %100 = fcmp une double %99, 0.000000e+00
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.connection*, %struct.connection** %3, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 4
  %105 = load double, double* %104, align 8
  %106 = load double, double* @precise_now, align 8
  %107 = load double, double* @RPC_CONNECT_TIMEOUT, align 8
  %108 = fsub double %106, %107
  %109 = fcmp olt double %105, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %96
  %111 = load %struct.connection*, %struct.connection** %3, align 8
  %112 = call i32 @fail_connection(%struct.connection* %111, i32 -6)
  %113 = load i64, i64* @cr_failed, align 8
  %114 = load %struct.connection*, %struct.connection** %3, align 8
  %115 = getelementptr inbounds %struct.connection, %struct.connection* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = trunc i64 %113 to i32
  store i32 %116, i32* %2, align 4
  br label %323

117:                                              ; preds = %96
  %118 = load i32, i32* @cr_notyet, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.connection*, %struct.connection** %3, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = trunc i64 %119 to i32
  store i32 %122, i32* %2, align 4
  br label %323

123:                                              ; preds = %47
  %124 = load %struct.connection*, %struct.connection** %3, align 8
  %125 = getelementptr inbounds %struct.connection, %struct.connection* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @conn_connecting, align 8
  %128 = icmp ne i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.connection*, %struct.connection** %3, align 8
  %132 = getelementptr inbounds %struct.connection, %struct.connection* %131, i32 0, i32 4
  %133 = load double, double* %132, align 8
  %134 = load double, double* @precise_now, align 8
  %135 = load double, double* @rpc_ping_interval, align 8
  %136 = fsub double %134, %135
  %137 = fcmp olt double %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %123
  %139 = load %struct.connection*, %struct.connection** %3, align 8
  %140 = call i32 (...) @lrand48()
  %141 = call i32 @net_rpc_send_ping(%struct.connection* %139, i32 %140)
  %142 = load double, double* @precise_now, align 8
  %143 = load %struct.connection*, %struct.connection** %3, align 8
  %144 = getelementptr inbounds %struct.connection, %struct.connection* %143, i32 0, i32 4
  store double %142, double* %144, align 8
  br label %145

145:                                              ; preds = %138, %123
  %146 = load %struct.connection*, %struct.connection** %3, align 8
  %147 = getelementptr inbounds %struct.connection, %struct.connection* %146, i32 0, i32 5
  %148 = load double, double* %147, align 8
  %149 = fcmp une double %148, 0.000000e+00
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.connection*, %struct.connection** %3, align 8
  %153 = getelementptr inbounds %struct.connection, %struct.connection* %152, i32 0, i32 5
  %154 = load double, double* %153, align 8
  %155 = load double, double* @precise_now, align 8
  %156 = load double, double* @RPC_FAIL_INTERVAL, align 8
  %157 = fsub double %155, %156
  %158 = fcmp olt double %154, %157
  br i1 %158, label %159, label %192

159:                                              ; preds = %145
  %160 = load i32, i32* @verbosity, align 4
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = load %struct.connection*, %struct.connection** %3, align 8
  %164 = getelementptr inbounds %struct.connection, %struct.connection* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @cr_failed, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %162
  %169 = load i32, i32* @stderr, align 4
  %170 = load %struct.connection*, %struct.connection** %3, align 8
  %171 = getelementptr inbounds %struct.connection, %struct.connection* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.connection*, %struct.connection** %3, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @cr_failed, align 8
  %177 = load %struct.connection*, %struct.connection** %3, align 8
  %178 = getelementptr inbounds %struct.connection, %struct.connection* %177, i32 0, i32 4
  %179 = load double, double* %178, align 8
  %180 = load %struct.connection*, %struct.connection** %3, align 8
  %181 = getelementptr inbounds %struct.connection, %struct.connection* %180, i32 0, i32 5
  %182 = load double, double* %181, align 8
  %183 = load double, double* @precise_now, align 8
  %184 = call i32 @fprintf(i32 %169, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %172, i64 %175, i64 %176, double %179, double %182, double %183)
  br label %185

185:                                              ; preds = %168, %162, %159
  %186 = load %struct.connection*, %struct.connection** %3, align 8
  %187 = call i32 @fail_connection(%struct.connection* %186, i32 -5)
  %188 = load i64, i64* @cr_failed, align 8
  %189 = load %struct.connection*, %struct.connection** %3, align 8
  %190 = getelementptr inbounds %struct.connection, %struct.connection* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = trunc i64 %188 to i32
  store i32 %191, i32* %2, align 4
  br label %323

192:                                              ; preds = %145
  %193 = load %struct.connection*, %struct.connection** %3, align 8
  %194 = getelementptr inbounds %struct.connection, %struct.connection* %193, i32 0, i32 5
  %195 = load double, double* %194, align 8
  %196 = load double, double* @precise_now, align 8
  %197 = load double, double* @RPC_STOP_INTERVAL, align 8
  %198 = fsub double %196, %197
  %199 = fcmp olt double %195, %198
  br i1 %199, label %200, label %231

200:                                              ; preds = %192
  %201 = load i32, i32* @verbosity, align 4
  %202 = icmp sgt i32 %201, 1
  br i1 %202, label %203, label %226

203:                                              ; preds = %200
  %204 = load %struct.connection*, %struct.connection** %3, align 8
  %205 = getelementptr inbounds %struct.connection, %struct.connection* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @cr_stopped, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %203
  %210 = load i32, i32* @stderr, align 4
  %211 = load %struct.connection*, %struct.connection** %3, align 8
  %212 = getelementptr inbounds %struct.connection, %struct.connection* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.connection*, %struct.connection** %3, align 8
  %215 = getelementptr inbounds %struct.connection, %struct.connection* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @cr_stopped, align 8
  %218 = load %struct.connection*, %struct.connection** %3, align 8
  %219 = getelementptr inbounds %struct.connection, %struct.connection* %218, i32 0, i32 4
  %220 = load double, double* %219, align 8
  %221 = load %struct.connection*, %struct.connection** %3, align 8
  %222 = getelementptr inbounds %struct.connection, %struct.connection* %221, i32 0, i32 5
  %223 = load double, double* %222, align 8
  %224 = load double, double* @precise_now, align 8
  %225 = call i32 @fprintf(i32 %210, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %213, i64 %216, i64 %217, double %220, double %223, double %224)
  br label %226

226:                                              ; preds = %209, %203, %200
  %227 = load i64, i64* @cr_stopped, align 8
  %228 = load %struct.connection*, %struct.connection** %3, align 8
  %229 = getelementptr inbounds %struct.connection, %struct.connection* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = trunc i64 %227 to i32
  store i32 %230, i32* %2, align 4
  br label %323

231:                                              ; preds = %192
  %232 = load %struct.connection*, %struct.connection** %3, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @conn_wait_answer, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %249, label %237

237:                                              ; preds = %231
  %238 = load %struct.connection*, %struct.connection** %3, align 8
  %239 = getelementptr inbounds %struct.connection, %struct.connection* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @conn_expect_query, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %249, label %243

243:                                              ; preds = %237
  %244 = load %struct.connection*, %struct.connection** %3, align 8
  %245 = getelementptr inbounds %struct.connection, %struct.connection* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @conn_reading_answer, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %280

249:                                              ; preds = %243, %237, %231
  %250 = load i32, i32* @verbosity, align 4
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %275

252:                                              ; preds = %249
  %253 = load %struct.connection*, %struct.connection** %3, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @cr_ok, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %252
  %259 = load i32, i32* @stderr, align 4
  %260 = load %struct.connection*, %struct.connection** %3, align 8
  %261 = getelementptr inbounds %struct.connection, %struct.connection* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.connection*, %struct.connection** %3, align 8
  %264 = getelementptr inbounds %struct.connection, %struct.connection* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @cr_ok, align 8
  %267 = load %struct.connection*, %struct.connection** %3, align 8
  %268 = getelementptr inbounds %struct.connection, %struct.connection* %267, i32 0, i32 4
  %269 = load double, double* %268, align 8
  %270 = load %struct.connection*, %struct.connection** %3, align 8
  %271 = getelementptr inbounds %struct.connection, %struct.connection* %270, i32 0, i32 5
  %272 = load double, double* %271, align 8
  %273 = load double, double* @precise_now, align 8
  %274 = call i32 @fprintf(i32 %259, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %262, i64 %265, i64 %266, double %269, double %272, double %273)
  br label %275

275:                                              ; preds = %258, %252, %249
  %276 = load i64, i64* @cr_ok, align 8
  %277 = load %struct.connection*, %struct.connection** %3, align 8
  %278 = getelementptr inbounds %struct.connection, %struct.connection* %277, i32 0, i32 2
  store i64 %276, i64* %278, align 8
  %279 = trunc i64 %276 to i32
  store i32 %279, i32* %2, align 4
  br label %323

280:                                              ; preds = %243
  %281 = load %struct.connection*, %struct.connection** %3, align 8
  %282 = getelementptr inbounds %struct.connection, %struct.connection* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @conn_running, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %317

286:                                              ; preds = %280
  %287 = load i32, i32* @verbosity, align 4
  %288 = icmp sgt i32 %287, 1
  br i1 %288, label %289, label %312

289:                                              ; preds = %286
  %290 = load %struct.connection*, %struct.connection** %3, align 8
  %291 = getelementptr inbounds %struct.connection, %struct.connection* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @cr_busy, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %312

295:                                              ; preds = %289
  %296 = load i32, i32* @stderr, align 4
  %297 = load %struct.connection*, %struct.connection** %3, align 8
  %298 = getelementptr inbounds %struct.connection, %struct.connection* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.connection*, %struct.connection** %3, align 8
  %301 = getelementptr inbounds %struct.connection, %struct.connection* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @cr_busy, align 8
  %304 = load %struct.connection*, %struct.connection** %3, align 8
  %305 = getelementptr inbounds %struct.connection, %struct.connection* %304, i32 0, i32 4
  %306 = load double, double* %305, align 8
  %307 = load %struct.connection*, %struct.connection** %3, align 8
  %308 = getelementptr inbounds %struct.connection, %struct.connection* %307, i32 0, i32 5
  %309 = load double, double* %308, align 8
  %310 = load double, double* @precise_now, align 8
  %311 = call i32 @fprintf(i32 %296, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %299, i64 %302, i64 %303, double %306, double %309, double %310)
  br label %312

312:                                              ; preds = %295, %289, %286
  %313 = load i64, i64* @cr_busy, align 8
  %314 = load %struct.connection*, %struct.connection** %3, align 8
  %315 = getelementptr inbounds %struct.connection, %struct.connection* %314, i32 0, i32 2
  store i64 %313, i64* %315, align 8
  %316 = trunc i64 %313 to i32
  store i32 %316, i32* %2, align 4
  br label %323

317:                                              ; preds = %280
  %318 = call i32 @assert(i32 0)
  %319 = load i64, i64* @cr_failed, align 8
  %320 = load %struct.connection*, %struct.connection** %3, align 8
  %321 = getelementptr inbounds %struct.connection, %struct.connection* %320, i32 0, i32 2
  store i64 %319, i64* %321, align 8
  %322 = trunc i64 %319 to i32
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %317, %312, %275, %226, %185, %117, %110, %91, %42
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i64, double, double, double) #1

declare dso_local %struct.TYPE_2__* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local i32 @net_rpc_send_ping(%struct.connection*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
