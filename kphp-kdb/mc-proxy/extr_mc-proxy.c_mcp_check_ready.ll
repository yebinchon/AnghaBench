; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_check_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { double, i64, double, double, i32, double, i32, i32, i32, %struct.conn_query*, i32 }
%struct.conn_query = type { double }

@precise_now = common dso_local global double 0.000000e+00, align 8
@conn_connecting = common dso_local global i64 0, align 8
@conn_wait_answer = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@CONNECT_TIMEOUT = common dso_local global double 0.000000e+00, align 8
@cr_failed = common dso_local global i64 0, align 8
@cr_notyet = common dso_local global i32 0, align 4
@ping_interval = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"version\0D\0A\00", align 1
@RESPONSE_FAIL_TIMEOUT = common dso_local global double 0.000000e+00, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [111 x i8] c"changing connection %d readiness from %d to %d [FAILED] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\0A\00", align 1
@cr_stopped = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [112 x i8] c"changing connection %d readiness from %d to %d [STOPPED] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\0A\00", align 1
@C_FAILED = common dso_local global i32 0, align 4
@cr_ok = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [107 x i8] c"changing connection %d readiness from %d to %d [OK] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_check_ready(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %6 = load double, double* @precise_now, align 8
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fsub double %6, %9
  store double %10, double* %5, align 8
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @conn_connecting, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = load double, double* %18, align 8
  %20 = fcmp oeq double %19, 0.000000e+00
  br i1 %20, label %21, label %52

21:                                               ; preds = %16
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @conn_wait_answer, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @conn_reading_answer, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %21, %1
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 3
  %36 = load double, double* %35, align 8
  %37 = load double, double* %5, align 8
  %38 = load double, double* @CONNECT_TIMEOUT, align 8
  %39 = fsub double %37, %38
  %40 = fcmp olt double %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.connection*, %struct.connection** %3, align 8
  %43 = call i32 @fail_connection(%struct.connection* %42, i32 -6)
  %44 = load i64, i64* @cr_failed, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  store i32 %45, i32* %2, align 4
  br label %293

48:                                               ; preds = %33
  %49 = load i32, i32* @cr_notyet, align 4
  %50 = load %struct.connection*, %struct.connection** %3, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  store i32 %49, i32* %2, align 4
  br label %293

52:                                               ; preds = %27, %16
  %53 = load %struct.connection*, %struct.connection** %3, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 3
  %55 = load double, double* %54, align 8
  %56 = load double, double* %5, align 8
  %57 = load double, double* @ping_interval, align 8
  %58 = fsub double %56, %57
  %59 = load %struct.connection*, %struct.connection** %3, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 5
  %61 = load double, double* %60, align 8
  %62 = fsub double %58, %61
  %63 = fcmp olt double %55, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %52
  %65 = load %struct.connection*, %struct.connection** %3, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 9
  %67 = load %struct.conn_query*, %struct.conn_query** %66, align 8
  %68 = load %struct.connection*, %struct.connection** %3, align 8
  %69 = bitcast %struct.connection* %68 to %struct.conn_query*
  %70 = icmp eq %struct.conn_query* %67, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load %struct.connection*, %struct.connection** %3, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 10
  %74 = call i32 @write_out(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %75 = load double, double* @precise_now, align 8
  %76 = load %struct.connection*, %struct.connection** %3, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 3
  store double %75, double* %77, align 8
  %78 = call double (...) @drand48()
  %79 = fmul double %78, 1.000000e-01
  %80 = load %struct.connection*, %struct.connection** %3, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 5
  store double %79, double* %81, align 8
  %82 = load %struct.connection*, %struct.connection** %3, align 8
  %83 = call i32 @flush_output(%struct.connection* %82)
  br label %84

84:                                               ; preds = %71, %64, %52
  %85 = load %struct.connection*, %struct.connection** %3, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 9
  %87 = load %struct.conn_query*, %struct.conn_query** %86, align 8
  %88 = load %struct.connection*, %struct.connection** %3, align 8
  %89 = bitcast %struct.connection* %88 to %struct.conn_query*
  %90 = icmp ne %struct.conn_query* %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.connection*, %struct.connection** %3, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 9
  %94 = load %struct.conn_query*, %struct.conn_query** %93, align 8
  %95 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  store double %96, double* %4, align 8
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.connection*, %struct.connection** %3, align 8
  %99 = getelementptr inbounds %struct.connection, %struct.connection* %98, i32 0, i32 2
  %100 = load double, double* %99, align 8
  %101 = load double, double* %5, align 8
  %102 = load double, double* @ping_interval, align 8
  %103 = fmul double %102, 2.000000e+00
  %104 = fsub double %101, %103
  %105 = fcmp olt double %100, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %97
  %107 = load double, double* %4, align 8
  %108 = fcmp ogt double %107, 0.000000e+00
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load double, double* %4, align 8
  %111 = load double, double* %5, align 8
  %112 = load double, double* @RESPONSE_FAIL_TIMEOUT, align 8
  %113 = fsub double %111, %112
  %114 = fcmp olt double %110, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %109, %106
  %116 = load %struct.connection*, %struct.connection** %3, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 5000
  br i1 %119, label %120, label %162

120:                                              ; preds = %115, %109, %97
  %121 = load i32, i32* @verbosity, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  %124 = load %struct.connection*, %struct.connection** %3, align 8
  %125 = getelementptr inbounds %struct.connection, %struct.connection* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* @cr_failed, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load i32, i32* @stderr, align 4
  %132 = load %struct.connection*, %struct.connection** %3, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.connection*, %struct.connection** %3, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @cr_failed, align 8
  %140 = load double, double* %4, align 8
  %141 = load %struct.connection*, %struct.connection** %3, align 8
  %142 = getelementptr inbounds %struct.connection, %struct.connection* %141, i32 0, i32 3
  %143 = load double, double* %142, align 8
  %144 = load %struct.connection*, %struct.connection** %3, align 8
  %145 = getelementptr inbounds %struct.connection, %struct.connection* %144, i32 0, i32 0
  %146 = load double, double* %145, align 8
  %147 = load %struct.connection*, %struct.connection** %3, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 2
  %149 = load double, double* %148, align 8
  %150 = load double, double* @precise_now, align 8
  %151 = load %struct.connection*, %struct.connection** %3, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i32 %134, i64 %138, i64 %139, double %140, double %143, double %146, double %149, double %150, i32 %153)
  br label %155

155:                                              ; preds = %130, %123, %120
  %156 = load %struct.connection*, %struct.connection** %3, align 8
  %157 = call i32 @fail_connection(%struct.connection* %156, i32 -5)
  %158 = load i64, i64* @cr_failed, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.connection*, %struct.connection** %3, align 8
  %161 = getelementptr inbounds %struct.connection, %struct.connection* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  store i32 %159, i32* %2, align 4
  br label %293

162:                                              ; preds = %115
  %163 = load %struct.connection*, %struct.connection** %3, align 8
  %164 = getelementptr inbounds %struct.connection, %struct.connection* %163, i32 0, i32 2
  %165 = load double, double* %164, align 8
  %166 = load double, double* %5, align 8
  %167 = load double, double* @ping_interval, align 8
  %168 = fsub double %166, %167
  %169 = fsub double %168, 3.000000e+00
  %170 = fcmp olt double %165, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = load double, double* %4, align 8
  %173 = fcmp ogt double %172, 0.000000e+00
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load double, double* %4, align 8
  %176 = load double, double* %5, align 8
  %177 = fsub double %176, 3.000000e+00
  %178 = fcmp olt double %175, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %174, %171
  %180 = load %struct.connection*, %struct.connection** %3, align 8
  %181 = getelementptr inbounds %struct.connection, %struct.connection* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %182, 2000
  br i1 %183, label %184, label %224

184:                                              ; preds = %179, %174, %162
  %185 = load i32, i32* @verbosity, align 4
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %219

187:                                              ; preds = %184
  %188 = load %struct.connection*, %struct.connection** %3, align 8
  %189 = getelementptr inbounds %struct.connection, %struct.connection* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @cr_stopped, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %187
  %195 = load i32, i32* @stderr, align 4
  %196 = load %struct.connection*, %struct.connection** %3, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.connection*, %struct.connection** %3, align 8
  %200 = getelementptr inbounds %struct.connection, %struct.connection* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* @cr_stopped, align 8
  %204 = load double, double* %4, align 8
  %205 = load %struct.connection*, %struct.connection** %3, align 8
  %206 = getelementptr inbounds %struct.connection, %struct.connection* %205, i32 0, i32 3
  %207 = load double, double* %206, align 8
  %208 = load %struct.connection*, %struct.connection** %3, align 8
  %209 = getelementptr inbounds %struct.connection, %struct.connection* %208, i32 0, i32 0
  %210 = load double, double* %209, align 8
  %211 = load %struct.connection*, %struct.connection** %3, align 8
  %212 = getelementptr inbounds %struct.connection, %struct.connection* %211, i32 0, i32 2
  %213 = load double, double* %212, align 8
  %214 = load double, double* @precise_now, align 8
  %215 = load %struct.connection*, %struct.connection** %3, align 8
  %216 = getelementptr inbounds %struct.connection, %struct.connection* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @fprintf(i32 %195, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 %198, i64 %202, i64 %203, double %204, double %207, double %210, double %213, double %214, i32 %217)
  br label %219

219:                                              ; preds = %194, %187, %184
  %220 = load i64, i64* @cr_stopped, align 8
  %221 = trunc i64 %220 to i32
  %222 = load %struct.connection*, %struct.connection** %3, align 8
  %223 = getelementptr inbounds %struct.connection, %struct.connection* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  store i32 %221, i32* %2, align 4
  br label %293

224:                                              ; preds = %179
  %225 = load %struct.connection*, %struct.connection** %3, align 8
  %226 = getelementptr inbounds %struct.connection, %struct.connection* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @C_FAILED, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %288, label %231

231:                                              ; preds = %224
  %232 = load %struct.connection*, %struct.connection** %3, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 2
  %234 = load double, double* %233, align 8
  %235 = fcmp ogt double %234, 0.000000e+00
  br i1 %235, label %236, label %288

236:                                              ; preds = %231
  %237 = load %struct.connection*, %struct.connection** %3, align 8
  %238 = getelementptr inbounds %struct.connection, %struct.connection* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @conn_wait_answer, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load %struct.connection*, %struct.connection** %3, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @conn_reading_answer, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %288

248:                                              ; preds = %242, %236
  %249 = load i32, i32* @verbosity, align 4
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %251, label %283

251:                                              ; preds = %248
  %252 = load %struct.connection*, %struct.connection** %3, align 8
  %253 = getelementptr inbounds %struct.connection, %struct.connection* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* @cr_ok, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %283

258:                                              ; preds = %251
  %259 = load i32, i32* @stderr, align 4
  %260 = load %struct.connection*, %struct.connection** %3, align 8
  %261 = getelementptr inbounds %struct.connection, %struct.connection* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.connection*, %struct.connection** %3, align 8
  %264 = getelementptr inbounds %struct.connection, %struct.connection* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* @cr_ok, align 8
  %268 = load double, double* %4, align 8
  %269 = load %struct.connection*, %struct.connection** %3, align 8
  %270 = getelementptr inbounds %struct.connection, %struct.connection* %269, i32 0, i32 3
  %271 = load double, double* %270, align 8
  %272 = load %struct.connection*, %struct.connection** %3, align 8
  %273 = getelementptr inbounds %struct.connection, %struct.connection* %272, i32 0, i32 0
  %274 = load double, double* %273, align 8
  %275 = load %struct.connection*, %struct.connection** %3, align 8
  %276 = getelementptr inbounds %struct.connection, %struct.connection* %275, i32 0, i32 2
  %277 = load double, double* %276, align 8
  %278 = load double, double* @precise_now, align 8
  %279 = load %struct.connection*, %struct.connection** %3, align 8
  %280 = getelementptr inbounds %struct.connection, %struct.connection* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @fprintf(i32 %259, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 %262, i64 %266, i64 %267, double %268, double %271, double %274, double %277, double %278, i32 %281)
  br label %283

283:                                              ; preds = %258, %251, %248
  %284 = load i64, i64* @cr_ok, align 8
  %285 = trunc i64 %284 to i32
  %286 = load %struct.connection*, %struct.connection** %3, align 8
  %287 = getelementptr inbounds %struct.connection, %struct.connection* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 8
  store i32 %285, i32* %2, align 4
  br label %293

288:                                              ; preds = %242, %231, %224
  %289 = load i64, i64* @cr_failed, align 8
  %290 = trunc i64 %289 to i32
  %291 = load %struct.connection*, %struct.connection** %3, align 8
  %292 = getelementptr inbounds %struct.connection, %struct.connection* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  store i32 %290, i32* %2, align 4
  br label %293

293:                                              ; preds = %288, %283, %219, %155, %48, %41
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local double @drand48(...) #1

declare dso_local i32 @flush_output(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i64, double, double, double, double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
