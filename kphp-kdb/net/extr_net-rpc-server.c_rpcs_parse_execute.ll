; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 (%struct.connection*)*, {}* }
%struct.rpcs_data = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 (%struct.connection*)*, i32 (%struct.connection*, i64, i32)*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_5__* }

@conn_reading_query = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"switching to memcache fallback for connection %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"memcache init_accepted() returns error for connection %d\0A\00", align 1
@conn_error = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"switching to http fallback for connection %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"http init_accepted() returns error for connection %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"error while parsing packet: bad packet length %d\0A\00", align 1
@rpc_disable_crc32_check = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"error while parsing packet: crc32 = %08x != %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"received packet from connection %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"error while parsing packet: got packet num %d, expected %d\0A\00", align 1
@conn_running = common dso_local global i64 0, align 8
@RPC_PING = common dso_local global i64 0, align 8
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i64 0, align 8
@conn_wait_aio = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcs_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %11)
  store %struct.rpcs_data* %12, %struct.rpcs_data** %4, align 8
  br label %13

13:                                               ; preds = %1, %307, %729
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 4
  %16 = call i32 @nbit_total_ready_bytes(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %735

20:                                               ; preds = %13
  %21 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %22 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %302, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** @conn_reading_query, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 4, %33
  store i32 %34, i32* %2, align 4
  br label %736

35:                                               ; preds = %25
  %36 = load %struct.connection*, %struct.connection** %3, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 4
  %38 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %39 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %38, i32 0, i32 0
  %40 = call i32 @nbit_read_in(i32* %37, i32* %39, i32 4)
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %47 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 512
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %35
  %52 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %53 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 2147483647
  %56 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %57 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, -2147483648
  %60 = or i32 %55, %59
  %61 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %62 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %64 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 2147483647
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %51, %35
  %68 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %69 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ule i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %74 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, -1073741821
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %276

78:                                               ; preds = %72, %67
  %79 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %80 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %81, -2
  br i1 %82, label %83, label %187

83:                                               ; preds = %78
  %84 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %85 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1701602660
  br i1 %87, label %128, label %88

88:                                               ; preds = %83
  %89 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %90 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1952543859
  br i1 %92, label %128, label %93

93:                                               ; preds = %88
  %94 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %95 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 1936876918
  br i1 %97, label %128, label %98

98:                                               ; preds = %93
  %99 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %100 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 544499047
  br i1 %102, label %128, label %103

103:                                              ; preds = %98
  %104 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %105 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 544499059
  br i1 %107, label %128, label %108

108:                                              ; preds = %103
  %109 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %110 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 543450209
  br i1 %112, label %128, label %113

113:                                              ; preds = %108
  %114 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %115 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1819305330
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %120 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1919118953
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %125 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1919116644
  br i1 %127, label %128, label %187

128:                                              ; preds = %123, %118, %113, %108, %103, %98, %93, %88, %83
  %129 = load %struct.connection*, %struct.connection** %3, align 8
  %130 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %129)
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = icmp ne %struct.TYPE_5__* %132, null
  br i1 %133, label %134, label %187

134:                                              ; preds = %128
  %135 = load %struct.connection*, %struct.connection** %3, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load %struct.connection*, %struct.connection** %3, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memset(i32 %141, i32 0, i32 4)
  %143 = load %struct.connection*, %struct.connection** %3, align 8
  %144 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load %struct.connection*, %struct.connection** %3, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 6
  store %struct.TYPE_5__* %146, %struct.TYPE_5__** %148, align 8
  %149 = load %struct.connection*, %struct.connection** %3, align 8
  %150 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %149)
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.connection*, %struct.connection** %3, align 8
  %154 = getelementptr inbounds %struct.connection, %struct.connection* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 8
  %155 = load %struct.connection*, %struct.connection** %3, align 8
  %156 = getelementptr inbounds %struct.connection, %struct.connection* %155, i32 0, i32 6
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %158, align 8
  %160 = load %struct.connection*, %struct.connection** %3, align 8
  %161 = call i64 %159(%struct.connection* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %134
  %164 = load %struct.connection*, %struct.connection** %3, align 8
  %165 = getelementptr inbounds %struct.connection, %struct.connection* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load i64, i64* @conn_error, align 8
  %169 = load %struct.connection*, %struct.connection** %3, align 8
  %170 = getelementptr inbounds %struct.connection, %struct.connection* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.connection*, %struct.connection** %3, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 2
  store i32 -33, i32* %172, align 4
  store i32 0, i32* %2, align 4
  br label %736

173:                                              ; preds = %134
  %174 = load %struct.connection*, %struct.connection** %3, align 8
  %175 = getelementptr inbounds %struct.connection, %struct.connection* %174, i32 0, i32 4
  %176 = load %struct.connection*, %struct.connection** %3, align 8
  %177 = getelementptr inbounds %struct.connection, %struct.connection* %176, i32 0, i32 3
  %178 = call i32 @nbit_set(i32* %175, %struct.TYPE_6__* %177)
  %179 = load %struct.connection*, %struct.connection** %3, align 8
  %180 = getelementptr inbounds %struct.connection, %struct.connection* %179, i32 0, i32 6
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = bitcast {}** %182 to i32 (%struct.connection*)**
  %184 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %183, align 8
  %185 = load %struct.connection*, %struct.connection** %3, align 8
  %186 = call i32 %184(%struct.connection* %185)
  store i32 %186, i32* %2, align 4
  br label %736

187:                                              ; preds = %128, %123, %78
  %188 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %189 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp sle i32 %190, -2
  br i1 %191, label %192, label %266

192:                                              ; preds = %187
  %193 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %194 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 1145128264
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %199 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 1414745936
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %204 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 542393671
  br i1 %206, label %207, label %266

207:                                              ; preds = %202, %197, %192
  %208 = load %struct.connection*, %struct.connection** %3, align 8
  %209 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %208)
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = icmp ne %struct.TYPE_5__* %211, null
  br i1 %212, label %213, label %266

213:                                              ; preds = %207
  %214 = load %struct.connection*, %struct.connection** %3, align 8
  %215 = getelementptr inbounds %struct.connection, %struct.connection* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %216)
  %218 = load %struct.connection*, %struct.connection** %3, align 8
  %219 = getelementptr inbounds %struct.connection, %struct.connection* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @memset(i32 %220, i32 0, i32 4)
  %222 = load %struct.connection*, %struct.connection** %3, align 8
  %223 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %222)
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = load %struct.connection*, %struct.connection** %3, align 8
  %227 = getelementptr inbounds %struct.connection, %struct.connection* %226, i32 0, i32 6
  store %struct.TYPE_5__* %225, %struct.TYPE_5__** %227, align 8
  %228 = load %struct.connection*, %struct.connection** %3, align 8
  %229 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %228)
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.connection*, %struct.connection** %3, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 7
  store i32 %231, i32* %233, align 8
  %234 = load %struct.connection*, %struct.connection** %3, align 8
  %235 = getelementptr inbounds %struct.connection, %struct.connection* %234, i32 0, i32 6
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %237, align 8
  %239 = load %struct.connection*, %struct.connection** %3, align 8
  %240 = call i64 %238(%struct.connection* %239)
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %213
  %243 = load %struct.connection*, %struct.connection** %3, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %245)
  %247 = load i64, i64* @conn_error, align 8
  %248 = load %struct.connection*, %struct.connection** %3, align 8
  %249 = getelementptr inbounds %struct.connection, %struct.connection* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = load %struct.connection*, %struct.connection** %3, align 8
  %251 = getelementptr inbounds %struct.connection, %struct.connection* %250, i32 0, i32 2
  store i32 -33, i32* %251, align 4
  store i32 0, i32* %2, align 4
  br label %736

252:                                              ; preds = %213
  %253 = load %struct.connection*, %struct.connection** %3, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 4
  %255 = load %struct.connection*, %struct.connection** %3, align 8
  %256 = getelementptr inbounds %struct.connection, %struct.connection* %255, i32 0, i32 3
  %257 = call i32 @nbit_set(i32* %254, %struct.TYPE_6__* %256)
  %258 = load %struct.connection*, %struct.connection** %3, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 6
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = bitcast {}** %261 to i32 (%struct.connection*)**
  %263 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %262, align 8
  %264 = load %struct.connection*, %struct.connection** %3, align 8
  %265 = call i32 %263(%struct.connection* %264)
  store i32 %265, i32* %2, align 4
  br label %736

266:                                              ; preds = %207, %202, %187
  %267 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %268 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %269)
  %271 = load i64, i64* @conn_error, align 8
  %272 = load %struct.connection*, %struct.connection** %3, align 8
  %273 = getelementptr inbounds %struct.connection, %struct.connection* %272, i32 0, i32 0
  store i64 %271, i64* %273, align 8
  %274 = load %struct.connection*, %struct.connection** %3, align 8
  %275 = getelementptr inbounds %struct.connection, %struct.connection* %274, i32 0, i32 2
  store i32 -1, i32* %275, align 4
  store i32 0, i32* %2, align 4
  br label %736

276:                                              ; preds = %72
  %277 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %278 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.connection*, %struct.connection** %3, align 8
  %281 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %280)
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ugt i32 %279, %283
  br i1 %284, label %285, label %301

285:                                              ; preds = %276
  %286 = load %struct.connection*, %struct.connection** %3, align 8
  %287 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %286)
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %285
  %292 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %293 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %294)
  %296 = load i64, i64* @conn_error, align 8
  %297 = load %struct.connection*, %struct.connection** %3, align 8
  %298 = getelementptr inbounds %struct.connection, %struct.connection* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load %struct.connection*, %struct.connection** %3, align 8
  %300 = getelementptr inbounds %struct.connection, %struct.connection* %299, i32 0, i32 2
  store i32 -1, i32* %300, align 4
  store i32 0, i32* %2, align 4
  br label %736

301:                                              ; preds = %285, %276
  br label %302

302:                                              ; preds = %301, %20
  %303 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %304 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 4
  br i1 %306, label %307, label %321

307:                                              ; preds = %302
  %308 = load %struct.connection*, %struct.connection** %3, align 8
  %309 = getelementptr inbounds %struct.connection, %struct.connection* %308, i32 0, i32 3
  %310 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %309, i32 4)
  %311 = icmp eq i32 %310, 4
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %315 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %314, i32 0, i32 0
  store i32 0, i32* %315, align 8
  %316 = load %struct.connection*, %struct.connection** %3, align 8
  %317 = getelementptr inbounds %struct.connection, %struct.connection* %316, i32 0, i32 4
  %318 = load %struct.connection*, %struct.connection** %3, align 8
  %319 = getelementptr inbounds %struct.connection, %struct.connection* %318, i32 0, i32 3
  %320 = call i32 @nbit_set(i32* %317, %struct.TYPE_6__* %319)
  br label %13

321:                                              ; preds = %302
  %322 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %323 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp ult i32 %324, 16
  br i1 %325, label %326, label %336

326:                                              ; preds = %321
  %327 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %328 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %329)
  %331 = load i64, i64* @conn_error, align 8
  %332 = load %struct.connection*, %struct.connection** %3, align 8
  %333 = getelementptr inbounds %struct.connection, %struct.connection* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  %334 = load %struct.connection*, %struct.connection** %3, align 8
  %335 = getelementptr inbounds %struct.connection, %struct.connection* %334, i32 0, i32 2
  store i32 -1, i32* %335, align 4
  store i32 0, i32* %2, align 4
  br label %736

336:                                              ; preds = %321
  %337 = load i32, i32* %5, align 4
  %338 = add nsw i32 %337, 4
  %339 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %340 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp ult i32 %338, %341
  br i1 %342, label %343, label %354

343:                                              ; preds = %336
  %344 = load i8*, i8** @conn_reading_query, align 8
  %345 = ptrtoint i8* %344 to i64
  %346 = load %struct.connection*, %struct.connection** %3, align 8
  %347 = getelementptr inbounds %struct.connection, %struct.connection* %346, i32 0, i32 0
  store i64 %345, i64* %347, align 8
  %348 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %349 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* %5, align 4
  %352 = sub i32 %350, %351
  %353 = sub i32 %352, 4
  store i32 %353, i32* %2, align 4
  br label %736

354:                                              ; preds = %336
  %355 = load %struct.connection*, %struct.connection** %3, align 8
  %356 = getelementptr inbounds %struct.connection, %struct.connection* %355, i32 0, i32 4
  %357 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %358 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %357, i32 0, i32 4
  %359 = call i32 @nbit_read_in(i32* %356, i32* %358, i32 8)
  %360 = icmp eq i32 %359, 8
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  store i32 0, i32* %6, align 4
  %363 = load i32, i32* @rpc_disable_crc32_check, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %384, label %365

365:                                              ; preds = %354
  %366 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %367 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %366, i32 0, i32 0
  %368 = bitcast i32* %367 to i8*
  %369 = call i32 @crc32_partial(i8* %368, i32 12, i32 -1)
  store i32 %369, i32* %6, align 4
  %370 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %371 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %365
  %375 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %376 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, 512
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i32, i32* %6, align 4
  %382 = xor i32 %381, 1716846671
  store i32 %382, i32* %6, align 4
  br label %383

383:                                              ; preds = %380, %374, %365
  br label %384

384:                                              ; preds = %383, %354
  %385 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %386 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = sub i32 %387, 16
  store i32 %388, i32* %5, align 4
  br label %389

389:                                              ; preds = %416, %384
  %390 = load i32, i32* %5, align 4
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %428

392:                                              ; preds = %389
  %393 = load %struct.connection*, %struct.connection** %3, align 8
  %394 = getelementptr inbounds %struct.connection, %struct.connection* %393, i32 0, i32 4
  %395 = call i32 @nbit_ready_bytes(i32* %394)
  store i32 %395, i32* %7, align 4
  %396 = load %struct.connection*, %struct.connection** %3, align 8
  %397 = getelementptr inbounds %struct.connection, %struct.connection* %396, i32 0, i32 4
  %398 = call i8* @nbit_get_ptr(i32* %397)
  store i8* %398, i8** %8, align 8
  %399 = load i32, i32* %7, align 4
  %400 = load i32, i32* %5, align 4
  %401 = icmp sgt i32 %399, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %392
  %403 = load i32, i32* %5, align 4
  store i32 %403, i32* %7, align 4
  br label %404

404:                                              ; preds = %402, %392
  %405 = load i32, i32* %7, align 4
  %406 = icmp sgt i32 %405, 0
  %407 = zext i1 %406 to i32
  %408 = call i32 @assert(i32 %407)
  %409 = load i32, i32* @rpc_disable_crc32_check, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %416, label %411

411:                                              ; preds = %404
  %412 = load i8*, i8** %8, align 8
  %413 = load i32, i32* %7, align 4
  %414 = load i32, i32* %6, align 4
  %415 = call i32 @crc32_partial(i8* %412, i32 %413, i32 %414)
  store i32 %415, i32* %6, align 4
  br label %416

416:                                              ; preds = %411, %404
  %417 = load i32, i32* %7, align 4
  %418 = load i32, i32* %5, align 4
  %419 = sub nsw i32 %418, %417
  store i32 %419, i32* %5, align 4
  %420 = load %struct.connection*, %struct.connection** %3, align 8
  %421 = getelementptr inbounds %struct.connection, %struct.connection* %420, i32 0, i32 4
  %422 = load i32, i32* %7, align 4
  %423 = call i32 @nbit_advance(i32* %421, i32 %422)
  %424 = load i32, i32* %7, align 4
  %425 = icmp eq i32 %423, %424
  %426 = zext i1 %425 to i32
  %427 = call i32 @assert(i32 %426)
  br label %389

428:                                              ; preds = %389
  %429 = load i32, i32* %5, align 4
  %430 = icmp ne i32 %429, 0
  %431 = xor i1 %430, true
  %432 = zext i1 %431 to i32
  %433 = call i32 @assert(i32 %432)
  %434 = load %struct.connection*, %struct.connection** %3, align 8
  %435 = getelementptr inbounds %struct.connection, %struct.connection* %434, i32 0, i32 4
  %436 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %437 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %436, i32 0, i32 5
  %438 = call i32 @nbit_read_in(i32* %435, i32* %437, i32 4)
  %439 = icmp eq i32 %438, 4
  %440 = zext i1 %439 to i32
  %441 = call i32 @assert(i32 %440)
  %442 = load i32, i32* %6, align 4
  %443 = xor i32 %442, -1
  %444 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %445 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %443, %446
  br i1 %447, label %448, label %470

448:                                              ; preds = %428
  %449 = load i32, i32* @rpc_disable_crc32_check, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %470, label %451

451:                                              ; preds = %448
  %452 = load i32, i32* @verbosity, align 4
  %453 = icmp sgt i32 %452, 0
  br i1 %453, label %454, label %464

454:                                              ; preds = %451
  %455 = load %struct.connection*, %struct.connection** %3, align 8
  %456 = call i32 @dump_next_packet(%struct.connection* %455)
  %457 = load i32, i32* @stderr, align 4
  %458 = load i32, i32* %6, align 4
  %459 = xor i32 %458, -1
  %460 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %461 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 4
  %463 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %457, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %459, i32 %462)
  br label %464

464:                                              ; preds = %454, %451
  %465 = load i64, i64* @conn_error, align 8
  %466 = load %struct.connection*, %struct.connection** %3, align 8
  %467 = getelementptr inbounds %struct.connection, %struct.connection* %466, i32 0, i32 0
  store i64 %465, i64* %467, align 8
  %468 = load %struct.connection*, %struct.connection** %3, align 8
  %469 = getelementptr inbounds %struct.connection, %struct.connection* %468, i32 0, i32 2
  store i32 -1, i32* %469, align 4
  store i32 0, i32* %2, align 4
  br label %736

470:                                              ; preds = %448, %428
  %471 = load i32, i32* @verbosity, align 4
  %472 = icmp sgt i32 %471, 2
  br i1 %472, label %473, label %481

473:                                              ; preds = %470
  %474 = load i32, i32* @stderr, align 4
  %475 = load %struct.connection*, %struct.connection** %3, align 8
  %476 = getelementptr inbounds %struct.connection, %struct.connection* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %474, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %477)
  %479 = load %struct.connection*, %struct.connection** %3, align 8
  %480 = call i32 @dump_next_packet(%struct.connection* %479)
  br label %481

481:                                              ; preds = %473, %470
  %482 = load %struct.connection*, %struct.connection** %3, align 8
  %483 = getelementptr inbounds %struct.connection, %struct.connection* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  store i32 %485, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %486 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %487 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = icmp eq i32 %488, -3
  br i1 %489, label %490, label %493

490:                                              ; preds = %481
  %491 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %492 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %491, i32 0, i32 3
  store i32 0, i32* %492, align 4
  br label %493

493:                                              ; preds = %490, %481
  %494 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %495 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = and i32 %496, 256
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %520, label %499

499:                                              ; preds = %493
  %500 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %501 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %500, i32 0, i32 4
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %504 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %502, %505
  br i1 %506, label %507, label %520

507:                                              ; preds = %499
  %508 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %509 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %512 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %511, i32 0, i32 3
  %513 = load i32, i32* %512, align 4
  %514 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %510, i32 %513)
  %515 = load i64, i64* @conn_error, align 8
  %516 = load %struct.connection*, %struct.connection** %3, align 8
  %517 = getelementptr inbounds %struct.connection, %struct.connection* %516, i32 0, i32 0
  store i64 %515, i64* %517, align 8
  %518 = load %struct.connection*, %struct.connection** %3, align 8
  %519 = getelementptr inbounds %struct.connection, %struct.connection* %518, i32 0, i32 2
  store i32 -1, i32* %519, align 4
  store i32 0, i32* %2, align 4
  br label %736

520:                                              ; preds = %499, %493
  %521 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %522 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %521, i32 0, i32 4
  %523 = load i32, i32* %522, align 8
  %524 = icmp ult i32 %523, 0
  br i1 %524, label %525, label %581

525:                                              ; preds = %520
  %526 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %527 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %526, i32 0, i32 4
  %528 = load i32, i32* %527, align 8
  %529 = icmp eq i32 %528, -2
  br i1 %529, label %530, label %536

530:                                              ; preds = %525
  %531 = load i64, i64* @conn_running, align 8
  %532 = load %struct.connection*, %struct.connection** %3, align 8
  %533 = getelementptr inbounds %struct.connection, %struct.connection* %532, i32 0, i32 0
  store i64 %531, i64* %533, align 8
  %534 = load %struct.connection*, %struct.connection** %3, align 8
  %535 = call i32 @rpcs_process_nonce_packet(%struct.connection* %534)
  store i32 %535, i32* %10, align 4
  br label %570

536:                                              ; preds = %525
  %537 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %538 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %537, i32 0, i32 4
  %539 = load i32, i32* %538, align 8
  %540 = icmp eq i32 %539, -1
  br i1 %540, label %541, label %569

541:                                              ; preds = %536
  %542 = load i64, i64* @conn_running, align 8
  %543 = load %struct.connection*, %struct.connection** %3, align 8
  %544 = getelementptr inbounds %struct.connection, %struct.connection* %543, i32 0, i32 0
  store i64 %542, i64* %544, align 8
  %545 = load %struct.connection*, %struct.connection** %3, align 8
  %546 = call i32 @rpcs_process_handshake_packet(%struct.connection* %545)
  store i32 %546, i32* %10, align 4
  %547 = load i32, i32* %10, align 4
  %548 = icmp sge i32 %547, 0
  br i1 %548, label %549, label %568

549:                                              ; preds = %541
  %550 = load %struct.connection*, %struct.connection** %3, align 8
  %551 = call i32 @rpcs_send_handshake_packet(%struct.connection* %550)
  store i32 %551, i32* %10, align 4
  %552 = load i32, i32* %10, align 4
  %553 = icmp sge i32 %552, 0
  br i1 %553, label %554, label %567

554:                                              ; preds = %549
  %555 = load %struct.connection*, %struct.connection** %3, align 8
  %556 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %555)
  %557 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %556, i32 0, i32 1
  %558 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %557, align 8
  %559 = icmp ne i32 (%struct.connection*)* %558, null
  br i1 %559, label %560, label %567

560:                                              ; preds = %554
  %561 = load %struct.connection*, %struct.connection** %3, align 8
  %562 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %561)
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %562, i32 0, i32 1
  %564 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %563, align 8
  %565 = load %struct.connection*, %struct.connection** %3, align 8
  %566 = call i32 %564(%struct.connection* %565)
  store i32 %566, i32* %10, align 4
  br label %567

567:                                              ; preds = %560, %554, %549
  br label %568

568:                                              ; preds = %567, %541
  br label %569

569:                                              ; preds = %568, %536
  br label %570

570:                                              ; preds = %569, %530
  %571 = load i32, i32* %10, align 4
  %572 = icmp slt i32 %571, 0
  br i1 %572, label %573, label %580

573:                                              ; preds = %570
  %574 = load i64, i64* @conn_error, align 8
  %575 = load %struct.connection*, %struct.connection** %3, align 8
  %576 = getelementptr inbounds %struct.connection, %struct.connection* %575, i32 0, i32 0
  store i64 %574, i64* %576, align 8
  %577 = load i32, i32* %10, align 4
  %578 = load %struct.connection*, %struct.connection** %3, align 8
  %579 = getelementptr inbounds %struct.connection, %struct.connection* %578, i32 0, i32 2
  store i32 %577, i32* %579, align 4
  store i32 0, i32* %2, align 4
  br label %736

580:                                              ; preds = %570
  br label %613

581:                                              ; preds = %520
  %582 = load i64, i64* @conn_running, align 8
  %583 = load %struct.connection*, %struct.connection** %3, align 8
  %584 = getelementptr inbounds %struct.connection, %struct.connection* %583, i32 0, i32 0
  store i64 %582, i64* %584, align 8
  %585 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %586 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %585, i32 0, i32 6
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @RPC_PING, align 8
  %589 = icmp eq i64 %587, %588
  br i1 %589, label %590, label %599

590:                                              ; preds = %581
  %591 = load %struct.connection*, %struct.connection** %3, align 8
  %592 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %593 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %592, i32 0, i32 6
  %594 = load i64, i64* %593, align 8
  %595 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %596 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = call i32 @rpcs_default_execute(%struct.connection* %591, i64 %594, i32 %597)
  store i32 %598, i32* %10, align 4
  br label %612

599:                                              ; preds = %581
  %600 = load %struct.connection*, %struct.connection** %3, align 8
  %601 = call %struct.TYPE_7__* @RPCS_FUNC(%struct.connection* %600)
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 2
  %603 = load i32 (%struct.connection*, i64, i32)*, i32 (%struct.connection*, i64, i32)** %602, align 8
  %604 = load %struct.connection*, %struct.connection** %3, align 8
  %605 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %606 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %605, i32 0, i32 6
  %607 = load i64, i64* %606, align 8
  %608 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %609 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = call i32 %603(%struct.connection* %604, i64 %607, i32 %610)
  store i32 %611, i32* %10, align 4
  br label %612

612:                                              ; preds = %599, %590
  br label %613

613:                                              ; preds = %612, %580
  br label %614

614:                                              ; preds = %613
  %615 = load %struct.connection*, %struct.connection** %3, align 8
  %616 = getelementptr inbounds %struct.connection, %struct.connection* %615, i32 0, i32 0
  %617 = load i64, i64* %616, align 8
  %618 = load i64, i64* @conn_error, align 8
  %619 = icmp eq i64 %617, %618
  br i1 %619, label %620, label %629

620:                                              ; preds = %614
  %621 = load %struct.connection*, %struct.connection** %3, align 8
  %622 = getelementptr inbounds %struct.connection, %struct.connection* %621, i32 0, i32 2
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %620
  %626 = load %struct.connection*, %struct.connection** %3, align 8
  %627 = getelementptr inbounds %struct.connection, %struct.connection* %626, i32 0, i32 2
  store i32 -2, i32* %627, align 4
  br label %628

628:                                              ; preds = %625, %620
  store i32 0, i32* %2, align 4
  br label %736

629:                                              ; preds = %614
  %630 = load i32, i32* %10, align 4
  %631 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %632 = icmp eq i32 %630, %631
  br i1 %632, label %633, label %652

633:                                              ; preds = %629
  %634 = load i32, i32* %9, align 4
  %635 = load %struct.connection*, %struct.connection** %3, align 8
  %636 = getelementptr inbounds %struct.connection, %struct.connection* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = icmp eq i32 %634, %638
  %640 = zext i1 %639 to i32
  %641 = call i32 @assert(i32 %640)
  %642 = load %struct.connection*, %struct.connection** %3, align 8
  %643 = getelementptr inbounds %struct.connection, %struct.connection* %642, i32 0, i32 3
  %644 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %645 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  %647 = call i32 @advance_skip_read_ptr(%struct.TYPE_6__* %643, i32 %646)
  %648 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %649 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %649, align 4
  br label %677

652:                                              ; preds = %629
  %653 = load i32, i32* %9, align 4
  %654 = load %struct.connection*, %struct.connection** %3, align 8
  %655 = getelementptr inbounds %struct.connection, %struct.connection* %654, i32 0, i32 3
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = icmp ne i32 %653, %657
  br i1 %658, label %659, label %676

659:                                              ; preds = %652
  %660 = load i32, i32* %9, align 4
  %661 = load %struct.connection*, %struct.connection** %3, align 8
  %662 = getelementptr inbounds %struct.connection, %struct.connection* %661, i32 0, i32 3
  %663 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %666 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 8
  %668 = add i32 %664, %667
  %669 = icmp eq i32 %660, %668
  %670 = zext i1 %669 to i32
  %671 = call i32 @assert(i32 %670)
  %672 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %673 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %672, i32 0, i32 3
  %674 = load i32, i32* %673, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %673, align 4
  br label %676

676:                                              ; preds = %659, %652
  br label %677

677:                                              ; preds = %676, %633
  %678 = load %struct.connection*, %struct.connection** %3, align 8
  %679 = getelementptr inbounds %struct.connection, %struct.connection* %678, i32 0, i32 0
  %680 = load i64, i64* %679, align 8
  %681 = load i64, i64* @conn_running, align 8
  %682 = icmp eq i64 %680, %681
  br i1 %682, label %683, label %687

683:                                              ; preds = %677
  %684 = load i64, i64* @conn_expect_query, align 8
  %685 = load %struct.connection*, %struct.connection** %3, align 8
  %686 = getelementptr inbounds %struct.connection, %struct.connection* %685, i32 0, i32 0
  store i64 %684, i64* %686, align 8
  br label %687

687:                                              ; preds = %683, %677
  %688 = load %struct.connection*, %struct.connection** %3, align 8
  %689 = getelementptr inbounds %struct.connection, %struct.connection* %688, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = load i64, i64* @conn_wait_net, align 8
  %692 = icmp eq i64 %690, %691
  br i1 %692, label %717, label %693

693:                                              ; preds = %687
  %694 = load %struct.connection*, %struct.connection** %3, align 8
  %695 = getelementptr inbounds %struct.connection, %struct.connection* %694, i32 0, i32 5
  %696 = load i64, i64* %695, align 8
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %704

698:                                              ; preds = %693
  %699 = load %struct.connection*, %struct.connection** %3, align 8
  %700 = getelementptr inbounds %struct.connection, %struct.connection* %699, i32 0, i32 0
  %701 = load i64, i64* %700, align 8
  %702 = load i64, i64* @conn_wait_aio, align 8
  %703 = icmp eq i64 %701, %702
  br i1 %703, label %717, label %704

704:                                              ; preds = %698, %693
  %705 = load %struct.connection*, %struct.connection** %3, align 8
  %706 = getelementptr inbounds %struct.connection, %struct.connection* %705, i32 0, i32 5
  %707 = load i64, i64* %706, align 8
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %715, label %709

709:                                              ; preds = %704
  %710 = load %struct.connection*, %struct.connection** %3, align 8
  %711 = getelementptr inbounds %struct.connection, %struct.connection* %710, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = load i64, i64* @conn_expect_query, align 8
  %714 = icmp eq i64 %712, %713
  br label %715

715:                                              ; preds = %709, %704
  %716 = phi i1 [ false, %704 ], [ %714, %709 ]
  br label %717

717:                                              ; preds = %715, %698, %687
  %718 = phi i1 [ true, %698 ], [ true, %687 ], [ %716, %715 ]
  %719 = zext i1 %718 to i32
  %720 = call i32 @assert(i32 %719)
  %721 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %722 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %721, i32 0, i32 0
  store i32 0, i32* %722, align 8
  %723 = load %struct.connection*, %struct.connection** %3, align 8
  %724 = getelementptr inbounds %struct.connection, %struct.connection* %723, i32 0, i32 0
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @conn_expect_query, align 8
  %727 = icmp ne i64 %725, %726
  br i1 %727, label %728, label %729

728:                                              ; preds = %717
  br label %735

729:                                              ; preds = %717
  %730 = load %struct.connection*, %struct.connection** %3, align 8
  %731 = getelementptr inbounds %struct.connection, %struct.connection* %730, i32 0, i32 4
  %732 = load %struct.connection*, %struct.connection** %3, align 8
  %733 = getelementptr inbounds %struct.connection, %struct.connection* %732, i32 0, i32 3
  %734 = call i32 @nbit_set(i32* %731, %struct.TYPE_6__* %733)
  br label %13

735:                                              ; preds = %728, %19
  store i32 0, i32* %2, align 4
  br label %736

736:                                              ; preds = %735, %628, %573, %507, %464, %343, %326, %291, %266, %252, %242, %173, %163, %28
  %737 = load i32, i32* %2, align 4
  ret i32 %737
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_total_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @RPCS_FUNC(%struct.connection*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @advance_skip_read_ptr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @crc32_partial(i8*, i32, i32) #1

declare dso_local i32 @nbit_ready_bytes(i32*) #1

declare dso_local i8* @nbit_get_ptr(i32*) #1

declare dso_local i32 @nbit_advance(i32*, i32) #1

declare dso_local i32 @dump_next_packet(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @rpcs_process_nonce_packet(%struct.connection*) #1

declare dso_local i32 @rpcs_process_handshake_packet(%struct.connection*) #1

declare dso_local i32 @rpcs_send_handshake_packet(%struct.connection*) #1

declare dso_local i32 @rpcs_default_execute(%struct.connection*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
