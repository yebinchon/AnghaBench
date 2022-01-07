; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_dump_from_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_dump_from_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i8**, i32*, i32*, i32 }
%struct.TYPE_23__ = type { i32 }

@types = common dso_local global %struct.TYPE_24__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_dump_from_event(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32 %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = icmp eq %struct.TYPE_23__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %277

21:                                               ; preds = %4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** @types, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %12, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %273, %21
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %276

44:                                               ; preds = %38
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @has_field(%struct.TYPE_23__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %272

49:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %51 = icmp ne %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @has_field(%struct.TYPE_23__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 128
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 129
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 %77
  %79 = call i8* @GET_FIELD(%struct.TYPE_23__* %74, %struct.TYPE_21__* %78)
  store i8* %79, i8** %14, align 8
  br label %90

80:                                               ; preds = %65, %57, %52, %49
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  %83 = load i8**, i8*** %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %83, i64 %87
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %14, align 8
  store i32 1, i32* %15, align 4
  br label %90

90:                                               ; preds = %80, %73
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %11, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %231 [
    i32 131, label %98
    i32 130, label %108
    i32 132, label %118
    i32 128, label %128
    i32 129, label %184
  ]

98:                                               ; preds = %90
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i64 %102
  %104 = call i32* @GET_INT(%struct.TYPE_23__* %99, %struct.TYPE_21__* %103)
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = bitcast i8* %106 to i32*
  store i32 %105, i32* %107, align 4
  store i32 4, i32* %16, align 4
  br label %231

108:                                              ; preds = %90
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 %112
  %114 = call i64* @GET_LONG(%struct.TYPE_23__* %109, %struct.TYPE_21__* %113)
  %115 = load i64, i64* %114, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = bitcast i8* %116 to i64*
  store i64 %115, i64* %117, align 8
  store i32 8, i32* %16, align 4
  br label %231

118:                                              ; preds = %90
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i64 %122
  %124 = call double* @GET_DOUBLE(%struct.TYPE_23__* %119, %struct.TYPE_21__* %123)
  %125 = load double, double* %124, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = bitcast i8* %126 to double*
  store double %125, double* %127, align 8
  store i32 8, i32* %16, align 4
  br label %231

128:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %148

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %129

148:                                              ; preds = %143, %129
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %183

152:                                              ; preds = %148
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i64 %156
  %158 = call i32 @GET_STRING(%struct.TYPE_23__* %153, %struct.TYPE_21__* %157)
  %159 = call i8* @tmp_mem_strdup(i32 %158)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  %162 = load i8**, i8*** %161, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %162, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to i8**
  store i8* %159, i8** %169, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  %172 = load i8**, i8*** %171, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %172, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = bitcast i8* %178 to i8**
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %152, %148
  br label %231

184:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %201, %184
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  br label %204

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %185

204:                                              ; preds = %199, %185
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %230

208:                                              ; preds = %204
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i64 %212
  %214 = call i8* @GET_RAW(%struct.TYPE_23__* %209, %struct.TYPE_21__* %213)
  store i8* %214, i8** %17, align 8
  %215 = load i8*, i8** %17, align 8
  %216 = call i32 @RAW_RLEN(i8* %215)
  store i32 %216, i32* %16, align 4
  %217 = load i8*, i8** %17, align 8
  %218 = load i32, i32* %16, align 4
  %219 = call i8* @tmp_mem_dup(i8* %217, i32 %218)
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 2
  %222 = load i8**, i8*** %221, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %222, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = bitcast i8* %228 to i8**
  store i8* %219, i8** %229, align 8
  br label %230

230:                                              ; preds = %208, %204
  br label %231

231:                                              ; preds = %90, %230, %183, %118, %108, %98
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %271

234:                                              ; preds = %231
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %271

238:                                              ; preds = %234
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  store i32 %239, i32* %247, align 4
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  store i32 %253, i32* %261, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, %262
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %238, %234, %231
  br label %272

272:                                              ; preds = %271, %44
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %38

276:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %277

277:                                              ; preds = %276, %20
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @has_field(%struct.TYPE_23__*, i32) #1

declare dso_local i8* @GET_FIELD(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32* @GET_INT(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i64* @GET_LONG(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local double* @GET_DOUBLE(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i8* @tmp_mem_strdup(i32) #1

declare dso_local i32 @GET_STRING(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @GET_RAW(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @RAW_RLEN(i8*) #1

declare dso_local i8* @tmp_mem_dup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
