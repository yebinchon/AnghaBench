; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_read_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, i32, i32, %struct.TYPE_3__*, i64, i32, i32, i64, i64, %struct.TYPE_4__*, i32, %struct.conn_target* }
%struct.TYPE_3__ = type { i64 (%struct.connection*)*, {}*, {}*, i32 (%struct.connection*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.conn_target = type { i32, i32, i32 }

@C_INCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"BEGIN processing connection %d, status=%d, flags=%d, pending=%d; epoll_ready=%d, ev->ready=%d\0A\00", align 1
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"socket %d: disconnected, cleaning\0A\00", align 1
@EVA_DESTROY = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i64 0, align 8
@EVT_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"socket #%d to %s:%d becomes active\0A\00", align 1
@active_outbound_connections = common dso_local global i32 0, align 4
@active_connections = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i64 0, align 8
@C_PERMANENT = common dso_local global i32 0, align 4
@C_WANTRD = common dso_local global i32 0, align 4
@C_WANTWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"socket #%d: ready=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"socket #%d: unknown event before connecting (?)\0A\00", align 1
@EVT_SPEC = common dso_local global i32 0, align 4
@C_ALARM = common dso_local global i32 0, align 4
@conn_wait_net = common dso_local global i64 0, align 8
@conn_wait_aio = common dso_local global i64 0, align 8
@C_DFLUSH = common dso_local global i32 0, align 4
@C_NORD = common dso_local global i32 0, align 4
@C_FAILED = common dso_local global i32 0, align 4
@C_STOPREAD = common dso_local global i32 0, align 4
@C_NOWR = common dso_local global i32 0, align 4
@C_REPARSE = common dso_local global i32 0, align 4
@conn_expect_query = common dso_local global i64 0, align 8
@conn_reading_query = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"server_reader=%d, ready=%02x, state=%02x\0A\00", align 1
@C_RAWMSG = common dso_local global i32 0, align 4
@conn_error = common dso_local global i64 0, align 8
@conn_write_close = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"socket %d: closing and cleaning (error code=%d)\0A\00", align 1
@C_SPECIAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"END processing connection %d, status=%d, flags=%d, pending=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_read_write(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.conn_target*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @C_INCONN, align 4
  %12 = xor i32 %11, -1
  %13 = or i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %6, align 8
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* @C_INCONN, align 4
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @EPOLLHUP, align 4
  %45 = load i32, i32* @EPOLLERR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @EPOLLRDHUP, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %1
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.connection*, %struct.connection** %3, align 8
  %57 = call i32 @force_clear_connection(%struct.connection* %56)
  %58 = load i32, i32* @EVA_DESTROY, align 4
  store i32 %58, i32* %2, align 4
  br label %587

59:                                               ; preds = %1
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @conn_connecting, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %164

65:                                               ; preds = %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @EVT_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %146

72:                                               ; preds = %65
  %73 = load %struct.connection*, %struct.connection** %3, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.connection*, %struct.connection** %3, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 12
  %78 = load %struct.conn_target*, %struct.conn_target** %77, align 8
  %79 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @inet_ntoa(i32 %80)
  %82 = load %struct.connection*, %struct.connection** %3, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 12
  %84 = load %struct.conn_target*, %struct.conn_target** %83, align 8
  %85 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %81, i32 %86)
  %88 = load %struct.connection*, %struct.connection** %3, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 12
  %90 = load %struct.conn_target*, %struct.conn_target** %89, align 8
  store %struct.conn_target* %90, %struct.conn_target** %7, align 8
  %91 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  %92 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @active_outbound_connections, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @active_outbound_connections, align 4
  %97 = load i32, i32* @active_connections, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @active_connections, align 4
  %99 = load i64, i64* @conn_wait_answer, align 8
  %100 = load %struct.connection*, %struct.connection** %3, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.connection*, %struct.connection** %3, align 8
  %103 = getelementptr inbounds %struct.connection, %struct.connection* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @C_PERMANENT, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @C_WANTRD, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @C_INCONN, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.connection*, %struct.connection** %3, align 8
  %112 = getelementptr inbounds %struct.connection, %struct.connection* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.connection*, %struct.connection** %3, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 8
  %117 = bitcast {}** %116 to i32 (%struct.connection*)**
  %118 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %117, align 8
  %119 = load %struct.connection*, %struct.connection** %3, align 8
  %120 = call i32 %118(%struct.connection* %119)
  %121 = load %struct.connection*, %struct.connection** %3, align 8
  %122 = call i64 @out_total_processed_bytes(%struct.connection* %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %72
  %125 = load i32, i32* @C_WANTWR, align 4
  %126 = load %struct.connection*, %struct.connection** %3, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %72
  %131 = load %struct.connection*, %struct.connection** %3, align 8
  %132 = getelementptr inbounds %struct.connection, %struct.connection* %131, i32 0, i32 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 7
  %135 = bitcast {}** %134 to i32 (%struct.connection*)**
  %136 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %135, align 8
  %137 = load %struct.connection*, %struct.connection** %3, align 8
  %138 = call i32 %136(%struct.connection* %137)
  %139 = load %struct.connection*, %struct.connection** %3, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.connection*, %struct.connection** %3, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %130, %65
  %147 = load %struct.connection*, %struct.connection** %3, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @conn_connecting, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.connection*, %struct.connection** %3, align 8
  %155 = getelementptr inbounds %struct.connection, %struct.connection* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.connection*, %struct.connection** %3, align 8
  %159 = getelementptr inbounds %struct.connection, %struct.connection* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @EVT_SPEC, align 4
  store i32 %162, i32* %2, align 4
  br label %587

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163, %59
  %165 = load %struct.connection*, %struct.connection** %3, align 8
  %166 = getelementptr inbounds %struct.connection, %struct.connection* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @C_ALARM, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %164
  %172 = load i32, i32* @C_ALARM, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.connection*, %struct.connection** %3, align 8
  %175 = getelementptr inbounds %struct.connection, %struct.connection* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.connection*, %struct.connection** %3, align 8
  %179 = getelementptr inbounds %struct.connection, %struct.connection* %178, i32 0, i32 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 6
  %182 = bitcast {}** %181 to i32 (%struct.connection*)**
  %183 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %182, align 8
  %184 = load %struct.connection*, %struct.connection** %3, align 8
  %185 = call i32 %183(%struct.connection* %184)
  br label %186

186:                                              ; preds = %171, %164
  %187 = load %struct.connection*, %struct.connection** %3, align 8
  %188 = getelementptr inbounds %struct.connection, %struct.connection* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @conn_wait_net, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load %struct.connection*, %struct.connection** %3, align 8
  %194 = getelementptr inbounds %struct.connection, %struct.connection* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %192
  %198 = load %struct.connection*, %struct.connection** %3, align 8
  %199 = getelementptr inbounds %struct.connection, %struct.connection* %198, i32 0, i32 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 5
  %202 = bitcast {}** %201 to i32 (%struct.connection*)**
  %203 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %202, align 8
  %204 = load %struct.connection*, %struct.connection** %3, align 8
  %205 = call i32 %203(%struct.connection* %204)
  br label %206

206:                                              ; preds = %197, %192, %186
  %207 = load %struct.connection*, %struct.connection** %3, align 8
  %208 = getelementptr inbounds %struct.connection, %struct.connection* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @conn_wait_aio, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %206
  %213 = load %struct.connection*, %struct.connection** %3, align 8
  %214 = getelementptr inbounds %struct.connection, %struct.connection* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %212
  %218 = load %struct.connection*, %struct.connection** %3, align 8
  %219 = getelementptr inbounds %struct.connection, %struct.connection* %218, i32 0, i32 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 5
  %222 = bitcast {}** %221 to i32 (%struct.connection*)**
  %223 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %222, align 8
  %224 = load %struct.connection*, %struct.connection** %3, align 8
  %225 = call i32 %223(%struct.connection* %224)
  br label %226

226:                                              ; preds = %217, %212, %206
  %227 = load %struct.connection*, %struct.connection** %3, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @C_DFLUSH, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %278

233:                                              ; preds = %226
  %234 = load i32, i32* @C_DFLUSH, align 4
  %235 = xor i32 %234, -1
  %236 = load %struct.connection*, %struct.connection** %3, align 8
  %237 = getelementptr inbounds %struct.connection, %struct.connection* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load %struct.connection*, %struct.connection** %3, align 8
  %241 = getelementptr inbounds %struct.connection, %struct.connection* %240, i32 0, i32 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 4
  %244 = bitcast {}** %243 to i32 (%struct.connection*)**
  %245 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %244, align 8
  %246 = load %struct.connection*, %struct.connection** %3, align 8
  %247 = call i32 %245(%struct.connection* %246)
  %248 = load %struct.connection*, %struct.connection** %3, align 8
  %249 = getelementptr inbounds %struct.connection, %struct.connection* %248, i32 0, i32 8
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %233
  %253 = load %struct.connection*, %struct.connection** %3, align 8
  %254 = call i64 @out_total_unprocessed_bytes(%struct.connection* %253)
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %252
  %257 = load %struct.connection*, %struct.connection** %3, align 8
  %258 = getelementptr inbounds %struct.connection, %struct.connection* %257, i32 0, i32 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %260, align 8
  %262 = load %struct.connection*, %struct.connection** %3, align 8
  %263 = call i64 %261(%struct.connection* %262)
  %264 = icmp sge i64 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  br label %267

267:                                              ; preds = %256, %252, %233
  %268 = load %struct.connection*, %struct.connection** %3, align 8
  %269 = call i64 @out_total_processed_bytes(%struct.connection* %268)
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %267
  %272 = load i32, i32* @C_WANTWR, align 4
  %273 = load %struct.connection*, %struct.connection** %3, align 8
  %274 = getelementptr inbounds %struct.connection, %struct.connection* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %271, %267
  br label %278

278:                                              ; preds = %277, %226
  br label %279

279:                                              ; preds = %419, %278
  %280 = load %struct.connection*, %struct.connection** %3, align 8
  %281 = getelementptr inbounds %struct.connection, %struct.connection* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @C_WANTRD, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %279
  %287 = load %struct.connection*, %struct.connection** %3, align 8
  %288 = getelementptr inbounds %struct.connection, %struct.connection* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @C_NORD, align 4
  %291 = load i32, i32* @C_FAILED, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @C_STOPREAD, align 4
  %294 = or i32 %292, %293
  %295 = and i32 %289, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %348

297:                                              ; preds = %286, %279
  %298 = load %struct.connection*, %struct.connection** %3, align 8
  %299 = getelementptr inbounds %struct.connection, %struct.connection* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @C_WANTWR, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %297
  %305 = load %struct.connection*, %struct.connection** %3, align 8
  %306 = getelementptr inbounds %struct.connection, %struct.connection* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @C_NOWR, align 4
  %309 = load i32, i32* @C_FAILED, align 4
  %310 = or i32 %308, %309
  %311 = and i32 %307, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %348

313:                                              ; preds = %304, %297
  %314 = load %struct.connection*, %struct.connection** %3, align 8
  %315 = getelementptr inbounds %struct.connection, %struct.connection* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @C_REPARSE, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %346

320:                                              ; preds = %313
  %321 = load %struct.connection*, %struct.connection** %3, align 8
  %322 = getelementptr inbounds %struct.connection, %struct.connection* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @conn_expect_query, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %344, label %326

326:                                              ; preds = %320
  %327 = load %struct.connection*, %struct.connection** %3, align 8
  %328 = getelementptr inbounds %struct.connection, %struct.connection* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @conn_reading_query, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %344, label %332

332:                                              ; preds = %326
  %333 = load %struct.connection*, %struct.connection** %3, align 8
  %334 = getelementptr inbounds %struct.connection, %struct.connection* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @conn_wait_answer, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %344, label %338

338:                                              ; preds = %332
  %339 = load %struct.connection*, %struct.connection** %3, align 8
  %340 = getelementptr inbounds %struct.connection, %struct.connection* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @conn_reading_answer, align 8
  %343 = icmp eq i64 %341, %342
  br label %344

344:                                              ; preds = %338, %332, %326, %320
  %345 = phi i1 [ true, %332 ], [ true, %326 ], [ true, %320 ], [ %343, %338 ]
  br label %346

346:                                              ; preds = %344, %313
  %347 = phi i1 [ false, %313 ], [ %345, %344 ]
  br label %348

348:                                              ; preds = %346, %304, %286
  %349 = phi i1 [ true, %304 ], [ true, %286 ], [ %347, %346 ]
  br i1 %349, label %350, label %420

350:                                              ; preds = %348
  %351 = load %struct.connection*, %struct.connection** %3, align 8
  %352 = getelementptr inbounds %struct.connection, %struct.connection* %351, i32 0, i32 5
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  br label %420

356:                                              ; preds = %350
  %357 = load %struct.connection*, %struct.connection** %3, align 8
  %358 = call i64 @out_total_processed_bytes(%struct.connection* %357)
  %359 = load %struct.connection*, %struct.connection** %3, align 8
  %360 = call i64 @out_total_unprocessed_bytes(%struct.connection* %359)
  %361 = add nsw i64 %358, %360
  %362 = icmp sgt i64 %361, 0
  br i1 %362, label %363, label %372

363:                                              ; preds = %356
  %364 = load %struct.connection*, %struct.connection** %3, align 8
  %365 = getelementptr inbounds %struct.connection, %struct.connection* %364, i32 0, i32 4
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 1
  %368 = bitcast {}** %367 to i32 (%struct.connection*)**
  %369 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %368, align 8
  %370 = load %struct.connection*, %struct.connection** %3, align 8
  %371 = call i32 %369(%struct.connection* %370)
  store i32 %371, i32* %4, align 4
  br label %372

372:                                              ; preds = %363, %356
  %373 = load %struct.connection*, %struct.connection** %3, align 8
  %374 = getelementptr inbounds %struct.connection, %struct.connection* %373, i32 0, i32 4
  %375 = load %struct.TYPE_3__*, %struct.TYPE_3__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 2
  %377 = bitcast {}** %376 to i32 (%struct.connection*)**
  %378 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %377, align 8
  %379 = load %struct.connection*, %struct.connection** %3, align 8
  %380 = call i32 %378(%struct.connection* %379)
  store i32 %380, i32* %4, align 4
  %381 = load i32, i32* %4, align 4
  %382 = load %struct.connection*, %struct.connection** %3, align 8
  %383 = getelementptr inbounds %struct.connection, %struct.connection* %382, i32 0, i32 10
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.connection*, %struct.connection** %3, align 8
  %388 = getelementptr inbounds %struct.connection, %struct.connection* %387, i32 0, i32 10
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %381, i32 %386, i32 %391)
  %393 = load i32, i32* %4, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %400, label %395

395:                                              ; preds = %372
  %396 = load %struct.connection*, %struct.connection** %3, align 8
  %397 = getelementptr inbounds %struct.connection, %struct.connection* %396, i32 0, i32 9
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %395, %372
  br label %420

401:                                              ; preds = %395
  %402 = load %struct.connection*, %struct.connection** %3, align 8
  %403 = call i64 @out_total_processed_bytes(%struct.connection* %402)
  %404 = icmp sgt i64 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %401
  %406 = load i32, i32* @C_WANTWR, align 4
  %407 = load %struct.connection*, %struct.connection** %3, align 8
  %408 = getelementptr inbounds %struct.connection, %struct.connection* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %406
  store i32 %410, i32* %408, align 8
  %411 = load %struct.connection*, %struct.connection** %3, align 8
  %412 = getelementptr inbounds %struct.connection, %struct.connection* %411, i32 0, i32 4
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 1
  %415 = bitcast {}** %414 to i32 (%struct.connection*)**
  %416 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %415, align 8
  %417 = load %struct.connection*, %struct.connection** %3, align 8
  %418 = call i32 %416(%struct.connection* %417)
  store i32 %418, i32* %4, align 4
  br label %419

419:                                              ; preds = %405, %401
  br label %279

420:                                              ; preds = %400, %355, %348
  %421 = load %struct.connection*, %struct.connection** %3, align 8
  %422 = getelementptr inbounds %struct.connection, %struct.connection* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @C_DFLUSH, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %462

427:                                              ; preds = %420
  %428 = load i32, i32* @C_DFLUSH, align 4
  %429 = xor i32 %428, -1
  %430 = load %struct.connection*, %struct.connection** %3, align 8
  %431 = getelementptr inbounds %struct.connection, %struct.connection* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = and i32 %432, %429
  store i32 %433, i32* %431, align 8
  %434 = load %struct.connection*, %struct.connection** %3, align 8
  %435 = getelementptr inbounds %struct.connection, %struct.connection* %434, i32 0, i32 4
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 4
  %438 = bitcast {}** %437 to i32 (%struct.connection*)**
  %439 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %438, align 8
  %440 = load %struct.connection*, %struct.connection** %3, align 8
  %441 = call i32 %439(%struct.connection* %440)
  %442 = load %struct.connection*, %struct.connection** %3, align 8
  %443 = getelementptr inbounds %struct.connection, %struct.connection* %442, i32 0, i32 8
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %461

446:                                              ; preds = %427
  %447 = load %struct.connection*, %struct.connection** %3, align 8
  %448 = call i64 @out_total_unprocessed_bytes(%struct.connection* %447)
  %449 = icmp sgt i64 %448, 0
  br i1 %449, label %450, label %461

450:                                              ; preds = %446
  %451 = load %struct.connection*, %struct.connection** %3, align 8
  %452 = getelementptr inbounds %struct.connection, %struct.connection* %451, i32 0, i32 4
  %453 = load %struct.TYPE_3__*, %struct.TYPE_3__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 0
  %455 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %454, align 8
  %456 = load %struct.connection*, %struct.connection** %3, align 8
  %457 = call i64 %455(%struct.connection* %456)
  %458 = icmp sge i64 %457, 0
  %459 = zext i1 %458 to i32
  %460 = call i32 @assert(i32 %459)
  br label %461

461:                                              ; preds = %450, %446, %427
  br label %462

462:                                              ; preds = %461, %420
  %463 = load %struct.connection*, %struct.connection** %3, align 8
  %464 = call i64 @out_total_processed_bytes(%struct.connection* %463)
  %465 = icmp sgt i64 %464, 0
  br i1 %465, label %466, label %494

466:                                              ; preds = %462
  %467 = load i32, i32* @C_WANTWR, align 4
  %468 = load %struct.connection*, %struct.connection** %3, align 8
  %469 = getelementptr inbounds %struct.connection, %struct.connection* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = or i32 %470, %467
  store i32 %471, i32* %469, align 8
  %472 = load %struct.connection*, %struct.connection** %3, align 8
  %473 = getelementptr inbounds %struct.connection, %struct.connection* %472, i32 0, i32 4
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 1
  %476 = bitcast {}** %475 to i32 (%struct.connection*)**
  %477 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %476, align 8
  %478 = load %struct.connection*, %struct.connection** %3, align 8
  %479 = call i32 %477(%struct.connection* %478)
  %480 = load %struct.connection*, %struct.connection** %3, align 8
  %481 = getelementptr inbounds %struct.connection, %struct.connection* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @C_RAWMSG, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %493, label %486

486:                                              ; preds = %466
  %487 = load %struct.connection*, %struct.connection** %3, align 8
  %488 = getelementptr inbounds %struct.connection, %struct.connection* %487, i32 0, i32 7
  %489 = call i32 @free_unused_buffers(i32* %488)
  %490 = load %struct.connection*, %struct.connection** %3, align 8
  %491 = getelementptr inbounds %struct.connection, %struct.connection* %490, i32 0, i32 6
  %492 = call i32 @free_unused_buffers(i32* %491)
  br label %493

493:                                              ; preds = %486, %466
  br label %494

494:                                              ; preds = %493, %462
  %495 = load %struct.connection*, %struct.connection** %3, align 8
  %496 = getelementptr inbounds %struct.connection, %struct.connection* %495, i32 0, i32 5
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %525, label %499

499:                                              ; preds = %494
  %500 = load %struct.connection*, %struct.connection** %3, align 8
  %501 = getelementptr inbounds %struct.connection, %struct.connection* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @conn_error, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %525, label %505

505:                                              ; preds = %499
  %506 = load %struct.connection*, %struct.connection** %3, align 8
  %507 = getelementptr inbounds %struct.connection, %struct.connection* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @conn_write_close, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %518

511:                                              ; preds = %505
  %512 = load %struct.connection*, %struct.connection** %3, align 8
  %513 = getelementptr inbounds %struct.connection, %struct.connection* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @C_WANTWR, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %525

518:                                              ; preds = %511, %505
  %519 = load %struct.connection*, %struct.connection** %3, align 8
  %520 = getelementptr inbounds %struct.connection, %struct.connection* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @C_FAILED, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %566

525:                                              ; preds = %518, %511, %499, %494
  %526 = load %struct.connection*, %struct.connection** %3, align 8
  %527 = getelementptr inbounds %struct.connection, %struct.connection* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.connection*, %struct.connection** %3, align 8
  %530 = getelementptr inbounds %struct.connection, %struct.connection* %529, i32 0, i32 5
  %531 = load i64, i64* %530, align 8
  %532 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %528, i64 %531)
  %533 = load %struct.connection*, %struct.connection** %3, align 8
  %534 = getelementptr inbounds %struct.connection, %struct.connection* %533, i32 0, i32 1
  %535 = load i64, i64* %534, align 8
  %536 = load i64, i64* @conn_connecting, align 8
  %537 = icmp ne i64 %535, %536
  br i1 %537, label %538, label %551

538:                                              ; preds = %525
  %539 = load i32, i32* @active_connections, align 4
  %540 = add nsw i32 %539, -1
  store i32 %540, i32* @active_connections, align 4
  %541 = load %struct.connection*, %struct.connection** %3, align 8
  %542 = getelementptr inbounds %struct.connection, %struct.connection* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @C_SPECIAL, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %538
  %548 = load %struct.connection*, %struct.connection** %3, align 8
  %549 = call i32 @close_special_connection(%struct.connection* %548)
  br label %550

550:                                              ; preds = %547, %538
  br label %551

551:                                              ; preds = %550, %525
  %552 = load %struct.connection*, %struct.connection** %3, align 8
  %553 = getelementptr inbounds %struct.connection, %struct.connection* %552, i32 0, i32 4
  %554 = load %struct.TYPE_3__*, %struct.TYPE_3__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %554, i32 0, i32 3
  %556 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %555, align 8
  %557 = load %struct.connection*, %struct.connection** %3, align 8
  %558 = call i32 %556(%struct.connection* %557, i32 0)
  %559 = load %struct.connection*, %struct.connection** %3, align 8
  %560 = call i32 @clear_connection_timeout(%struct.connection* %559)
  %561 = load %struct.connection*, %struct.connection** %3, align 8
  %562 = call i32 @memset(%struct.connection* %561, i32 0, i32 88)
  %563 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %563, i32 0, i32 2
  store i64 0, i64* %564, align 8
  %565 = load i32, i32* @EVA_DESTROY, align 4
  store i32 %565, i32* %2, align 4
  br label %587

566:                                              ; preds = %518
  %567 = load i32, i32* %5, align 4
  %568 = load %struct.connection*, %struct.connection** %3, align 8
  %569 = getelementptr inbounds %struct.connection, %struct.connection* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = and i32 %570, %567
  store i32 %571, i32* %569, align 8
  %572 = load %struct.connection*, %struct.connection** %3, align 8
  %573 = getelementptr inbounds %struct.connection, %struct.connection* %572, i32 0, i32 3
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.connection*, %struct.connection** %3, align 8
  %576 = getelementptr inbounds %struct.connection, %struct.connection* %575, i32 0, i32 1
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.connection*, %struct.connection** %3, align 8
  %579 = getelementptr inbounds %struct.connection, %struct.connection* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = load %struct.connection*, %struct.connection** %3, align 8
  %582 = getelementptr inbounds %struct.connection, %struct.connection* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %574, i64 %577, i32 %580, i32 %583)
  %585 = load %struct.connection*, %struct.connection** %3, align 8
  %586 = call i32 @compute_conn_events(%struct.connection* %585)
  store i32 %586, i32* %2, align 4
  br label %587

587:                                              ; preds = %566, %551, %152, %51
  %588 = load i32, i32* %2, align 4
  ret i32 %588
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @force_clear_connection(%struct.connection*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i64 @out_total_processed_bytes(%struct.connection*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i64 @out_total_unprocessed_bytes(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

declare dso_local i32 @close_special_connection(%struct.connection*) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @compute_conn_events(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
