; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@GET_LOG = common dso_local global i32 0, align 4
@SET_LOG_VERBOSITY = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@test_mode = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"query %s total time : %.6lf\0A\0A\00", align 1
@history_q = common dso_local global i8** null, align 8
@history_r = common dso_local global i32 0, align 4
@MAX_HISTORY = common dso_local global i32 0, align 4
@get = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"select%d\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"create_type\00", align 1
@set = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"add_field\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"type_size\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%d,%lld%n\00", align 1
@FN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"change_color\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%d,%lld,%d,%d%n#%d%n\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"NOK\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@history_l = common dso_local global i32 0, align 4
@MAX_VALUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca double, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %45 = load i32, i32* @verbosity, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sitofp i32 %50 to double
  %52 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %49, double %51)
  br label %53

53:                                               ; preds = %47, %3
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @eat_at(i8* %54, i32 %55, i8** %8, i32* %9)
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 5
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %59
  %64 = call i32 (...) @logs_prepare_stats()
  store i32 %64, i32* %10, align 4
  %65 = load %struct.connection*, %struct.connection** %5, align 8
  %66 = load i8*, i8** @stats_buff, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @prepare_stats(%struct.connection* %65, i8* %69, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.connection*, %struct.connection** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** @stats_buff, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @return_one_key(%struct.connection* %74, i8* %75, i8* %76, i32 %80)
  store i32 0, i32* %4, align 4
  br label %589

82:                                               ; preds = %59, %53
  %83 = load i32, i32* @GET_LOG, align 4
  %84 = load i32, i32* @SET_LOG_VERBOSITY, align 4
  %85 = load i32, i32* @INIT, align 4
  %86 = load i32, i32* @write_only, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %174, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = icmp sge i32 %89, 6
  br i1 %90, label %91, label %174

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %174, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %174

100:                                              ; preds = %95
  %101 = load i8*, i8** @stats_buff, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @memcpy(i8* %101, i8* %102, i32 %103)
  %105 = load i8*, i8** @stats_buff, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 0, i8* %108, align 1
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %127, %100
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i8*, i8** @stats_buff, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, -96
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load i8*, i8** @stats_buff, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 32, i8* %125, align 1
  br label %126

126:                                              ; preds = %121, %113
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %109

130:                                              ; preds = %109
  store double 0.000000e+00, double* %13, align 8
  %131 = load i64, i64* @test_mode, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = call double (...) @cputime()
  %135 = fneg double %134
  store double %135, double* %13, align 8
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i8*, i8** @stats_buff, align 8
  %138 = call i32 @history_q_add(i8* %137)
  %139 = load i8*, i8** @stats_buff, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i8* @logs_select(i8* %139, i32 %140)
  store i8* %141, i8** %14, align 8
  %142 = load %struct.connection*, %struct.connection** %5, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @strlen(i8* %145)
  %147 = call i32 @return_one_key(%struct.connection* %142, i8* %143, i8* %144, i32 %146)
  %148 = load i64, i64* @test_mode, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %136
  %151 = call double (...) @cputime()
  %152 = load double, double* %13, align 8
  %153 = fadd double %152, %151
  store double %153, double* %13, align 8
  %154 = load double, double* %13, align 8
  %155 = fcmp oge double %154, 1.000000e-02
  br i1 %155, label %156, label %170

156:                                              ; preds = %150
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8**, i8*** @history_q, align 8
  %159 = load i32, i32* @history_r, align 4
  %160 = load i32, i32* @MAX_HISTORY, align 4
  %161 = add nsw i32 %159, %160
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* @MAX_HISTORY, align 4
  %164 = srem i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %158, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load double, double* %13, align 8
  %169 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %167, double %168)
  br label %170

170:                                              ; preds = %156, %150
  br label %171

171:                                              ; preds = %170, %136
  %172 = load i32, i32* @get, align 4
  %173 = call i32 @RETURN(i32 %172, i32 0)
  br label %174

174:                                              ; preds = %171, %95, %91, %88, %82
  %175 = load i32, i32* @write_only, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %249, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %9, align 4
  %179 = icmp sge i32 %178, 6
  br i1 %179, label %180, label %249

180:                                              ; preds = %177
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @strncmp(i8* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %249, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %15)
  %187 = icmp ne i32 %186, 1
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* @get, align 4
  %190 = call i32 @RETURN(i32 %189, i32 0)
  br label %191

191:                                              ; preds = %188, %184
  %192 = load %struct.connection*, %struct.connection** %5, align 8
  %193 = call %struct.TYPE_4__* @MESSAGE(%struct.connection* %192)
  store %struct.TYPE_4__* %193, %struct.TYPE_4__** %16, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i64 @msg_verify(%struct.TYPE_4__* %194, i32 %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i32, i32* @get, align 4
  %200 = call i32 @RETURN(i32 %199, i32 0)
  br label %201

201:                                              ; preds = %198, %191
  store double 0.000000e+00, double* %17, align 8
  %202 = load i64, i64* @test_mode, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = call double (...) @cputime()
  %206 = fneg double %205
  store double %206, double* %17, align 8
  br label %207

207:                                              ; preds = %204, %201
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @history_q_add(i8* %210)
  %212 = load i8*, i8** @buf, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  %220 = call i32 @memcpy(i8* %212, i8* %215, i32 %219)
  %221 = load i8*, i8** @buf, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i8* @logs_select(i8* %221, i32 %224)
  store i8* %225, i8** %18, align 8
  %226 = load %struct.connection*, %struct.connection** %5, align 8
  %227 = load i8*, i8** %6, align 8
  %228 = load i8*, i8** %18, align 8
  %229 = load i8*, i8** %18, align 8
  %230 = call i32 @strlen(i8* %229)
  %231 = call i32 @return_one_key(%struct.connection* %226, i8* %227, i8* %228, i32 %230)
  %232 = load i64, i64* @test_mode, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %207
  %235 = call double (...) @cputime()
  %236 = load double, double* %17, align 8
  %237 = fadd double %236, %235
  store double %237, double* %17, align 8
  %238 = load double, double* %17, align 8
  %239 = fcmp oge double %238, 1.000000e-02
  br i1 %239, label %240, label %245

240:                                              ; preds = %234
  %241 = load i32, i32* @stderr, align 4
  %242 = load i8*, i8** @stats_buff, align 8
  %243 = load double, double* %17, align 8
  %244 = call i32 @fprintf(i32 %241, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %242, double %243)
  br label %245

245:                                              ; preds = %240, %234
  br label %246

246:                                              ; preds = %245, %207
  %247 = load i32, i32* @get, align 4
  %248 = call i32 @RETURN(i32 %247, i32 0)
  br label %249

249:                                              ; preds = %246, %180, %177, %174
  %250 = load i32, i32* %9, align 4
  %251 = icmp sge i32 %250, 11
  br i1 %251, label %252, label %301

252:                                              ; preds = %249
  %253 = load i8*, i8** %8, align 8
  %254 = call i32 @strncmp(i8* %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %301, label %256

256:                                              ; preds = %252
  %257 = load i8*, i8** %8, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 11
  store i8* %258, i8** %19, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sub nsw i32 %259, 11
  store i32 %260, i32* %20, align 4
  %261 = load i32, i32* %20, align 4
  %262 = icmp sge i32 %261, 2
  br i1 %262, label %263, label %298

263:                                              ; preds = %256
  %264 = load i8*, i8** %19, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 40
  br i1 %268, label %269, label %298

269:                                              ; preds = %263
  %270 = load i8*, i8** %19, align 8
  %271 = load i32, i32* %20, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 41
  br i1 %277, label %278, label %298

278:                                              ; preds = %269
  %279 = load i8*, i8** @buf, align 8
  %280 = load i8*, i8** %19, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = load i32, i32* %20, align 4
  %283 = sub nsw i32 %282, 2
  %284 = call i32 @memcpy(i8* %279, i8* %281, i32 %283)
  %285 = load i8*, i8** @buf, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sub nsw i32 %286, 2
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %285, i64 %288
  store i8 0, i8* %289, align 1
  %290 = load i8*, i8** @buf, align 8
  %291 = call i8* @do_create_type(i8* %290)
  store i8* %291, i8** %21, align 8
  %292 = load %struct.connection*, %struct.connection** %5, align 8
  %293 = load i8*, i8** %6, align 8
  %294 = load i8*, i8** %21, align 8
  %295 = load i8*, i8** %21, align 8
  %296 = call i32 @strlen(i8* %295)
  %297 = call i32 @return_one_key(%struct.connection* %292, i8* %293, i8* %294, i32 %296)
  br label %298

298:                                              ; preds = %278, %269, %263, %256
  %299 = load i32, i32* @set, align 4
  %300 = call i32 @RETURN(i32 %299, i32 0)
  br label %301

301:                                              ; preds = %298, %252, %249
  %302 = load i32, i32* %9, align 4
  %303 = icmp sge i32 %302, 9
  br i1 %303, label %304, label %353

304:                                              ; preds = %301
  %305 = load i8*, i8** %8, align 8
  %306 = call i32 @strncmp(i8* %305, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %353, label %308

308:                                              ; preds = %304
  %309 = load i8*, i8** %8, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 9
  store i8* %310, i8** %22, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sub nsw i32 %311, 9
  store i32 %312, i32* %23, align 4
  %313 = load i32, i32* %23, align 4
  %314 = icmp sge i32 %313, 2
  br i1 %314, label %315, label %350

315:                                              ; preds = %308
  %316 = load i8*, i8** %22, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 0
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 40
  br i1 %320, label %321, label %350

321:                                              ; preds = %315
  %322 = load i8*, i8** %22, align 8
  %323 = load i32, i32* %23, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 41
  br i1 %329, label %330, label %350

330:                                              ; preds = %321
  %331 = load i8*, i8** @buf, align 8
  %332 = load i8*, i8** %22, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i32, i32* %23, align 4
  %335 = sub nsw i32 %334, 2
  %336 = call i32 @memcpy(i8* %331, i8* %333, i32 %335)
  %337 = load i8*, i8** @buf, align 8
  %338 = load i32, i32* %23, align 4
  %339 = sub nsw i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  store i8 0, i8* %341, align 1
  %342 = load i8*, i8** @buf, align 8
  %343 = call i8* @do_add_field(i8* %342)
  store i8* %343, i8** %24, align 8
  %344 = load %struct.connection*, %struct.connection** %5, align 8
  %345 = load i8*, i8** %6, align 8
  %346 = load i8*, i8** %24, align 8
  %347 = load i8*, i8** %24, align 8
  %348 = call i32 @strlen(i8* %347)
  %349 = call i32 @return_one_key(%struct.connection* %344, i8* %345, i8* %346, i32 %348)
  br label %350

350:                                              ; preds = %330, %321, %315, %308
  %351 = load i32, i32* @set, align 4
  %352 = call i32 @RETURN(i32 %351, i32 0)
  br label %353

353:                                              ; preds = %350, %304, %301
  %354 = load i32, i32* @write_only, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %386, label %356

356:                                              ; preds = %353
  %357 = load i32, i32* %9, align 4
  %358 = icmp sge i32 %357, 9
  br i1 %358, label %359, label %386

359:                                              ; preds = %356
  %360 = load i8*, i8** %8, align 8
  %361 = call i32 @strncmp(i8* %360, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %386, label %363

363:                                              ; preds = %359
  %364 = load i8*, i8** %8, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 9
  %366 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %365, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %25)
  %367 = icmp ne i32 %366, 1
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  store i32 -1, i32* %25, align 4
  br label %377

369:                                              ; preds = %363
  %370 = load i32, i32* %25, align 4
  %371 = icmp eq i32 %370, -1
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = load %struct.connection*, %struct.connection** %5, align 8
  %374 = load i8*, i8** %6, align 8
  %375 = call i32 @return_one_key(%struct.connection* %373, i8* %374, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store i32 0, i32* %4, align 4
  br label %589

376:                                              ; preds = %369
  br label %377

377:                                              ; preds = %376, %368
  %378 = load i32, i32* %25, align 4
  %379 = call i8* @get_type_size(i32 %378)
  store i8* %379, i8** %26, align 8
  %380 = load %struct.connection*, %struct.connection** %5, align 8
  %381 = load i8*, i8** %6, align 8
  %382 = load i8*, i8** %26, align 8
  %383 = load i8*, i8** %26, align 8
  %384 = call i32 @strlen(i8* %383)
  %385 = call i32 @return_one_key(%struct.connection* %380, i8* %381, i8* %382, i32 %384)
  store i32 0, i32* %4, align 4
  br label %589

386:                                              ; preds = %359, %356, %353
  %387 = load i32, i32* @write_only, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %425, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %9, align 4
  %391 = icmp sge i32 %390, 5
  br i1 %391, label %392, label %425

392:                                              ; preds = %389
  %393 = load i8*, i8** %8, align 8
  %394 = call i32 @strncmp(i8* %393, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %425, label %396

396:                                              ; preds = %392
  %397 = load i8*, i8** %8, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 5
  %399 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %398, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %27, i64* %28, i32* %29)
  %400 = icmp ne i32 %399, 2
  br i1 %400, label %413, label %401

401:                                              ; preds = %396
  %402 = load i32, i32* %27, align 4
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %401
  %405 = load i32, i32* %27, align 4
  %406 = load i32, i32* @FN, align 4
  %407 = icmp sge i32 %405, %406
  br i1 %407, label %413, label %408

408:                                              ; preds = %404
  %409 = load i32, i32* %29, align 4
  %410 = add nsw i32 %409, 5
  %411 = load i32, i32* %9, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %408, %404, %401, %396
  store i32 0, i32* %4, align 4
  br label %589

414:                                              ; preds = %408
  %415 = load i32, i32* %27, align 4
  %416 = load i64, i64* %28, align 8
  %417 = call i32 @get_color(i32 %415, i64 %416)
  %418 = call i8* @dl_pstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %417)
  store i8* %418, i8** %30, align 8
  %419 = load %struct.connection*, %struct.connection** %5, align 8
  %420 = load i8*, i8** %6, align 8
  %421 = load i8*, i8** %30, align 8
  %422 = load i8*, i8** %30, align 8
  %423 = call i32 @strlen(i8* %422)
  %424 = call i32 @return_one_key(%struct.connection* %419, i8* %420, i8* %421, i32 %423)
  store i32 0, i32* %4, align 4
  br label %589

425:                                              ; preds = %392, %389, %386
  %426 = load i32, i32* %9, align 4
  %427 = icmp sge i32 %426, 12
  br i1 %427, label %428, label %466

428:                                              ; preds = %425
  %429 = load i8*, i8** %8, align 8
  %430 = call i32 @strncmp(i8* %429, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 12)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %466, label %432

432:                                              ; preds = %428
  store i32 1, i32* %35, align 4
  %433 = load i8*, i8** %8, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 12
  %435 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %434, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32* %31, i64* %32, i32* %33, i32* %34, i32* %36, i32* %35, i32* %36)
  %436 = icmp slt i32 %435, 4
  br i1 %436, label %449, label %437

437:                                              ; preds = %432
  %438 = load i32, i32* %31, align 4
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %449, label %440

440:                                              ; preds = %437
  %441 = load i32, i32* %31, align 4
  %442 = load i32, i32* @FN, align 4
  %443 = icmp sge i32 %441, %442
  br i1 %443, label %449, label %444

444:                                              ; preds = %440
  %445 = load i32, i32* %36, align 4
  %446 = add nsw i32 %445, 12
  %447 = load i32, i32* %9, align 4
  %448 = icmp ne i32 %446, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %444, %440, %437, %432
  store i32 0, i32* %4, align 4
  br label %589

450:                                              ; preds = %444
  %451 = load i32, i32* %31, align 4
  %452 = load i64, i64* %32, align 8
  %453 = load i32, i32* %35, align 4
  %454 = load i32, i32* %33, align 4
  %455 = load i32, i32* %34, align 4
  %456 = call i64 @do_set_color(i32 %451, i64 %452, i32 %453, i32 %454, i32 %455)
  %457 = icmp ne i64 %456, 0
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  store i8* %459, i8** %37, align 8
  %460 = load %struct.connection*, %struct.connection** %5, align 8
  %461 = load i8*, i8** %6, align 8
  %462 = load i8*, i8** %37, align 8
  %463 = load i8*, i8** %37, align 8
  %464 = call i32 @strlen(i8* %463)
  %465 = call i32 @return_one_key(%struct.connection* %460, i8* %461, i8* %462, i32 %464)
  store i32 0, i32* %4, align 4
  br label %589

466:                                              ; preds = %428, %425
  %467 = load i32, i32* @write_only, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %484, label %469

469:                                              ; preds = %466
  %470 = load i32, i32* %9, align 4
  %471 = icmp eq i32 %470, 5
  br i1 %471, label %472, label %484

472:                                              ; preds = %469
  %473 = load i8*, i8** %8, align 8
  %474 = call i32 @strcmp(i8* %473, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %484, label %476

476:                                              ; preds = %472
  %477 = call i8* (...) @get_types()
  store i8* %477, i8** %38, align 8
  %478 = load %struct.connection*, %struct.connection** %5, align 8
  %479 = load i8*, i8** %6, align 8
  %480 = load i8*, i8** %38, align 8
  %481 = load i8*, i8** %38, align 8
  %482 = call i32 @strlen(i8* %481)
  %483 = call i32 @return_one_key(%struct.connection* %478, i8* %479, i8* %480, i32 %482)
  store i32 0, i32* %4, align 4
  br label %589

484:                                              ; preds = %472, %469, %466
  %485 = load i32, i32* @write_only, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %504, label %487

487:                                              ; preds = %484
  %488 = load i32, i32* %9, align 4
  %489 = icmp eq i32 %488, 4
  br i1 %489, label %490, label %504

490:                                              ; preds = %487
  %491 = load i8*, i8** %8, align 8
  %492 = call i32 @strcmp(i8* %491, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %504, label %494

494:                                              ; preds = %490
  %495 = call i32 (...) @get_time()
  store i32 %495, i32* %39, align 4
  %496 = load i32, i32* %39, align 4
  %497 = call i8* @dl_pstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %496)
  store i8* %497, i8** %40, align 8
  %498 = load %struct.connection*, %struct.connection** %5, align 8
  %499 = load i8*, i8** %6, align 8
  %500 = load i8*, i8** %40, align 8
  %501 = load i8*, i8** %40, align 8
  %502 = call i32 @strlen(i8* %501)
  %503 = call i32 @return_one_key(%struct.connection* %498, i8* %499, i8* %500, i32 %502)
  store i32 0, i32* %4, align 4
  br label %589

504:                                              ; preds = %490, %487, %484
  %505 = load i32, i32* @write_only, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %588, label %507

507:                                              ; preds = %504
  %508 = load i32, i32* %9, align 4
  %509 = icmp sge i32 %508, 7
  br i1 %509, label %510, label %588

510:                                              ; preds = %507
  %511 = load i8*, i8** %8, align 8
  %512 = call i32 @strncmp(i8* %511, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 7)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %588, label %514

514:                                              ; preds = %510
  %515 = load i8*, i8** %8, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 7
  %517 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %516, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %41)
  %518 = icmp ne i32 %517, 1
  br i1 %518, label %519, label %521

519:                                              ; preds = %514
  %520 = load i32, i32* @MAX_HISTORY, align 4
  store i32 %520, i32* %41, align 4
  br label %521

521:                                              ; preds = %519, %514
  %522 = load i8*, i8** @buf, align 8
  store i8* %522, i8** %42, align 8
  %523 = load i32, i32* @history_r, align 4
  store i32 %523, i32* %43, align 4
  br label %524

524:                                              ; preds = %564, %521
  %525 = load i32, i32* %41, align 4
  %526 = add nsw i32 %525, -1
  store i32 %526, i32* %41, align 4
  %527 = icmp ne i32 %525, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %524
  %529 = load i32, i32* %43, align 4
  %530 = load i32, i32* @history_l, align 4
  %531 = icmp ne i32 %529, %530
  br label %532

532:                                              ; preds = %528, %524
  %533 = phi i1 [ false, %524 ], [ %531, %528 ]
  br i1 %533, label %534, label %579

534:                                              ; preds = %532
  %535 = load i32, i32* %43, align 4
  %536 = add nsw i32 %535, -1
  store i32 %536, i32* %43, align 4
  %537 = load i32, i32* %43, align 4
  %538 = icmp eq i32 %537, -1
  br i1 %538, label %539, label %544

539:                                              ; preds = %534
  %540 = load i32, i32* @MAX_HISTORY, align 4
  %541 = add nsw i32 %540, 1
  %542 = load i32, i32* %43, align 4
  %543 = add nsw i32 %542, %541
  store i32 %543, i32* %43, align 4
  br label %544

544:                                              ; preds = %539, %534
  %545 = load i8**, i8*** @history_q, align 8
  %546 = load i32, i32* %43, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8*, i8** %545, i64 %547
  %549 = load i8*, i8** %548, align 8
  %550 = call i32 @strlen(i8* %549)
  store i32 %550, i32* %44, align 4
  %551 = load i8*, i8** %42, align 8
  %552 = load i8*, i8** @buf, align 8
  %553 = ptrtoint i8* %551 to i64
  %554 = ptrtoint i8* %552 to i64
  %555 = sub i64 %553, %554
  %556 = load i32, i32* %44, align 4
  %557 = sext i32 %556 to i64
  %558 = add nsw i64 %555, %557
  %559 = add nsw i64 %558, 2
  %560 = load i32, i32* @MAX_VALUE_LEN, align 4
  %561 = sext i32 %560 to i64
  %562 = icmp sge i64 %559, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %544
  br label %579

564:                                              ; preds = %544
  %565 = load i8*, i8** %42, align 8
  %566 = load i8**, i8*** @history_q, align 8
  %567 = load i32, i32* %43, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8*, i8** %566, i64 %568
  %570 = load i8*, i8** %569, align 8
  %571 = load i32, i32* %44, align 4
  %572 = call i32 @memcpy(i8* %565, i8* %570, i32 %571)
  %573 = load i32, i32* %44, align 4
  %574 = load i8*, i8** %42, align 8
  %575 = sext i32 %573 to i64
  %576 = getelementptr inbounds i8, i8* %574, i64 %575
  store i8* %576, i8** %42, align 8
  %577 = load i8*, i8** %42, align 8
  %578 = getelementptr inbounds i8, i8* %577, i32 1
  store i8* %578, i8** %42, align 8
  store i8 10, i8* %577, align 1
  br label %524

579:                                              ; preds = %563, %532
  %580 = load i8*, i8** %42, align 8
  %581 = getelementptr inbounds i8, i8* %580, i32 1
  store i8* %581, i8** %42, align 8
  store i8 0, i8* %580, align 1
  %582 = load %struct.connection*, %struct.connection** %5, align 8
  %583 = load i8*, i8** %6, align 8
  %584 = load i8*, i8** @buf, align 8
  %585 = load i8*, i8** @buf, align 8
  %586 = call i32 @strlen(i8* %585)
  %587 = call i32 @return_one_key(%struct.connection* %582, i8* %583, i8* %584, i32 %586)
  store i32 0, i32* %4, align 4
  br label %589

588:                                              ; preds = %510, %507, %504
  store i32 0, i32* %4, align 4
  br label %589

589:                                              ; preds = %588, %579, %494, %476, %450, %449, %414, %413, %377, %372, %63
  %590 = load i32, i32* %4, align 4
  ret i32 %590
}

declare dso_local i32 @fprintf(i32, i8*, i8*, double) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @logs_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local double @cputime(...) #1

declare dso_local i32 @history_q_add(i8*) #1

declare dso_local i8* @logs_select(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local %struct.TYPE_4__* @MESSAGE(%struct.connection*) #1

declare dso_local i64 @msg_verify(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @do_create_type(i8*) #1

declare dso_local i8* @do_add_field(i8*) #1

declare dso_local i8* @get_type_size(i32) #1

declare dso_local i8* @dl_pstr(i8*, i32) #1

declare dso_local i32 @get_color(i32, i64) #1

declare dso_local i64 @do_set_color(i32, i64, i32, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @get_types(...) #1

declare dso_local i32 @get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
