; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_renew_tl_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_renew_tl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.tl_combinator**, %struct.tl_type** }
%struct.tl_combinator = type { i32 }
%struct.tl_type = type { i32, i32, i32* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Starting config renew\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Schema 0x%08x\0A\00", align 1
@schema_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Schema version %d\0A\00", align 1
@inbuf = common dso_local global %struct.TYPE_3__* null, align 8
@tl_config_version = common dso_local global i32 0, align 4
@tl_config_date = common dso_local global i32 0, align 4
@config_crc64 = common dso_local global i64 0, align 8
@cur_config = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Found %d types\0A\00", align 1
@TLS_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Found %d constructors\0A\00", align 1
@TLS_COMBINATOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Found %d functions\0A\00", align 1
@renew_tl_config.IP = internal global [10000 x i8*] zeroinitializer, align 16
@tl_config_name = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @renew_tl_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tl_type**, align 8
  %11 = alloca %struct.tl_combinator**, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %0
  %19 = call i32 (...) @tl_parse_init()
  %20 = call i32 (...) @tl_parse_int()
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @get_schema_version(i32 %28)
  store i32 %29, i32* @schema_version, align 4
  %30 = load i32, i32* @verbosity, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @schema_version, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* @schema_version, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i64 (...) @tl_parse_error()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  store i32 -1, i32* %1, align 4
  br label %378

43:                                               ; preds = %39
  %44 = call i32 (...) @tl_parse_int()
  store i32 %44, i32* %3, align 4
  %45 = call i32 (...) @tl_parse_int()
  store i32 %45, i32* %4, align 4
  %46 = call i64 (...) @tl_parse_error()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %1, align 4
  br label %378

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inbuf, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inbuf, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inbuf, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i64 @crc64_partial(i64 %52, i32 %64, i64 -1)
  store i64 %65, i64* %5, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @tl_config_version, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @tl_config_version, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @tl_config_date, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* @config_crc64, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73, %49
  store i32 0, i32* %1, align 4
  br label %378

82:                                               ; preds = %77
  %83 = call i32 (...) @tl_config_alloc()
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %84 = call i32 (...) @tl_parse_int()
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 10000
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = call i64 (...) @tl_parse_error()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %87, %82
  %94 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 8, %97
  %99 = trunc i64 %98 to i32
  %100 = call i8* @zzmalloc0(i32 %99)
  %101 = bitcast i8* %100 to %struct.tl_type**
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  store %struct.tl_type** %101, %struct.tl_type*** %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ADD_PMALLOC(i32 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load %struct.tl_type**, %struct.tl_type*** %113, align 8
  store %struct.tl_type** %114, %struct.tl_type*** %10, align 8
  %115 = load i32, i32* @verbosity, align 4
  %116 = icmp sge i32 %115, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %95
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %95
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %147, %121
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %122
  %127 = call i32 (...) @tl_parse_int()
  %128 = load i32, i32* @TLS_TYPE, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

132:                                              ; preds = %126
  %133 = call %struct.tl_type* (...) @read_types()
  %134 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %134, i64 %136
  store %struct.tl_type* %133, %struct.tl_type** %137, align 8
  %138 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %138, i64 %140
  %142 = load %struct.tl_type*, %struct.tl_type** %141, align 8
  %143 = icmp ne %struct.tl_type* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %132
  %145 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %122

150:                                              ; preds = %122
  %151 = call i32 (...) @tl_parse_int()
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = call i64 (...) @tl_parse_error()
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154, %150
  %158 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @verbosity, align 4
  %164 = icmp sge i32 %163, 2
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i32, i32* @stderr, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %165, %159
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %186, %169
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = call i32 (...) @tl_parse_int()
  %176 = load i32, i32* @TLS_COMBINATOR, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

180:                                              ; preds = %174
  %181 = call %struct.tl_combinator* @read_combinators(i32 2)
  %182 = icmp ne %struct.tl_combinator* %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %170

189:                                              ; preds = %170
  %190 = call i32 (...) @tl_parse_int()
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = icmp sgt i32 %194, 10000
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = call i64 (...) @tl_parse_error()
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196, %193, %189
  %200 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

201:                                              ; preds = %196
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 8, %206
  %208 = trunc i64 %207 to i32
  %209 = call i8* @zzmalloc0(i32 %208)
  %210 = bitcast i8* %209 to %struct.tl_combinator**
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  store %struct.tl_combinator** %210, %struct.tl_combinator*** %212, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @ADD_PMALLOC(i32 %216)
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_config, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 3
  %220 = load %struct.tl_combinator**, %struct.tl_combinator*** %219, align 8
  store %struct.tl_combinator** %220, %struct.tl_combinator*** %11, align 8
  %221 = load i32, i32* @verbosity, align 4
  %222 = icmp sge i32 %221, 2
  br i1 %222, label %223, label %227

223:                                              ; preds = %201
  %224 = load i32, i32* @stderr, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %223, %201
  store i32 0, i32* %9, align 4
  br label %228

228:                                              ; preds = %253, %227
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %256

232:                                              ; preds = %228
  %233 = call i32 (...) @tl_parse_int()
  %234 = load i32, i32* @TLS_COMBINATOR, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

238:                                              ; preds = %232
  %239 = call %struct.tl_combinator* @read_combinators(i32 3)
  %240 = load %struct.tl_combinator**, %struct.tl_combinator*** %11, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.tl_combinator*, %struct.tl_combinator** %240, i64 %242
  store %struct.tl_combinator* %239, %struct.tl_combinator** %243, align 8
  %244 = load %struct.tl_combinator**, %struct.tl_combinator*** %11, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.tl_combinator*, %struct.tl_combinator** %244, i64 %246
  %248 = load %struct.tl_combinator*, %struct.tl_combinator** %247, align 8
  %249 = icmp ne %struct.tl_combinator* %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %238
  %251 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %228

256:                                              ; preds = %228
  %257 = call i32 (...) @tl_parse_end()
  %258 = call i64 (...) @tl_parse_error()
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

262:                                              ; preds = %256
  %263 = call i64 @gen_function_fetch(i8** getelementptr inbounds ([10000 x i8*], [10000 x i8*]* @renew_tl_config.IP, i64 0, i64 0), i32 100)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  store i32 -2, i32* %1, align 4
  br label %378

266:                                              ; preds = %262
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %290, %266
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %6, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %293

271:                                              ; preds = %267
  %272 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %272, i64 %274
  %276 = load %struct.tl_type*, %struct.tl_type** %275, align 8
  %277 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %279, i64 %281
  %283 = load %struct.tl_type*, %struct.tl_type** %282, align 8
  %284 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %278, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %271
  %288 = call i32 (...) @tl_config_back()
  store i32 -1, i32* %1, align 4
  br label %378

289:                                              ; preds = %271
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %9, align 4
  br label %267

293:                                              ; preds = %267
  store i32 0, i32* %9, align 4
  br label %294

294:                                              ; preds = %344, %293
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* %6, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %347

298:                                              ; preds = %294
  store i32 0, i32* %12, align 4
  br label %299

299:                                              ; preds = %340, %298
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %301, i64 %303
  %305 = load %struct.tl_type*, %struct.tl_type** %304, align 8
  %306 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = icmp slt i32 %300, %307
  br i1 %308, label %309, label %343

309:                                              ; preds = %299
  %310 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %310, i64 %312
  %314 = load %struct.tl_type*, %struct.tl_type** %313, align 8
  %315 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @gen_constructor_store(i32 %320, i8** getelementptr inbounds ([10000 x i8*], [10000 x i8*]* @renew_tl_config.IP, i64 0, i64 0), i32 10000)
  %322 = icmp slt i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %309
  store i32 -2, i32* %1, align 4
  br label %378

324:                                              ; preds = %309
  %325 = load %struct.tl_type**, %struct.tl_type*** %10, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.tl_type*, %struct.tl_type** %325, i64 %327
  %329 = load %struct.tl_type*, %struct.tl_type** %328, align 8
  %330 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = call i64 @gen_constructor_fetch(i32 %335, i8** getelementptr inbounds ([10000 x i8*], [10000 x i8*]* @renew_tl_config.IP, i64 0, i64 0), i32 10000)
  %337 = icmp slt i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %324
  store i32 -2, i32* %1, align 4
  br label %378

339:                                              ; preds = %324
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %12, align 4
  br label %299

343:                                              ; preds = %299
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %9, align 4
  br label %294

347:                                              ; preds = %294
  store i32 0, i32* %9, align 4
  br label %348

348:                                              ; preds = %362, %347
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* %7, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %365

352:                                              ; preds = %348
  %353 = load %struct.tl_combinator**, %struct.tl_combinator*** %11, align 8
  %354 = load i32, i32* %9, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.tl_combinator*, %struct.tl_combinator** %353, i64 %355
  %357 = load %struct.tl_combinator*, %struct.tl_combinator** %356, align 8
  %358 = call i64 @gen_function_store(%struct.tl_combinator* %357, i8** getelementptr inbounds ([10000 x i8*], [10000 x i8*]* @renew_tl_config.IP, i64 0, i64 0), i32 10000)
  %359 = icmp slt i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %352
  store i32 -2, i32* %1, align 4
  br label %378

361:                                              ; preds = %352
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %9, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %9, align 4
  br label %348

365:                                              ; preds = %348
  %366 = load i64, i64* @tl_config_name, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = load i64, i64* @tl_config_name, align 8
  %370 = call i32 @strlen(i64 %369)
  %371 = call i32 @ADD_PFREE(i32 %370)
  %372 = load i64, i64* @tl_config_name, align 8
  %373 = call i32 @zzstrfree(i64 %372)
  br label %374

374:                                              ; preds = %368, %365
  store i64 0, i64* @tl_config_name, align 8
  %375 = load i64, i64* %5, align 8
  store i64 %375, i64* @config_crc64, align 8
  %376 = load i32, i32* %3, align 4
  store i32 %376, i32* @tl_config_version, align 4
  %377 = load i32, i32* %4, align 4
  store i32 %377, i32* @tl_config_date, align 4
  store i32 1, i32* %1, align 4
  br label %378

378:                                              ; preds = %374, %360, %338, %323, %287, %265, %260, %250, %236, %199, %183, %178, %157, %144, %130, %93, %81, %48, %42
  %379 = load i32, i32* %1, align 4
  ret i32 %379
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @tl_parse_init(...) #1

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i32 @get_schema_version(i32) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i64 @crc64_partial(i64, i32, i64) #1

declare dso_local i32 @tl_config_alloc(...) #1

declare dso_local i32 @tl_config_back(...) #1

declare dso_local i8* @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local %struct.tl_type* @read_types(...) #1

declare dso_local %struct.tl_combinator* @read_combinators(i32) #1

declare dso_local i32 @tl_parse_end(...) #1

declare dso_local i64 @gen_function_fetch(i8**, i32) #1

declare dso_local i64 @gen_constructor_store(i32, i8**, i32) #1

declare dso_local i64 @gen_constructor_fetch(i32, i8**, i32) #1

declare dso_local i64 @gen_function_store(%struct.tl_combinator*, i8**, i32) #1

declare dso_local i32 @ADD_PFREE(i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @zzstrfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
