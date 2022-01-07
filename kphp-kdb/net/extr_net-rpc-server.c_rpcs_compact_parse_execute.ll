; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_compact_parse_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_compact_parse_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rpcs_data = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.connection*, i32, i32)* }

@conn_reading_query = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [72 x i8] c"error while parsing compact packet: got length %d in overlong encoding\0A\00", align 1
@conn_error = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"error while parsing compact packet: got zero packet length\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"error while parsing packet: bad packet length %d\0A\00", align 1
@conn_running = common dso_local global i64 0, align 8
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@conn_expect_query = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_compact_parse_execute(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcs_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %8)
  store %struct.rpcs_data* %9, %struct.rpcs_data** %4, align 8
  %10 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %11 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = call i32 @rpcs_parse_execute(%struct.connection* %16)
  store i32 %17, i32* %2, align 4
  br label %336

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %321
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 3
  %22 = call i32 @nbit_total_ready_bytes(i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %335

26:                                               ; preds = %19
  %27 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %28 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %192, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8*, i8** @conn_reading_query, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 5, %39
  store i32 %40, i32* %2, align 4
  br label %336

41:                                               ; preds = %31
  %42 = load %struct.connection*, %struct.connection** %3, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 3
  %44 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %45 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %44, i32 0, i32 1
  %46 = call i32 @nbit_read_in(i32* %43, i32* %45, i32 1)
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  %52 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %53 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, -3
  br i1 %55, label %56, label %98

56:                                               ; preds = %41
  %57 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %58 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 239
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %63 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 1024
  store i32 %65, i32* %63, align 4
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 3
  %68 = load %struct.connection*, %struct.connection** %3, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 2
  %70 = call i32 @nbit_set(i32* %67, %struct.TYPE_4__* %69)
  %71 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %72 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.connection*, %struct.connection** %3, align 8
  %74 = call i32 @rpcs_parse_execute(%struct.connection* %73)
  store i32 %74, i32* %2, align 4
  br label %336

75:                                               ; preds = %56
  %76 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %77 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %79 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 1073741824
  store i32 %81, i32* %79, align 4
  %82 = load %struct.connection*, %struct.connection** %3, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 2
  %84 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %83, i32 1)
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.connection*, %struct.connection** %3, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 3
  %90 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %91 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %90, i32 0, i32 1
  %92 = call i32 @nbit_read_in(i32* %89, i32* %91, i32 1)
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %75, %41
  %99 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %100 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 128
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %106 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, -2147483648
  store i32 %108, i32* %106, align 4
  %109 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %110 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 127
  store i32 %112, i32* %110, align 4
  br label %118

113:                                              ; preds = %98
  %114 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %115 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 2147483647
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %104
  %119 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %120 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 127
  br i1 %122, label %123, label %149

123:                                              ; preds = %118
  %124 = load %struct.connection*, %struct.connection** %3, align 8
  %125 = getelementptr inbounds %struct.connection, %struct.connection* %124, i32 0, i32 3
  %126 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %127 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %126, i32 0, i32 1
  %128 = call i32 @nbit_read_in(i32* %125, i32* %127, i32 3)
  %129 = icmp eq i32 %128, 3
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %133 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 127
  br i1 %135, label %136, label %146

136:                                              ; preds = %123
  %137 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %138 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @conn_error, align 8
  %142 = load %struct.connection*, %struct.connection** %3, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.connection*, %struct.connection** %3, align 8
  %145 = getelementptr inbounds %struct.connection, %struct.connection* %144, i32 0, i32 1
  store i32 -1, i32* %145, align 8
  store i32 0, i32* %2, align 4
  br label %336

146:                                              ; preds = %123
  %147 = load i32, i32* %5, align 4
  %148 = sub nsw i32 %147, 3
  store i32 %148, i32* %5, align 4
  br label %162

149:                                              ; preds = %118
  %150 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %151 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i64, i64* @conn_error, align 8
  %157 = load %struct.connection*, %struct.connection** %3, align 8
  %158 = getelementptr inbounds %struct.connection, %struct.connection* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.connection*, %struct.connection** %3, align 8
  %160 = getelementptr inbounds %struct.connection, %struct.connection* %159, i32 0, i32 1
  store i32 -1, i32* %160, align 8
  store i32 0, i32* %2, align 4
  br label %336

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161, %146
  %163 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %164 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 2
  store i32 %166, i32* %164, align 4
  %167 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %168 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.connection*, %struct.connection** %3, align 8
  %171 = call %struct.TYPE_5__* @RPCS_FUNC(%struct.connection* %170)
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %169, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %162
  %176 = load %struct.connection*, %struct.connection** %3, align 8
  %177 = call %struct.TYPE_5__* @RPCS_FUNC(%struct.connection* %176)
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %175
  %182 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %183 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i64, i64* @conn_error, align 8
  %187 = load %struct.connection*, %struct.connection** %3, align 8
  %188 = getelementptr inbounds %struct.connection, %struct.connection* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.connection*, %struct.connection** %3, align 8
  %190 = getelementptr inbounds %struct.connection, %struct.connection* %189, i32 0, i32 1
  store i32 -1, i32* %190, align 8
  store i32 0, i32* %2, align 4
  br label %336

191:                                              ; preds = %175, %162
  br label %192

192:                                              ; preds = %191, %26
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %195 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load i8*, i8** @conn_reading_query, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.connection*, %struct.connection** %3, align 8
  %202 = getelementptr inbounds %struct.connection, %struct.connection* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %204 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %5, align 4
  %207 = sub nsw i32 %205, %206
  store i32 %207, i32* %2, align 4
  br label %336

208:                                              ; preds = %192
  %209 = load %struct.connection*, %struct.connection** %3, align 8
  %210 = getelementptr inbounds %struct.connection, %struct.connection* %209, i32 0, i32 3
  %211 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %212 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %211, i32 0, i32 4
  %213 = call i32 @nbit_read_in(i32* %210, i32* %212, i32 4)
  %214 = icmp eq i32 %213, 4
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %218 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp sle i32 %219, 504
  br i1 %220, label %221, label %228

221:                                              ; preds = %208
  %222 = load %struct.connection*, %struct.connection** %3, align 8
  %223 = getelementptr inbounds %struct.connection, %struct.connection* %222, i32 0, i32 2
  %224 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %223, i32 1)
  %225 = icmp eq i32 %224, 1
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  br label %235

228:                                              ; preds = %208
  %229 = load %struct.connection*, %struct.connection** %3, align 8
  %230 = getelementptr inbounds %struct.connection, %struct.connection* %229, i32 0, i32 2
  %231 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %230, i32 4)
  %232 = icmp eq i32 %231, 4
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  br label %235

235:                                              ; preds = %228, %221
  %236 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %237 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %240 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  %241 = load %struct.connection*, %struct.connection** %3, align 8
  %242 = getelementptr inbounds %struct.connection, %struct.connection* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %6, align 4
  %245 = load i64, i64* @conn_running, align 8
  %246 = load %struct.connection*, %struct.connection** %3, align 8
  %247 = getelementptr inbounds %struct.connection, %struct.connection* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  %248 = load %struct.connection*, %struct.connection** %3, align 8
  %249 = call %struct.TYPE_5__* @RPCS_FUNC(%struct.connection* %248)
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i32 (%struct.connection*, i32, i32)*, i32 (%struct.connection*, i32, i32)** %250, align 8
  %252 = load %struct.connection*, %struct.connection** %3, align 8
  %253 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %254 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %257 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 %251(%struct.connection* %252, i32 %255, i32 %258)
  store i32 %259, i32* %7, align 4
  %260 = load %struct.connection*, %struct.connection** %3, align 8
  %261 = getelementptr inbounds %struct.connection, %struct.connection* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @conn_error, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %235
  %266 = load %struct.connection*, %struct.connection** %3, align 8
  %267 = getelementptr inbounds %struct.connection, %struct.connection* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = load %struct.connection*, %struct.connection** %3, align 8
  %272 = getelementptr inbounds %struct.connection, %struct.connection* %271, i32 0, i32 1
  store i32 -2, i32* %272, align 8
  br label %273

273:                                              ; preds = %270, %265
  store i32 0, i32* %2, align 4
  br label %336

274:                                              ; preds = %235
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @SKIP_ALL_BYTES, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %274
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.connection*, %struct.connection** %3, align 8
  %281 = getelementptr inbounds %struct.connection, %struct.connection* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %279, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load %struct.connection*, %struct.connection** %3, align 8
  %288 = getelementptr inbounds %struct.connection, %struct.connection* %287, i32 0, i32 2
  %289 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %290 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @advance_skip_read_ptr(%struct.TYPE_4__* %288, i32 %291)
  br label %306

293:                                              ; preds = %274
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.connection*, %struct.connection** %3, align 8
  %296 = getelementptr inbounds %struct.connection, %struct.connection* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %300 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %298, %301
  %303 = icmp eq i32 %294, %302
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  br label %306

306:                                              ; preds = %293, %278
  %307 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %308 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  %311 = load %struct.connection*, %struct.connection** %3, align 8
  %312 = getelementptr inbounds %struct.connection, %struct.connection* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %306
  %316 = load %struct.connection*, %struct.connection** %3, align 8
  %317 = getelementptr inbounds %struct.connection, %struct.connection* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @conn_running, align 8
  %320 = icmp eq i64 %318, %319
  br label %321

321:                                              ; preds = %315, %306
  %322 = phi i1 [ false, %306 ], [ %320, %315 ]
  %323 = zext i1 %322 to i32
  %324 = call i32 @assert(i32 %323)
  %325 = load i64, i64* @conn_expect_query, align 8
  %326 = load %struct.connection*, %struct.connection** %3, align 8
  %327 = getelementptr inbounds %struct.connection, %struct.connection* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  %328 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %329 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %328, i32 0, i32 1
  store i32 0, i32* %329, align 4
  %330 = load %struct.connection*, %struct.connection** %3, align 8
  %331 = getelementptr inbounds %struct.connection, %struct.connection* %330, i32 0, i32 3
  %332 = load %struct.connection*, %struct.connection** %3, align 8
  %333 = getelementptr inbounds %struct.connection, %struct.connection* %332, i32 0, i32 2
  %334 = call i32 @nbit_set(i32* %331, %struct.TYPE_4__* %333)
  br label %19

335:                                              ; preds = %25
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %335, %273, %198, %181, %154, %136, %61, %34, %15
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @rpcs_parse_execute(%struct.connection*) #1

declare dso_local i32 @nbit_total_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @advance_skip_read_ptr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
