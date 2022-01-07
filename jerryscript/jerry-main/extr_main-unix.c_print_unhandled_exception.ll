; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix.c_print_unhandled_exception.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix.c_print_unhandled_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Exception backtrace:\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%3u: [Backtrace string too long]\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%3u: %s\0A\00", align 1
@__const.print_unhandled_exception.msg = private unnamed_addr constant [25 x i8] c"[Error message too long]\00", align 16
@JERRY_FEATURE_ERROR_MESSAGES = common dso_local global i32 0, align 4
@JERRY_ERROR_SYNTAX = common dso_local global i64 0, align 8
@buffer = common dso_local global i8* null, align 8
@SYNTAX_ERROR_CONTEXT_SIZE = common dso_local global i32 0, align 4
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Script Error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_unhandled_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_unhandled_exception(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [25 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @jerry_value_is_error(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @jerry_value_is_object(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %106

34:                                               ; preds = %1
  %35 = call i32 @jerry_create_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @jerry_get_property(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @jerry_release_value(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @jerry_value_is_error(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %103, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @jerry_value_is_array(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @jerry_get_array_length(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 32
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 32, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %48
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %99, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @jerry_get_property_by_index(i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @jerry_value_is_error(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @jerry_value_is_string(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @jerry_get_utf8_string_size(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 256
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %95

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @jerry_string_to_utf8_char_buffer(i32 %80, i8* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %92, i8* %93)
  br label %95

95:                                               ; preds = %79, %76
  br label %96

96:                                               ; preds = %95, %67, %60
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @jerry_release_value(i32 %97)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %56

102:                                              ; preds = %56
  br label %103

103:                                              ; preds = %102, %44, %34
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @jerry_release_value(i32 %104)
  br label %106

106:                                              ; preds = %103, %1
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @jerry_value_to_string(i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @jerry_get_utf8_string_size(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp sge i32 %111, 256
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = bitcast [25 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %114, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.print_unhandled_exception.msg, i32 0, i32 0), i64 25, i1 false)
  store i32 24, i32* %12, align 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %116 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i32 @memcpy(i8* %115, i8* %116, i32 %118)
  br label %282

120:                                              ; preds = %106
  %121 = load i32, i32* %11, align 4
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @jerry_string_to_utf8_char_buffer(i32 %121, i8* %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %131
  store i8 0, i8* %132, align 1
  %133 = load i32, i32* @JERRY_FEATURE_ERROR_MESSAGES, align 4
  %134 = call i64 @jerry_is_feature_enabled(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %281

136:                                              ; preds = %120
  %137 = load i32, i32* %2, align 4
  %138 = call i64 @jerry_get_error_type(i32 %137)
  %139 = load i64, i64* @JERRY_ERROR_SYNTAX, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %281

141:                                              ; preds = %136
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8* %145, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8* %146, i8** %20, align 8
  br label %147

147:                                              ; preds = %192, %141
  %148 = load i8*, i8** %20, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ult i8* %148, %149
  br i1 %150, label %151, label %195

151:                                              ; preds = %147
  %152 = load i8*, i8** %20, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 91
  br i1 %155, label %156, label %191

156:                                              ; preds = %151
  %157 = load i8*, i8** %20, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %20, align 8
  %159 = load i8*, i8** %20, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 60
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %195

164:                                              ; preds = %156
  %165 = load i8*, i8** %20, align 8
  store i8* %165, i8** %18, align 8
  br label %166

166:                                              ; preds = %177, %164
  %167 = load i8*, i8** %20, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = icmp ult i8* %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i8*, i8** %20, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 58
  br label %175

175:                                              ; preds = %170, %166
  %176 = phi i1 [ false, %166 ], [ %174, %170 ]
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = load i8*, i8** %20, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %20, align 8
  br label %166

180:                                              ; preds = %175
  %181 = load i8*, i8** %20, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %20, align 8
  store i8* %181, i8** %19, align 8
  %183 = load i8*, i8** %20, align 8
  %184 = call i64 @strtol(i8* %183, i8** %20, i32 10)
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %16, align 4
  %186 = load i8*, i8** %20, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %20, align 8
  %188 = load i8*, i8** %20, align 8
  %189 = call i64 @strtol(i8* %188, i8** null, i32 10)
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %17, align 4
  br label %195

191:                                              ; preds = %151
  br label %192

192:                                              ; preds = %191
  %193 = load i8*, i8** %20, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %20, align 8
  br label %147

195:                                              ; preds = %180, %163, %147
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %280

198:                                              ; preds = %195
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %280

201:                                              ; preds = %198
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %202 = load i8*, i8** %19, align 8
  store i8 0, i8* %202, align 1
  %203 = load i8*, i8** %18, align 8
  %204 = call i32 @read_file(i8* %203, i64* %24)
  %205 = load i8*, i8** %19, align 8
  store i8 58, i8* %205, align 1
  br label %206

206:                                              ; preds = %264, %201
  %207 = load i32, i32* %23, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %24, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %206
  %212 = load i8*, i8** @buffer, align 8
  %213 = load i32, i32* %23, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 0
  br label %219

219:                                              ; preds = %211, %206
  %220 = phi i1 [ false, %206 ], [ %218, %211 ]
  br i1 %220, label %221, label %267

221:                                              ; preds = %219
  %222 = load i8*, i8** @buffer, align 8
  %223 = load i32, i32* %23, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %229, label %232

229:                                              ; preds = %221
  %230 = load i32, i32* %21, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %21, align 4
  br label %232

232:                                              ; preds = %229, %221
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* @SYNTAX_ERROR_CONTEXT_SIZE, align 4
  %235 = icmp ult i32 %233, %234
  br i1 %235, label %246, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %21, align 4
  %239 = icmp uge i32 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %21, align 4
  %243 = sub i32 %241, %242
  %244 = load i32, i32* @SYNTAX_ERROR_CONTEXT_SIZE, align 4
  %245 = icmp ule i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240, %232
  store i32 1, i32* %22, align 4
  br label %247

247:                                              ; preds = %246, %240, %236
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* %16, align 4
  %250 = icmp ugt i32 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %267

252:                                              ; preds = %247
  %253 = load i32, i32* %22, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %257 = load i8*, i8** @buffer, align 8
  %258 = load i32, i32* %23, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %255, %252
  %265 = load i32, i32* %23, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %23, align 4
  br label %206

267:                                              ; preds = %251, %219
  %268 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %269 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %270

270:                                              ; preds = %274, %267
  %271 = load i32, i32* %17, align 4
  %272 = add i32 %271, -1
  store i32 %272, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %276 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %270

277:                                              ; preds = %270
  %278 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %279 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %198, %195
  br label %281

281:                                              ; preds = %280, %136, %120
  br label %282

282:                                              ; preds = %281, %113
  %283 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %284 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %285 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %283, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %284)
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @jerry_release_value(i32 %286)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i64 @jerry_value_is_object(i32) #1

declare dso_local i32 @jerry_create_string(i8*) #1

declare dso_local i32 @jerry_get_property(i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i64 @jerry_value_is_array(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @jerry_get_array_length(i32) #1

declare dso_local i32 @jerry_get_property_by_index(i32, i32) #1

declare dso_local i64 @jerry_value_is_string(i32) #1

declare dso_local i32 @jerry_get_utf8_string_size(i32) #1

declare dso_local i32 @jerry_string_to_utf8_char_buffer(i32, i8*, i32) #1

declare dso_local i32 @jerry_value_to_string(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @jerry_is_feature_enabled(i32) #1

declare dso_local i64 @jerry_get_error_type(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @read_file(i8*, i64*) #1

declare dso_local i32 @jerry_port_log(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
