; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_s_select.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_s_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.mrb_io = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wrong number of arguments (%S for 1..4)\00", align 1
@MRB_TT_ARRAY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_io_s_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_s_select(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval*, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.mrb_io*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.timeval, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @mrb_get_args(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %6, i32* %7)
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %2
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mrb_fixnum_value(i32 %41)
  %43 = call i32 @mrb_raisef(i32* %39, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = call i32 (...) @mrb_nil_value()
  store i32 %45, i32* %12, align 4
  %46 = call i32 (...) @mrb_nil_value()
  store i32 %46, i32* %11, align 4
  %47 = call i32 (...) @mrb_nil_value()
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @mrb_nil_p(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store %struct.timeval* null, %struct.timeval** %14, align 8
  br label %87

76:                                               ; preds = %68
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call { i64, i64 } @time2timeval(i32* %77, i32 %78)
  %80 = bitcast %struct.timeval* %30 to { i64, i64 }*
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i64, i64 } %79, 0
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i64, i64 } %79, 1
  store i64 %84, i64* %83, align 8
  %85 = bitcast %struct.timeval* %15 to i8*
  %86 = bitcast %struct.timeval* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  store %struct.timeval* %15, %struct.timeval** %14, align 8
  br label %87

87:                                               ; preds = %76, %75
  %88 = call i32 @FD_ZERO(i32* %16)
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @mrb_nil_p(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %151, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @MRB_TT_ARRAY, align 4
  %96 = call i32 @mrb_check_type(i32* %93, i32 %94, i32 %95)
  store i32* %17, i32** %20, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = call i32 @FD_ZERO(i32* %97)
  store i32 0, i32* %28, align 4
  br label %99

99:                                               ; preds = %141, %92
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @RARRAY_LEN(i32 %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = call i32* @RARRAY_PTR(i32 %105)
  %107 = load i32, i32* %28, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call %struct.mrb_io* @io_get_open_fptr(i32* %111, i32 %112)
  store %struct.mrb_io* %113, %struct.mrb_io** %23, align 8
  %114 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %115 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %20, align 8
  %118 = call i32 @FD_SET(i32 %116, i32* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @mrb_io_read_data_pending(i32* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %104
  %124 = load i32, i32* %24, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %24, align 4
  %126 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %127 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @FD_SET(i32 %128, i32* %16)
  br label %130

130:                                              ; preds = %123, %104
  %131 = load i32, i32* %26, align 4
  %132 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %133 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %138 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %26, align 4
  br label %140

140:                                              ; preds = %136, %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %28, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %28, align 4
  br label %99

144:                                              ; preds = %99
  %145 = load i32, i32* %24, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i64 0, i64* %149, align 8
  store %struct.timeval* %15, %struct.timeval** %14, align 8
  br label %150

150:                                              ; preds = %147, %144
  br label %152

151:                                              ; preds = %87
  store i32* null, i32** %20, align 8
  br label %152

152:                                              ; preds = %151, %150
  %153 = load i32, i32* %10, align 4
  %154 = call i64 @mrb_nil_p(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %217, label %156

156:                                              ; preds = %152
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @MRB_TT_ARRAY, align 4
  %160 = call i32 @mrb_check_type(i32* %157, i32 %158, i32 %159)
  store i32* %18, i32** %21, align 8
  %161 = load i32*, i32** %21, align 8
  %162 = call i32 @FD_ZERO(i32* %161)
  store i32 0, i32* %28, align 4
  br label %163

163:                                              ; preds = %213, %156
  %164 = load i32, i32* %28, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @RARRAY_LEN(i32 %165)
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %168, label %216

168:                                              ; preds = %163
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32* @RARRAY_PTR(i32 %170)
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.mrb_io* @io_get_open_fptr(i32* %169, i32 %175)
  store %struct.mrb_io* %176, %struct.mrb_io** %23, align 8
  %177 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %178 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %21, align 8
  %181 = call i32 @FD_SET(i32 %179, i32* %180)
  %182 = load i32, i32* %26, align 4
  %183 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %184 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %168
  %188 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %189 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %26, align 4
  br label %191

191:                                              ; preds = %187, %168
  %192 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %193 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %191
  %197 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %198 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %21, align 8
  %201 = call i32 @FD_SET(i32 %199, i32* %200)
  %202 = load i32, i32* %26, align 4
  %203 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %204 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %196
  %208 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %209 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %26, align 4
  br label %211

211:                                              ; preds = %207, %196
  br label %212

212:                                              ; preds = %211, %191
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %28, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %28, align 4
  br label %163

216:                                              ; preds = %163
  br label %218

217:                                              ; preds = %152
  store i32* null, i32** %21, align 8
  br label %218

218:                                              ; preds = %217, %216
  %219 = load i32, i32* %11, align 4
  %220 = call i64 @mrb_nil_p(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %283, label %222

222:                                              ; preds = %218
  %223 = load i32*, i32** %4, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @MRB_TT_ARRAY, align 4
  %226 = call i32 @mrb_check_type(i32* %223, i32 %224, i32 %225)
  store i32* %19, i32** %22, align 8
  %227 = load i32*, i32** %22, align 8
  %228 = call i32 @FD_ZERO(i32* %227)
  store i32 0, i32* %28, align 4
  br label %229

229:                                              ; preds = %279, %222
  %230 = load i32, i32* %28, align 4
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @RARRAY_LEN(i32 %231)
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %234, label %282

234:                                              ; preds = %229
  %235 = load i32*, i32** %4, align 8
  %236 = load i32, i32* %11, align 4
  %237 = call i32* @RARRAY_PTR(i32 %236)
  %238 = load i32, i32* %28, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call %struct.mrb_io* @io_get_open_fptr(i32* %235, i32 %241)
  store %struct.mrb_io* %242, %struct.mrb_io** %23, align 8
  %243 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %244 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %22, align 8
  %247 = call i32 @FD_SET(i32 %245, i32* %246)
  %248 = load i32, i32* %26, align 4
  %249 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %250 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %234
  %254 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %255 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %26, align 4
  br label %257

257:                                              ; preds = %253, %234
  %258 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %259 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %257
  %263 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %264 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %22, align 8
  %267 = call i32 @FD_SET(i32 %265, i32* %266)
  %268 = load i32, i32* %26, align 4
  %269 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %270 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %262
  %274 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %275 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %26, align 4
  br label %277

277:                                              ; preds = %273, %262
  br label %278

278:                                              ; preds = %277, %257
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %28, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %28, align 4
  br label %229

282:                                              ; preds = %229
  br label %284

283:                                              ; preds = %218
  store i32* null, i32** %22, align 8
  br label %284

284:                                              ; preds = %283, %282
  %285 = load i32, i32* %26, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %26, align 4
  br label %287

287:                                              ; preds = %306, %284
  %288 = load i32, i32* %26, align 4
  %289 = load i32*, i32** %20, align 8
  %290 = load i32*, i32** %21, align 8
  %291 = load i32*, i32** %22, align 8
  %292 = load %struct.timeval*, %struct.timeval** %14, align 8
  %293 = call i32 @select(i32 %288, i32* %289, i32* %290, i32* %291, %struct.timeval* %292)
  store i32 %293, i32* %29, align 4
  %294 = load i32, i32* %29, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %287
  %297 = load i64, i64* @errno, align 8
  %298 = load i64, i64* @EINTR, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load i32*, i32** %4, align 8
  %302 = call i32 @mrb_sys_fail(i32* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %296
  %304 = load %struct.timeval*, %struct.timeval** %14, align 8
  %305 = icmp eq %struct.timeval* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %287

307:                                              ; preds = %303
  store i32 1, i32* %27, align 4
  br label %308

308:                                              ; preds = %307, %287
  %309 = load i32, i32* %24, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %29, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 (...) @mrb_nil_value()
  store i32 %315, i32* %3, align 4
  br label %544

316:                                              ; preds = %311, %308
  %317 = load i32*, i32** %4, align 8
  %318 = call i32 @mrb_ary_new_capa(i32* %317, i32 3)
  store i32 %318, i32* %25, align 4
  %319 = load i32*, i32** %4, align 8
  %320 = load i32, i32* %25, align 4
  %321 = load i32*, i32** %20, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %316
  %324 = load i32*, i32** %4, align 8
  %325 = call i32 @mrb_ary_new(i32* %324)
  br label %329

326:                                              ; preds = %316
  %327 = load i32*, i32** %4, align 8
  %328 = call i32 @mrb_ary_new_capa(i32* %327, i32 0)
  br label %329

329:                                              ; preds = %326, %323
  %330 = phi i32 [ %325, %323 ], [ %328, %326 ]
  %331 = call i32 @mrb_ary_push(i32* %319, i32 %320, i32 %330)
  %332 = load i32*, i32** %4, align 8
  %333 = load i32, i32* %25, align 4
  %334 = load i32*, i32** %21, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %329
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @mrb_ary_new(i32* %337)
  br label %342

339:                                              ; preds = %329
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 @mrb_ary_new_capa(i32* %340, i32 0)
  br label %342

342:                                              ; preds = %339, %336
  %343 = phi i32 [ %338, %336 ], [ %341, %339 ]
  %344 = call i32 @mrb_ary_push(i32* %332, i32 %333, i32 %343)
  %345 = load i32*, i32** %4, align 8
  %346 = load i32, i32* %25, align 4
  %347 = load i32*, i32** %22, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load i32*, i32** %4, align 8
  %351 = call i32 @mrb_ary_new(i32* %350)
  br label %355

352:                                              ; preds = %342
  %353 = load i32*, i32** %4, align 8
  %354 = call i32 @mrb_ary_new_capa(i32* %353, i32 0)
  br label %355

355:                                              ; preds = %352, %349
  %356 = phi i32 [ %351, %349 ], [ %354, %352 ]
  %357 = call i32 @mrb_ary_push(i32* %345, i32 %346, i32 %356)
  %358 = load i32, i32* %27, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %542

360:                                              ; preds = %355
  %361 = load i32*, i32** %20, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %363, label %409

363:                                              ; preds = %360
  %364 = load i32, i32* %25, align 4
  %365 = call i32* @RARRAY_PTR(i32 %364)
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %13, align 4
  store i32 0, i32* %28, align 4
  br label %368

368:                                              ; preds = %405, %363
  %369 = load i32, i32* %28, align 4
  %370 = load i32, i32* %8, align 4
  %371 = call i32 @RARRAY_LEN(i32 %370)
  %372 = icmp slt i32 %369, %371
  br i1 %372, label %373, label %408

373:                                              ; preds = %368
  %374 = load i32*, i32** %4, align 8
  %375 = load i32, i32* %8, align 4
  %376 = call i32* @RARRAY_PTR(i32 %375)
  %377 = load i32, i32* %28, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call %struct.mrb_io* @io_get_open_fptr(i32* %374, i32 %380)
  store %struct.mrb_io* %381, %struct.mrb_io** %23, align 8
  %382 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %383 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load i32*, i32** %20, align 8
  %386 = call i64 @FD_ISSET(i32 %384, i32* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %394, label %388

388:                                              ; preds = %373
  %389 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %390 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i64 @FD_ISSET(i32 %391, i32* %16)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %404

394:                                              ; preds = %388, %373
  %395 = load i32*, i32** %4, align 8
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %8, align 4
  %398 = call i32* @RARRAY_PTR(i32 %397)
  %399 = load i32, i32* %28, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @mrb_ary_push(i32* %395, i32 %396, i32 %402)
  br label %404

404:                                              ; preds = %394, %388
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %28, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %28, align 4
  br label %368

408:                                              ; preds = %368
  br label %409

409:                                              ; preds = %408, %360
  %410 = load i32*, i32** %21, align 8
  %411 = icmp ne i32* %410, null
  br i1 %411, label %412, label %475

412:                                              ; preds = %409
  %413 = load i32, i32* %25, align 4
  %414 = call i32* @RARRAY_PTR(i32 %413)
  %415 = getelementptr inbounds i32, i32* %414, i64 1
  %416 = load i32, i32* %415, align 4
  store i32 %416, i32* %13, align 4
  store i32 0, i32* %28, align 4
  br label %417

417:                                              ; preds = %471, %412
  %418 = load i32, i32* %28, align 4
  %419 = load i32, i32* %10, align 4
  %420 = call i32 @RARRAY_LEN(i32 %419)
  %421 = icmp slt i32 %418, %420
  br i1 %421, label %422, label %474

422:                                              ; preds = %417
  %423 = load i32*, i32** %4, align 8
  %424 = load i32, i32* %10, align 4
  %425 = call i32* @RARRAY_PTR(i32 %424)
  %426 = load i32, i32* %28, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = call %struct.mrb_io* @io_get_open_fptr(i32* %423, i32 %429)
  store %struct.mrb_io* %430, %struct.mrb_io** %23, align 8
  %431 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %432 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %21, align 8
  %435 = call i64 @FD_ISSET(i32 %433, i32* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %447

437:                                              ; preds = %422
  %438 = load i32*, i32** %4, align 8
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* %10, align 4
  %441 = call i32* @RARRAY_PTR(i32 %440)
  %442 = load i32, i32* %28, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @mrb_ary_push(i32* %438, i32 %439, i32 %445)
  br label %470

447:                                              ; preds = %422
  %448 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %449 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp sge i32 %450, 0
  br i1 %451, label %452, label %469

452:                                              ; preds = %447
  %453 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %454 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32*, i32** %21, align 8
  %457 = call i64 @FD_ISSET(i32 %455, i32* %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %469

459:                                              ; preds = %452
  %460 = load i32*, i32** %4, align 8
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* %10, align 4
  %463 = call i32* @RARRAY_PTR(i32 %462)
  %464 = load i32, i32* %28, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @mrb_ary_push(i32* %460, i32 %461, i32 %467)
  br label %469

469:                                              ; preds = %459, %452, %447
  br label %470

470:                                              ; preds = %469, %437
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %28, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %28, align 4
  br label %417

474:                                              ; preds = %417
  br label %475

475:                                              ; preds = %474, %409
  %476 = load i32*, i32** %22, align 8
  %477 = icmp ne i32* %476, null
  br i1 %477, label %478, label %541

478:                                              ; preds = %475
  %479 = load i32, i32* %25, align 4
  %480 = call i32* @RARRAY_PTR(i32 %479)
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  %482 = load i32, i32* %481, align 4
  store i32 %482, i32* %13, align 4
  store i32 0, i32* %28, align 4
  br label %483

483:                                              ; preds = %537, %478
  %484 = load i32, i32* %28, align 4
  %485 = load i32, i32* %11, align 4
  %486 = call i32 @RARRAY_LEN(i32 %485)
  %487 = icmp slt i32 %484, %486
  br i1 %487, label %488, label %540

488:                                              ; preds = %483
  %489 = load i32*, i32** %4, align 8
  %490 = load i32, i32* %11, align 4
  %491 = call i32* @RARRAY_PTR(i32 %490)
  %492 = load i32, i32* %28, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = call %struct.mrb_io* @io_get_open_fptr(i32* %489, i32 %495)
  store %struct.mrb_io* %496, %struct.mrb_io** %23, align 8
  %497 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %498 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load i32*, i32** %22, align 8
  %501 = call i64 @FD_ISSET(i32 %499, i32* %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %513

503:                                              ; preds = %488
  %504 = load i32*, i32** %4, align 8
  %505 = load i32, i32* %13, align 4
  %506 = load i32, i32* %11, align 4
  %507 = call i32* @RARRAY_PTR(i32 %506)
  %508 = load i32, i32* %28, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @mrb_ary_push(i32* %504, i32 %505, i32 %511)
  br label %536

513:                                              ; preds = %488
  %514 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %515 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = icmp sge i32 %516, 0
  br i1 %517, label %518, label %535

518:                                              ; preds = %513
  %519 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %520 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load i32*, i32** %22, align 8
  %523 = call i64 @FD_ISSET(i32 %521, i32* %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %535

525:                                              ; preds = %518
  %526 = load i32*, i32** %4, align 8
  %527 = load i32, i32* %13, align 4
  %528 = load i32, i32* %11, align 4
  %529 = call i32* @RARRAY_PTR(i32 %528)
  %530 = load i32, i32* %28, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  %533 = load i32, i32* %532, align 4
  %534 = call i32 @mrb_ary_push(i32* %526, i32 %527, i32 %533)
  br label %535

535:                                              ; preds = %525, %518, %513
  br label %536

536:                                              ; preds = %535, %503
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %28, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %28, align 4
  br label %483

540:                                              ; preds = %483
  br label %541

541:                                              ; preds = %540, %475
  br label %542

542:                                              ; preds = %541, %355
  %543 = load i32, i32* %25, align 4
  store i32 %543, i32* %3, align 4
  br label %544

544:                                              ; preds = %542, %314
  %545 = load i32, i32* %3, align 4
  ret i32 %545
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i32*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local { i64, i64 } @time2timeval(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @mrb_check_type(i32*, i32, i32) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local %struct.mrb_io* @io_get_open_fptr(i32*, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @mrb_io_read_data_pending(i32*, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
