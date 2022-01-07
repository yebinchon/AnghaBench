; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_serialize_to_buffer_r.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_serialize_to_buffer_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@FLOAT_FORMAT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@FIXED_FORMAT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i8*)* @json_serialize_to_buffer_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_serialize_to_buffer_r(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @json_value_get_type(i32* %22)
  switch i32 %23, label %279 [
    i32 135, label %24
    i32 129, label %102
    i32 128, label %211
    i32 134, label %237
    i32 130, label %247
    i32 131, label %275
    i32 133, label %278
  ]

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @json_value_get_array(i32* %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i64 @json_array_get_count(i32* %27)
  store i64 %28, i64* %18, align 8
  %29 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %18, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32, %24
  store i64 0, i64* %17, align 8
  br label %38

38:                                               ; preds = %87, %37
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %18, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @APPEND_INDENT(i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32*, i32** %15, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call i32* @json_array_get_value(i32* %50, i64 %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @json_serialize_to_buffer_r(i32* %53, i8* %54, i32 %56, i32 %57, i8* %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 -1, i32* %6, align 4
  br label %280

63:                                               ; preds = %49
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %21, align 4
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %18, align 8
  %77 = sub i64 %76, 1
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %17, align 8
  br label %38

90:                                               ; preds = %38
  %91 = load i64, i64* %18, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @APPEND_INDENT(i32 %97)
  br label %99

99:                                               ; preds = %96, %93, %90
  %100 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* %21, align 4
  store i32 %101, i32* %6, align 4
  br label %280

102:                                              ; preds = %5
  %103 = load i32*, i32** %7, align 8
  %104 = call i32* @json_value_get_object(i32* %103)
  store i32* %104, i32** %16, align 8
  %105 = load i32*, i32** %16, align 8
  %106 = call i64 @json_object_get_count(i32* %105)
  store i64 %106, i64* %18, align 8
  %107 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i64, i64* %18, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110, %102
  store i64 0, i64* %17, align 8
  br label %116

116:                                              ; preds = %196, %115
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %18, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %199

120:                                              ; preds = %116
  %121 = load i32*, i32** %16, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i8* @json_object_get_name(i32* %121, i64 %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 -1, i32* %6, align 4
  br label %280

127:                                              ; preds = %120
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @APPEND_INDENT(i32 %132)
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @json_serialize_string(i8* %135, i8* %136)
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 -1, i32* %6, align 4
  br label %280

141:                                              ; preds = %134
  %142 = load i8*, i8** %8, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %20, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %8, align 8
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %21, align 4
  %153 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %149
  %159 = load i32*, i32** %16, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = call i32* @json_object_get_value(i32* %159, i8* %160)
  store i32* %161, i32** %14, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  %166 = load i32, i32* %10, align 4
  %167 = load i8*, i8** %11, align 8
  %168 = call i32 @json_serialize_to_buffer_r(i32* %162, i8* %163, i32 %165, i32 %166, i8* %167)
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %158
  store i32 -1, i32* %6, align 4
  br label %280

172:                                              ; preds = %158
  %173 = load i8*, i8** %8, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32, i32* %20, align 4
  %177 = load i8*, i8** %8, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %8, align 8
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %21, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %21, align 4
  %184 = load i64, i64* %17, align 8
  %185 = load i64, i64* %18, align 8
  %186 = sub i64 %185, 1
  %187 = icmp ult i64 %184, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %180
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %190
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %17, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %17, align 8
  br label %116

199:                                              ; preds = %116
  %200 = load i64, i64* %18, align 8
  %201 = icmp ugt i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @APPEND_INDENT(i32 %206)
  br label %208

208:                                              ; preds = %205, %202, %199
  %209 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %210 = load i32, i32* %21, align 4
  store i32 %210, i32* %6, align 4
  br label %280

211:                                              ; preds = %5
  %212 = load i32*, i32** %7, align 8
  %213 = call i8* @json_value_get_string(i32* %212)
  store i8* %213, i8** %13, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 -1, i32* %6, align 4
  br label %280

217:                                              ; preds = %211
  %218 = load i8*, i8** %13, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = call i32 @json_serialize_string(i8* %218, i8* %219)
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 -1, i32* %6, align 4
  br label %280

224:                                              ; preds = %217
  %225 = load i8*, i8** %8, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32, i32* %20, align 4
  %229 = load i8*, i8** %8, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %8, align 8
  br label %232

232:                                              ; preds = %227, %224
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %21, align 4
  %236 = load i32, i32* %21, align 4
  store i32 %236, i32* %6, align 4
  br label %280

237:                                              ; preds = %5
  %238 = load i32*, i32** %7, align 8
  %239 = call i32 @json_value_get_boolean(i32* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %245

243:                                              ; preds = %237
  %244 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %241
  %246 = load i32, i32* %21, align 4
  store i32 %246, i32* %6, align 4
  br label %280

247:                                              ; preds = %5
  %248 = load i32*, i32** %7, align 8
  %249 = call double @json_value_get_number(i32* %248)
  store double %249, double* %19, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i8*, i8** %8, align 8
  store i8* %253, i8** %11, align 8
  br label %254

254:                                              ; preds = %252, %247
  %255 = load i8*, i8** %11, align 8
  %256 = load i8*, i8** @FLOAT_FORMAT, align 8
  %257 = load double, double* %19, align 8
  %258 = call i32 @sprintf(i8* %255, i8* %256, double %257)
  store i32 %258, i32* %20, align 4
  %259 = load i32, i32* %20, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  store i32 -1, i32* %6, align 4
  br label %280

262:                                              ; preds = %254
  %263 = load i8*, i8** %8, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load i32, i32* %20, align 4
  %267 = load i8*, i8** %8, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8* %269, i8** %8, align 8
  br label %270

270:                                              ; preds = %265, %262
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %21, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %21, align 4
  store i32 %274, i32* %6, align 4
  br label %280

275:                                              ; preds = %5
  %276 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i32, i32* %21, align 4
  store i32 %277, i32* %6, align 4
  br label %280

278:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %280

279:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %280

280:                                              ; preds = %279, %278, %275, %270, %261, %245, %232, %223, %216, %208, %171, %140, %126, %99, %62
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @json_value_get_type(i32*) #1

declare dso_local i32* @json_value_get_array(i32*) #1

declare dso_local i64 @json_array_get_count(i32*) #1

declare dso_local i32 @APPEND_STRING(i8*) #1

declare dso_local i32 @APPEND_INDENT(i32) #1

declare dso_local i32* @json_array_get_value(i32*, i64) #1

declare dso_local i32* @json_value_get_object(i32*) #1

declare dso_local i64 @json_object_get_count(i32*) #1

declare dso_local i8* @json_object_get_name(i32*, i64) #1

declare dso_local i32 @json_serialize_string(i8*, i8*) #1

declare dso_local i32* @json_object_get_value(i32*, i8*) #1

declare dso_local i8* @json_value_get_string(i32*) #1

declare dso_local i32 @json_value_get_boolean(i32*) #1

declare dso_local double @json_value_get_number(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
