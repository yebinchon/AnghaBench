; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_return_key_list_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_return_key_list_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" 0 .........\0D\0A\00", align 1
@object_id_ints = common dso_local global i32 0, align 4
@PTR_INTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"% 9d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @return_key_list_value(%struct.connection* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.connection*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %24, align 4
  %31 = load i64, i64* @verbosity, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %10
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %10
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  store i32 4, i32* %22, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i8*, i8** @stats_buff, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %52

47:                                               ; preds = %40
  %48 = load i8*, i8** @stats_buff, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @sprintf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %22, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.connection*, %struct.connection** %12, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** @stats_buff, align 8
  %56 = load i32, i32* %22, align 4
  %57 = call i32 @return_one_key(%struct.connection* %53, i8* %54, i8* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %295

58:                                               ; preds = %37
  %59 = load %struct.connection*, %struct.connection** %12, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 0
  %61 = call i32 @write_out(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %62 = load %struct.connection*, %struct.connection** %12, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 0
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @write_out(i32* %63, i8* %64, i32 %65)
  %67 = load %struct.connection*, %struct.connection** %12, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 0
  %69 = call i8* @get_write_ptr(i32* %68, i32 1024)
  store i8* %69, i8** %25, align 8
  %70 = load i8*, i8** %25, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  store i32 -1, i32* %11, align 4
  br label %295

73:                                               ; preds = %58
  %74 = load i8*, i8** %25, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 512
  store i8* %75, i8** %26, align 8
  %76 = load i8*, i8** %25, align 8
  %77 = call i32 @memcpy(i8* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 14)
  %78 = load i8*, i8** %25, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8* %79, i8** %27, align 8
  %80 = load i8*, i8** %25, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 14
  store i8* %81, i8** %25, align 8
  %82 = load i32, i32* %16, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load i8*, i8** %25, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @sprintf(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %22, align 4
  br label %93

89:                                               ; preds = %73
  store i32 4, i32* %22, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i8*, i8** %25, align 8
  %92 = bitcast i8* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %22, align 4
  %95 = load i8*, i8** %25, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %25, align 8
  store i32 0, i32* %23, align 4
  br label %98

98:                                               ; preds = %272, %93
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %275

102:                                              ; preds = %98
  %103 = load i8*, i8** %25, align 8
  %104 = load i8*, i8** %26, align 8
  %105 = icmp uge i8* %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load %struct.connection*, %struct.connection** %12, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 0
  %109 = load i8*, i8** %25, align 8
  %110 = load i8*, i8** %26, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -512
  %112 = ptrtoint i8* %109 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @advance_write_ptr(i32* %108, i32 %115)
  %117 = load %struct.connection*, %struct.connection** %12, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 0
  %119 = call i8* @get_write_ptr(i32* %118, i32 1024)
  store i8* %119, i8** %25, align 8
  %120 = load i8*, i8** %25, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %106
  store i32 -1, i32* %11, align 4
  br label %295

123:                                              ; preds = %106
  %124 = load i8*, i8** %25, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 512
  store i8* %125, i8** %26, align 8
  br label %126

126:                                              ; preds = %123, %102
  %127 = load i32, i32* %16, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %251

129:                                              ; preds = %126
  %130 = load i32, i32* %24, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* @object_id_ints, align 4
  %135 = icmp slt i32 %133, %134
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi i1 [ false, %129 ], [ %135, %132 ]
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 58, i32 44
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %25, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %25, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i32, i32* %22, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %217

148:                                              ; preds = %136
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = bitcast i32* %152 to i8**
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %29, align 8
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* @PTR_INTS, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %28, align 4
  store i32 0, i32* %30, align 4
  br label %162

162:                                              ; preds = %204, %148
  %163 = load i32, i32* %30, align 4
  %164 = load i32, i32* %28, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %207

166:                                              ; preds = %162
  %167 = load i8*, i8** %29, align 8
  %168 = load i32, i32* %30, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 44
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load i8*, i8** %25, align 8
  %176 = load i32, i32* %30, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8 12, i8* %178, align 1
  br label %203

179:                                              ; preds = %166
  %180 = load i8*, i8** %29, align 8
  %181 = load i32, i32* %30, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 12
  br i1 %186, label %187, label %192

187:                                              ; preds = %179
  %188 = load i8*, i8** %25, align 8
  %189 = load i32, i32* %30, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8 32, i8* %191, align 1
  br label %202

192:                                              ; preds = %179
  %193 = load i8*, i8** %29, align 8
  %194 = load i32, i32* %30, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = load i8*, i8** %25, align 8
  %199 = load i32, i32* %30, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8 %197, i8* %201, align 1
  br label %202

202:                                              ; preds = %192, %187
  br label %203

203:                                              ; preds = %202, %174
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %30, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %30, align 4
  br label %162

207:                                              ; preds = %162
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %22, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %22, align 4
  %211 = load i32, i32* @PTR_INTS, align 4
  %212 = load i32, i32* %24, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %24, align 4
  %214 = load i32, i32* @PTR_INTS, align 4
  %215 = load i32, i32* %23, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %23, align 4
  br label %250

217:                                              ; preds = %136
  %218 = load i32, i32* %24, align 4
  %219 = load i32, i32* %21, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %217
  %222 = load i8*, i8** %25, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = load i32, i32* %23, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = bitcast i32* %226 to i64*
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  %230 = call i64 @sprintf(i8* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %229)
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %28, align 4
  %232 = load i32, i32* %22, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %23, align 4
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %24, align 4
  br label %249

238:                                              ; preds = %217
  %239 = load i8*, i8** %25, align 8
  %240 = load i32*, i32** %17, align 8
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @sprintf(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %244)
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %28, align 4
  %247 = load i32, i32* %22, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %22, align 4
  br label %249

249:                                              ; preds = %238, %221
  br label %250

250:                                              ; preds = %249, %207
  br label %261

251:                                              ; preds = %126
  store i32 4, i32* %28, align 4
  %252 = load i32, i32* %22, align 4
  %253 = add nsw i32 %252, 4
  store i32 %253, i32* %22, align 4
  %254 = load i32*, i32** %17, align 8
  %255 = load i32, i32* %23, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i8*, i8** %25, align 8
  %260 = bitcast i8* %259 to i32*
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %251, %250
  %262 = load i32, i32* %24, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %24, align 4
  %264 = load i32, i32* %19, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 0, i32* %24, align 4
  br label %267

267:                                              ; preds = %266, %261
  %268 = load i32, i32* %28, align 4
  %269 = load i8*, i8** %25, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %25, align 8
  br label %272

272:                                              ; preds = %267
  %273 = load i32, i32* %23, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %23, align 4
  br label %98

275:                                              ; preds = %98
  %276 = load i8*, i8** %27, align 8
  %277 = load i8*, i8** %27, align 8
  %278 = load i32, i32* %22, align 4
  %279 = call i64 @sprintf(i8* %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %278)
  %280 = getelementptr inbounds i8, i8* %276, i64 %279
  store i8 13, i8* %280, align 1
  %281 = load i8*, i8** %25, align 8
  %282 = call i32 @memcpy(i8* %281, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %283 = load i8*, i8** %25, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 2
  store i8* %284, i8** %25, align 8
  %285 = load %struct.connection*, %struct.connection** %12, align 8
  %286 = getelementptr inbounds %struct.connection, %struct.connection* %285, i32 0, i32 0
  %287 = load i8*, i8** %25, align 8
  %288 = load i8*, i8** %26, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 -512
  %290 = ptrtoint i8* %287 to i64
  %291 = ptrtoint i8* %289 to i64
  %292 = sub i64 %290, %291
  %293 = trunc i64 %292 to i32
  %294 = call i32 @advance_write_ptr(i32* %286, i32 %293)
  store i32 0, i32* %11, align 4
  br label %295

295:                                              ; preds = %275, %122, %72, %52
  %296 = load i32, i32* %11, align 4
  ret i32 %296
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i8* @get_write_ptr(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @advance_write_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
