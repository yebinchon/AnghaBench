; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_h2o_qpack_decoder_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_h2o_qpack_decoder_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }

@H2O_HTTP2_ERROR_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_qpack_decoder_handle_input(%struct.TYPE_13__* %0, i32** %1, i64* %2, i32** %3, i32* %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %6
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %37, %41
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %32
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 %56
  %58 = load i64, i64* %13, align 8
  %59 = mul i64 16, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memmove(%struct.TYPE_14__* %50, %struct.TYPE_14__* %57, i32 %60)
  br label %62

62:                                               ; preds = %45, %32
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i64 %63, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %6
  %72 = load i32**, i32*** %10, align 8
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %208, %71
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 0
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  br i1 %82, label %83, label %211

83:                                               ; preds = %81
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 5
  switch i32 %86, label %87 [
    i32 2, label %133
    i32 3, label %133
    i32 0, label %188
    i32 1, label %198
  ]

87:                                               ; preds = %83
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 64
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @decode_int(i32* %16, i32** %14, i32* %93, i32 6)
  store i32 %94, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %212

97:                                               ; preds = %87
  %98 = load i32*, i32** %14, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = icmp eq i32* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %212

102:                                              ; preds = %97
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %19, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @decode_int(i32* %17, i32** %14, i32* %108, i32 7)
  store i32 %109, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %212

112:                                              ; preds = %102
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32*, i32** %11, align 8
  %118 = icmp ule i32* %116, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  br label %212

120:                                              ; preds = %112
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i8**, i8*** %12, align 8
  %128 = call i32 @insert_with_name_reference(%struct.TYPE_13__* %121, i32 %122, i32 %123, i32 %124, i32* %125, i32 %126, i8** %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32*, i32** %14, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %14, align 8
  br label %208

133:                                              ; preds = %83, %83
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 32
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %22, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @decode_int(i32* %20, i32** %14, i32* %139, i32 5)
  store i32 %140, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %212

143:                                              ; preds = %133
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32*, i32** %11, align 8
  %149 = icmp ult i32* %147, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  br label %212

151:                                              ; preds = %143
  %152 = load i32*, i32** %14, align 8
  store i32* %152, i32** %23, align 8
  %153 = load i32, i32* %20, align 4
  %154 = load i32*, i32** %14, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %14, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 128
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %24, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @decode_int(i32* %21, i32** %14, i32* %162, i32 7)
  store i32 %163, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  br label %212

166:                                              ; preds = %151
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32*, i32** %11, align 8
  %172 = icmp ule i32* %170, %171
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  br label %212

174:                                              ; preds = %166
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %176 = load i32, i32* %22, align 4
  %177 = load i32*, i32** %23, align 8
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i32*, i32** %14, align 8
  %181 = load i32, i32* %21, align 4
  %182 = load i8**, i8*** %12, align 8
  %183 = call i32 @insert_without_name_reference(%struct.TYPE_13__* %175, i32 %176, i32* %177, i32 %178, i32 %179, i32* %180, i32 %181, i8** %182)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %14, align 8
  br label %208

188:                                              ; preds = %83
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @decode_int(i32* %25, i32** %14, i32* %189, i32 5)
  store i32 %190, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %212

193:                                              ; preds = %188
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %195 = load i32, i32* %25, align 4
  %196 = load i8**, i8*** %12, align 8
  %197 = call i32 @duplicate(%struct.TYPE_13__* %194, i32 %195, i8** %196)
  store i32 %197, i32* %15, align 4
  br label %208

198:                                              ; preds = %83
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @decode_int(i32* %26, i32** %14, i32* %199, i32 5)
  store i32 %200, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %212

203:                                              ; preds = %198
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %205 = load i32, i32* %26, align 4
  %206 = load i8**, i8*** %12, align 8
  %207 = call i32 @dynamic_table_size_update(%struct.TYPE_13__* %204, i32 %205, i8** %206)
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %203, %193, %174, %120
  %209 = load i32*, i32** %14, align 8
  %210 = load i32**, i32*** %10, align 8
  store i32* %209, i32** %210, align 8
  br label %74

211:                                              ; preds = %81
  br label %212

212:                                              ; preds = %211, %202, %192, %173, %165, %150, %142, %119, %111, %101, %96
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @H2O_HTTP2_ERROR_INCOMPLETE, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 0, i32* %15, align 4
  br label %217

217:                                              ; preds = %216, %212
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %293

220:                                              ; preds = %217
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  %228 = load i32**, i32*** %8, align 8
  store i32* %227, i32** %228, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %281, %220
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ult i64 %236, %241
  br i1 %242, label %243, label %287

243:                                              ; preds = %232
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp sgt i64 %255, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %243
  br label %287

261:                                              ; preds = %243
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32**, i32*** %8, align 8
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  store i32 %273, i32* %280, align 4
  br label %281

281:                                              ; preds = %261
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %284, align 8
  br label %232

287:                                              ; preds = %260, %232
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64*, i64** %9, align 8
  store i64 %291, i64* %292, align 8
  br label %293

293:                                              ; preds = %287, %217
  %294 = load i32, i32* %15, align 4
  ret i32 %294
}

declare dso_local i32 @memmove(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @decode_int(i32*, i32**, i32*, i32) #1

declare dso_local i32 @insert_with_name_reference(%struct.TYPE_13__*, i32, i32, i32, i32*, i32, i8**) #1

declare dso_local i32 @insert_without_name_reference(%struct.TYPE_13__*, i32, i32*, i32, i32, i32*, i32, i8**) #1

declare dso_local i32 @duplicate(%struct.TYPE_13__*, i32, i8**) #1

declare dso_local i32 @dynamic_table_size_update(%struct.TYPE_13__*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
