; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d\0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@MAX_QUERY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"select%d\00", align 1
@set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"current_text %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"WARNING: not enough memory for message allocating\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"add_event\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"%d : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"key = %s | ts = %s, s = %s\0A\00", align 1
@FN = common dso_local global i32 0, align 4
@std_t = common dso_local global i64* null, align 8
@buf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %30 = load i32, i32* @INIT, align 4
  %31 = load i32, i32* @verbosity, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %7
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @MAX_VALUE_LEN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %287

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @eat_at(i8* %45, i32 %46, i8** %16, i32* %17)
  %48 = load i32, i32* @write_only, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %104, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %17, align 4
  %52 = icmp sge i32 %51, 6
  br i1 %52, label %53, label %104

53:                                               ; preds = %50
  %54 = load i8*, i8** %16, align 8
  %55 = call i32 @strncmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %104, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @MAX_QUERY_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @sscanf(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @set, align 4
  %67 = call i32 @RETURN(i32 %66, i32 -2)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* @verbosity, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.connection*, %struct.connection** %9, align 8
  %77 = call i32 @MESSAGE(%struct.connection* %76)
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %18, align 4
  %80 = call i64 @msg_reinit(i32 %77, i32 %78, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @set, align 4
  %86 = call i32 @RETURN(i32 %85, i32 -2)
  br label %87

87:                                               ; preds = %82, %75
  %88 = load %struct.connection*, %struct.connection** %9, align 8
  %89 = call i32 @MESSAGE(%struct.connection* %88)
  %90 = call i8* @msg_get_buf(i32 %89)
  store i8* %90, i8** %19, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = call i32 @assert(i8* %91)
  %93 = load %struct.connection*, %struct.connection** %9, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 0
  %95 = load i8*, i8** %19, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @safe_read_in(i32* %94, i8* %95, i32 %96)
  %98 = load i8*, i8** %19, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i32, i32* @set, align 4
  %103 = call i32 @RETURN(i32 %102, i32 1)
  br label %104

104:                                              ; preds = %87, %57, %53, %50, %44
  %105 = load i32, i32* %17, align 4
  %106 = icmp sge i32 %105, 9
  br i1 %106, label %107, label %286

107:                                              ; preds = %104
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %286, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 1000
  br i1 %113, label %114, label %286

114:                                              ; preds = %111
  %115 = load i8*, i8** %16, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 9
  store i8* %116, i8** %20, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sub nsw i32 %117, 9
  store i32 %118, i32* %21, align 4
  %119 = load i8*, i8** %20, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 40
  br i1 %123, label %133, label %124

124:                                              ; preds = %114
  %125 = load i8*, i8** %20, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 41
  br i1 %132, label %133, label %136

133:                                              ; preds = %124, %114
  %134 = load i32, i32* @set, align 4
  %135 = call i32 @RETURN(i32 %134, i32 -2)
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i8*, i8** %20, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %20, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sub nsw i32 %139, 2
  store i32 %140, i32* %21, align 4
  %141 = load i8*, i8** @stats_buff, align 8
  store i8* %141, i8** %23, align 8
  %142 = load i32, i32* @verbosity, align 4
  %143 = icmp sgt i32 %142, 2
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i32, i32* @stderr, align 4
  %146 = load i32, i32* %21, align 4
  %147 = load i8*, i8** %20, align 8
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %146, i8* %147)
  br label %149

149:                                              ; preds = %144, %136
  store i32 0, i32* %22, align 4
  br label %150

150:                                              ; preds = %172, %149
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %21, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i8*, i8** %20, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 44
  br label %162

162:                                              ; preds = %154, %150
  %163 = phi i1 [ false, %150 ], [ %161, %154 ]
  br i1 %163, label %164, label %175

164:                                              ; preds = %162
  %165 = load i8*, i8** %20, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %23, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %23, align 8
  store i8 %169, i8* %170, align 1
  br label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %22, align 4
  br label %150

175:                                              ; preds = %162
  %176 = load i8*, i8** %23, align 8
  store i8 0, i8* %176, align 1
  %177 = load i32, i32* @verbosity, align 4
  %178 = icmp sgt i32 %177, 2
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %21, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %179
  %184 = load i32, i32* @stderr, align 4
  %185 = load i8*, i8** %16, align 8
  %186 = load i8*, i8** @stats_buff, align 8
  %187 = load i8*, i8** %20, align 8
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %185, i8* %186, i8* %191)
  br label %193

193:                                              ; preds = %183, %179, %175
  %194 = load i32, i32* @FN, align 4
  %195 = sub nsw i32 %194, 2
  %196 = zext i32 %195 to i64
  %197 = call i8* @llvm.stacksave()
  store i8* %197, i8** %24, align 8
  %198 = alloca i32, i64 %196, align 16
  store i64 %196, i64* %25, align 8
  store i32 2, i32* %26, align 4
  br label %199

199:                                              ; preds = %258, %193
  %200 = load i32, i32* %26, align 4
  %201 = load i32, i32* @FN, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %269

203:                                              ; preds = %199
  store i32 -1, i32* %27, align 4
  %204 = load i8*, i8** %20, align 8
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = call i32 @read_long(i8* %208, i64* %28, i32* %27)
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %229, label %211

211:                                              ; preds = %203
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* %27, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %21, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %211
  %219 = load i8*, i8** %20, align 8
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %22, align 4
  %222 = add nsw i32 %220, %221
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %219, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 44
  br i1 %228, label %229, label %232

229:                                              ; preds = %218, %203
  %230 = load i32, i32* @set, align 4
  %231 = call i32 @RETURN(i32 %230, i32 -2)
  br label %232

232:                                              ; preds = %229, %218, %211
  %233 = load i32, i32* %27, align 4
  %234 = add nsw i32 %233, 1
  %235 = load i32, i32* %22, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %22, align 4
  %237 = load i64*, i64** @std_t, align 8
  %238 = load i32, i32* %26, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %232
  %244 = load i64, i64* %28, align 8
  %245 = load i32, i32* %26, align 4
  %246 = sub nsw i32 %245, 2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %198, i64 %247
  %249 = bitcast i32* %248 to i64*
  store i64 %244, i64* %249, align 4
  br label %257

250:                                              ; preds = %232
  %251 = load i64, i64* %28, align 8
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* %26, align 4
  %254 = sub nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %198, i64 %255
  store i32 %252, i32* %256, align 4
  br label %257

257:                                              ; preds = %250, %243
  br label %258

258:                                              ; preds = %257
  %259 = load i64*, i64** @std_t, align 8
  %260 = load i32, i32* %26, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 1, %263
  %265 = load i32, i32* %26, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %26, align 4
  br label %199

269:                                              ; preds = %199
  %270 = load %struct.connection*, %struct.connection** %9, align 8
  %271 = getelementptr inbounds %struct.connection, %struct.connection* %270, i32 0, i32 0
  %272 = load i8*, i8** @buf, align 8
  %273 = load i32, i32* %15, align 4
  %274 = call i32 @safe_read_in(i32* %271, i8* %272, i32 %273)
  %275 = load i8*, i8** @buf, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i8 0, i8* %278, align 1
  %279 = load i8*, i8** @stats_buff, align 8
  %280 = load i8*, i8** @buf, align 8
  %281 = call i32 @do_add_event(i8* %279, i32* %198, i8* %280)
  store i32 %281, i32* %29, align 4
  %282 = load i32, i32* @set, align 4
  %283 = load i32, i32* %29, align 4
  %284 = call i32 @RETURN(i32 %282, i32 %283)
  %285 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %285)
  br label %286

286:                                              ; preds = %269, %111, %107, %104
  br label %287

287:                                              ; preds = %286, %39
  %288 = load i32, i32* @set, align 4
  %289 = call i32 @RETURN(i32 %288, i32 -2)
  %290 = load i32, i32* %8, align 4
  ret i32 %290
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i64 @msg_reinit(i32, i32, i32) #1

declare dso_local i32 @MESSAGE(%struct.connection*) #1

declare dso_local i8* @msg_get_buf(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read_long(i8*, i64*, i32*) #1

declare dso_local i32 @do_add_event(i8*, i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
