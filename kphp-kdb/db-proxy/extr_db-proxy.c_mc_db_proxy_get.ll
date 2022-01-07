; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_mc_db_proxy_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_mc_db_proxy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, %struct.connection*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.conn_target = type { i64, %struct.connection*, i32 }
%struct.sqls_data = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"#inbound\00", align 1
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@Connections = common dso_local global %struct.connection* null, align 8
@ct_inbound = common dso_local global i64 0, align 8
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [261 x i8] c"fd = %d, %s:%d, flags = %d , status = %d, err = %d, gen = %d, skip = %d, basic_type = %d\0A  Inb = %d + %d, Outb = %d + %d, pend = %d, ready = %d, parse_state=%d, type = %p\0A  auth state = %d, packet_state = %d\0A  last_response_time = %.6f, last_query_time = %.6f\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"#outbound\00", align 1
@ct_outbound = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"#bad_targets\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#bad_connections\00", align 1
@allocated_targets = common dso_local global i32 0, align 4
@R_end = common dso_local global i64 0, align 8
@R = common dso_local global i64 0, align 8
@MAX_RES = common dso_local global i64 0, align 8
@Targets = common dso_local global %struct.conn_target* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"#targets\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"#connections\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc_db_proxy_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.connection*, align 8
  %12 = alloca %struct.sqls_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.connection*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.conn_target*, align 8
  %19 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 5
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = call i32 @db_proxy_prepare_stats(%struct.connection* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* @stats_buff, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @return_one_key(%struct.connection* %29, i8* %30, i64 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %319

34:                                               ; preds = %22, %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %37, label %155

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %155, label %41

41:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %146, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MAX_CONNECTIONS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %149

46:                                               ; preds = %42
  %47 = load %struct.connection*, %struct.connection** @Connections, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %47, i64 %49
  store %struct.connection* %50, %struct.connection** %11, align 8
  %51 = load %struct.connection*, %struct.connection** %11, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ct_inbound, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %145

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %59 = sub nsw i32 %58, 1024
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %145

61:                                               ; preds = %56
  %62 = load %struct.connection*, %struct.connection** %11, align 8
  %63 = call %struct.sqls_data* @SQLS_DATA(%struct.connection* %62)
  store %struct.sqls_data* %63, %struct.sqls_data** %12, align 8
  %64 = load i64, i64* @stats_buff, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %69 = sub nsw i32 %68, 6
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load %struct.connection*, %struct.connection** %11, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.connection*, %struct.connection** %11, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 16
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @show_ip(i32 %77)
  %79 = load %struct.connection*, %struct.connection** %11, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.connection*, %struct.connection** %11, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.connection*, %struct.connection** %11, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.connection*, %struct.connection** %11, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.connection*, %struct.connection** %11, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.connection*, %struct.connection** %11, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.connection*, %struct.connection** %11, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.connection*, %struct.connection** %11, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.connection*, %struct.connection** %11, align 8
  %105 = getelementptr inbounds %struct.connection, %struct.connection* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.connection*, %struct.connection** %11, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 14
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.connection*, %struct.connection** %11, align 8
  %113 = getelementptr inbounds %struct.connection, %struct.connection* %112, i32 0, i32 14
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.connection*, %struct.connection** %11, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.connection*, %struct.connection** %11, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.connection*, %struct.connection** %11, align 8
  %123 = getelementptr inbounds %struct.connection, %struct.connection* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.connection*, %struct.connection** %11, align 8
  %126 = getelementptr inbounds %struct.connection, %struct.connection* %125, i32 0, i32 17
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sqls_data*, %struct.sqls_data** %12, align 8
  %129 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sqls_data*, %struct.sqls_data** %12, align 8
  %132 = getelementptr inbounds %struct.sqls_data, %struct.sqls_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.connection*, %struct.connection** %11, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 11
  %136 = load double, double* %135, align 8
  %137 = load %struct.connection*, %struct.connection** %11, align 8
  %138 = getelementptr inbounds %struct.connection, %struct.connection* %137, i32 0, i32 12
  %139 = load double, double* %138, align 8
  %140 = call i64 @snprintf(i64 %67, i32 %71, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i64 %99, i32 %103, i32 %107, i32 %111, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133, double %136, double %139)
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %61, %56, %46
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %42

149:                                              ; preds = %42
  %150 = load %struct.connection*, %struct.connection** %5, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i64, i64* @stats_buff, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @return_one_key(%struct.connection* %150, i8* %151, i64 %152, i32 %153)
  store i32 0, i32* %4, align 4
  br label %319

155:                                              ; preds = %37, %34
  %156 = load i32, i32* %7, align 4
  %157 = icmp sge i32 %156, 9
  br i1 %157, label %158, label %207

158:                                              ; preds = %155
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strncmp(i8* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %207, label %162

162:                                              ; preds = %158
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %198, %162
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @MAX_CONNECTIONS, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %201

167:                                              ; preds = %163
  %168 = load %struct.connection*, %struct.connection** @Connections, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.connection, %struct.connection* %168, i64 %170
  store %struct.connection* %171, %struct.connection** %15, align 8
  %172 = load %struct.connection*, %struct.connection** %15, align 8
  %173 = getelementptr inbounds %struct.connection, %struct.connection* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @ct_outbound, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %197

177:                                              ; preds = %167
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %180 = sub nsw i32 %179, 1024
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %177
  %183 = load %struct.connection*, %struct.connection** %15, align 8
  %184 = load i64, i64* @stats_buff, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %189 = sub nsw i32 %188, 6
  %190 = load i32, i32* %14, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i64 @dump_outbound_connection(%struct.connection* %183, i64 %187, i32 %191)
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %14, align 4
  br label %197

197:                                              ; preds = %182, %177, %167
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %163

201:                                              ; preds = %163
  %202 = load %struct.connection*, %struct.connection** %5, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = load i64, i64* @stats_buff, align 8
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @return_one_key(%struct.connection* %202, i8* %203, i64 %204, i32 %205)
  store i32 0, i32* %4, align 4
  br label %319

207:                                              ; preds = %158, %155
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = load %struct.connection*, %struct.connection** %5, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @dbp_get_bad_targets(%struct.connection* %212, i8* %213, i32 %214)
  store i32 0, i32* %4, align 4
  br label %319

216:                                              ; preds = %207
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %300, label %220

220:                                              ; preds = %216
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %221

221:                                              ; preds = %291, %220
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* @allocated_targets, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i64, i64* @R_end, align 8
  %227 = load i64, i64* @R, align 8
  %228 = load i64, i64* @MAX_RES, align 8
  %229 = add nsw i64 %227, %228
  %230 = icmp slt i64 %226, %229
  br label %231

231:                                              ; preds = %225, %221
  %232 = phi i1 [ false, %221 ], [ %230, %225 ]
  br i1 %232, label %233, label %294

233:                                              ; preds = %231
  %234 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %234, i64 %236
  store %struct.conn_target* %237, %struct.conn_target** %18, align 8
  %238 = load %struct.conn_target*, %struct.conn_target** %18, align 8
  %239 = call i32 @assert(%struct.conn_target* %238)
  %240 = load %struct.conn_target*, %struct.conn_target** %18, align 8
  %241 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %290

244:                                              ; preds = %233
  %245 = load %struct.conn_target*, %struct.conn_target** %18, align 8
  %246 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %290, label %249

249:                                              ; preds = %244
  %250 = load %struct.conn_target*, %struct.conn_target** %18, align 8
  %251 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %250, i32 0, i32 1
  %252 = load %struct.connection*, %struct.connection** %251, align 8
  store %struct.connection* %252, %struct.connection** %19, align 8
  br label %253

253:                                              ; preds = %285, %249
  %254 = load %struct.connection*, %struct.connection** %19, align 8
  %255 = load %struct.conn_target*, %struct.conn_target** %18, align 8
  %256 = bitcast %struct.conn_target* %255 to %struct.connection*
  %257 = icmp ne %struct.connection* %254, %256
  br i1 %257, label %258, label %289

258:                                              ; preds = %253
  %259 = load %struct.connection*, %struct.connection** %19, align 8
  %260 = getelementptr inbounds %struct.connection, %struct.connection* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @ct_outbound, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %284

264:                                              ; preds = %258
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %267 = sub nsw i32 %266, 1024
  %268 = icmp slt i32 %265, %267
  br i1 %268, label %269, label %284

269:                                              ; preds = %264
  %270 = load %struct.connection*, %struct.connection** %19, align 8
  %271 = load i64, i64* @stats_buff, align 8
  %272 = load i32, i32* %17, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %271, %273
  %275 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %276 = sub nsw i32 %275, 6
  %277 = load i32, i32* %17, align 4
  %278 = sub nsw i32 %276, %277
  %279 = call i64 @dump_outbound_connection(%struct.connection* %270, i64 %274, i32 %278)
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %279
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %17, align 4
  br label %284

284:                                              ; preds = %269, %264, %258
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.connection*, %struct.connection** %19, align 8
  %287 = getelementptr inbounds %struct.connection, %struct.connection* %286, i32 0, i32 13
  %288 = load %struct.connection*, %struct.connection** %287, align 8
  store %struct.connection* %288, %struct.connection** %19, align 8
  br label %253

289:                                              ; preds = %253
  br label %290

290:                                              ; preds = %289, %244, %233
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %16, align 4
  br label %221

294:                                              ; preds = %231
  %295 = load %struct.connection*, %struct.connection** %5, align 8
  %296 = load i8*, i8** %6, align 8
  %297 = load i64, i64* @stats_buff, align 8
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @return_one_key(%struct.connection* %295, i8* %296, i64 %297, i32 %298)
  store i32 0, i32* %4, align 4
  br label %319

300:                                              ; preds = %216
  %301 = load i8*, i8** %6, align 8
  %302 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %309, label %304

304:                                              ; preds = %300
  %305 = load %struct.connection*, %struct.connection** %5, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @dbp_get_targets(%struct.connection* %305, i8* %306, i32 %307)
  store i32 0, i32* %4, align 4
  br label %319

309:                                              ; preds = %300
  %310 = load i8*, i8** %6, align 8
  %311 = call i32 @strcmp(i8* %310, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %309
  %314 = load %struct.connection*, %struct.connection** %5, align 8
  %315 = load i8*, i8** %6, align 8
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @dbp_get_connections(%struct.connection* %314, i8* %315, i32 %316)
  store i32 0, i32* %4, align 4
  br label %319

318:                                              ; preds = %309
  store i32 0, i32* %4, align 4
  br label %319

319:                                              ; preds = %318, %313, %304, %294, %211, %201, %149, %26
  %320 = load i32, i32* %4, align 4
  ret i32 %320
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @db_proxy_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i64, i32) #1

declare dso_local %struct.sqls_data* @SQLS_DATA(%struct.connection*) #1

declare dso_local i64 @snprintf(i64, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double) #1

declare dso_local i8* @show_ip(i32) #1

declare dso_local i64 @dump_outbound_connection(%struct.connection*, i64, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dbp_get_bad_targets(%struct.connection*, i8*, i32) #1

declare dso_local i32 @assert(%struct.conn_target*) #1

declare dso_local i32 @dbp_get_targets(%struct.connection*, i8*, i32) #1

declare dso_local i32 @dbp_get_connections(%struct.connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
