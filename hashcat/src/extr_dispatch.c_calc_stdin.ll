; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_dispatch.c_calc_stdin.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_dispatch.c_calc_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32, i32*, i32, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i8*, i32, i8*, i32, i64, i64, i32, i64, i64, i64, i64 }

@HCBUFSIZ_LARGE = common dso_local global i32 0, align 4
@HCBUFSIZ_TINY = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@RP_PASSWORD_SIZE = common dso_local global i32 0, align 4
@PW_MAX = common dso_local global i64 0, align 8
@ATTACK_KERN_STRAIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)* @calc_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_stdin(%struct.TYPE_24__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %6, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %7, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %8, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %9, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %10, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %11, align 8
  %46 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @hcmalloc(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @iconv_open(i32 %61, i32 %64)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp eq i64 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @hcfree(i8* %69)
  store i32 -1, i32* %3, align 4
  br label %366

71:                                               ; preds = %58
  %72 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %73 = call i64 @hcmalloc(i64 %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %15, align 8
  br label %75

75:                                               ; preds = %71, %2
  br label %76

76:                                               ; preds = %340, %75
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %341

81:                                               ; preds = %76
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @hc_thread_mutex_lock(i32 %84)
  %86 = load i32, i32* @stdin, align 4
  %87 = call i64 @feof(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hc_thread_mutex_unlock(i32 %92)
  br label %341

94:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memset(i8* %97, i32 0, i32 %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memset(i8* %104, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %252, %249, %162, %131, %94
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %253

117:                                              ; preds = %109
  %118 = call i32 @select_read_timeout_console(i32 1)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %253

122:                                              ; preds = %117
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %253

131:                                              ; preds = %125
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %109

136:                                              ; preds = %122
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* @stdin, align 4
  %143 = call i8* @fgets(i8* %139, i32 %141, i32 %142)
  store i8* %143, i8** %18, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %253

147:                                              ; preds = %136
  %148 = load i8*, i8** %18, align 8
  %149 = call i64 @in_superchop(i8* %148)
  store i64 %149, i64* %19, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %151 = load i8*, i8** %18, align 8
  %152 = load i64, i64* %19, align 8
  %153 = call i64 @convert_from_hex(%struct.TYPE_24__* %150, i8* %151, i64 %152)
  store i64 %153, i64* %19, align 8
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %168

156:                                              ; preds = %147
  %157 = load i8*, i8** %15, align 8
  store i8* %157, i8** %20, align 8
  %158 = load i64, i64* @HCBUFSIZ_TINY, align 8
  store i64 %158, i64* %21, align 8
  %159 = load i64, i64* %14, align 8
  %160 = call i64 @iconv(i64 %159, i8** %18, i64* %19, i8** %20, i64* %21)
  %161 = icmp eq i64 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %109

163:                                              ; preds = %156
  %164 = load i8*, i8** %15, align 8
  store i8* %164, i8** %18, align 8
  %165 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %166 = load i64, i64* %21, align 8
  %167 = sub i64 %165, %166
  store i64 %167, i64* %19, align 8
  br label %168

168:                                              ; preds = %163, %147
  %169 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %170 = zext i32 %169 to i64
  %171 = call i8* @llvm.stacksave()
  store i8* %171, i8** %22, align 8
  %172 = alloca i8, i64 %170, align 16
  store i64 %170, i64* %23, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @run_rule_engine(i32 %176, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %168
  %183 = load i64, i64* %19, align 8
  %184 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp uge i64 %183, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 4, i32* %24, align 4
  br label %249

188:                                              ; preds = %182
  %189 = trunc i64 %170 to i32
  %190 = call i32 @memset(i8* %172, i32 0, i32 %189)
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i8*, i8** %18, align 8
  %199 = load i64, i64* %19, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @_old_apply_rule(i32 %193, i32 %197, i8* %198, i32 %200, i8* %172)
  store i32 %201, i32* %25, align 4
  %202 = load i32, i32* %25, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %188
  store i32 4, i32* %24, align 4
  br label %249

205:                                              ; preds = %188
  store i8* %172, i8** %18, align 8
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %19, align 8
  br label %208

208:                                              ; preds = %205, %168
  %209 = load i64, i64* %19, align 8
  %210 = load i64, i64* @PW_MAX, align 8
  %211 = icmp ugt i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 4, i32* %24, align 4
  br label %249

213:                                              ; preds = %208
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %26, align 8
  %217 = load i64, i64* %26, align 8
  %218 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %236

220:                                              ; preds = %213
  %221 = load i64, i64* %19, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ult i64 %221, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load i64, i64* %19, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ugt i64 %227, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226, %220
  %233 = load i32, i32* %16, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %16, align 4
  store i32 4, i32* %24, align 4
  br label %249

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235, %213
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = bitcast i8* %238 to i32*
  %240 = load i64, i64* %19, align 8
  %241 = trunc i64 %240 to i32
  %242 = call i32 @pw_add(%struct.TYPE_21__* %237, i32* %239, i32 %241)
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  store i32 5, i32* %24, align 4
  br label %249

248:                                              ; preds = %236
  store i32 0, i32* %24, align 4
  br label %249

249:                                              ; preds = %248, %247, %232, %212, %204, %187
  %250 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %24, align 4
  switch i32 %251, label %368 [
    i32 0, label %252
    i32 4, label %109
    i32 5, label %253
  ]

252:                                              ; preds = %249
  br label %109

253:                                              ; preds = %249, %146, %130, %121, %109
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @hc_thread_mutex_unlock(i32 %256)
  %258 = load i32, i32* %16, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %292

260:                                              ; preds = %253
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @hc_thread_mutex_lock(i32 %263)
  store i64 0, i64* %27, align 8
  br label %265

265:                                              ; preds = %284, %260
  %266 = load i64, i64* %27, align 8
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp slt i64 %266, %269
  br i1 %270, label %271, label %287

271:                                              ; preds = %265
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %272, %275
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %27, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, %276
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %271
  %285 = load i64, i64* %27, align 8
  %286 = add nsw i64 %285, 1
  store i64 %286, i64* %27, align 8
  br label %265

287:                                              ; preds = %265
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @hc_thread_mutex_unlock(i32 %290)
  br label %292

292:                                              ; preds = %287, %253
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %341

298:                                              ; preds = %292
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %341

304:                                              ; preds = %298
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @run_copy(%struct.TYPE_24__* %305, %struct.TYPE_21__* %306, i64 %309)
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %315

312:                                              ; preds = %304
  %313 = load i8*, i8** %12, align 8
  %314 = call i32 @hcfree(i8* %313)
  store i32 -1, i32* %3, align 4
  br label %366

315:                                              ; preds = %304
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @run_cracker(%struct.TYPE_24__* %316, %struct.TYPE_21__* %317, i64 %320)
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %326

323:                                              ; preds = %315
  %324 = load i8*, i8** %12, align 8
  %325 = call i32 @hcfree(i8* %324)
  store i32 -1, i32* %3, align 4
  br label %366

326:                                              ; preds = %315
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 4
  store i64 0, i64* %328, align 8
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  br label %341

334:                                              ; preds = %326
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %341

340:                                              ; preds = %334
  br label %76

341:                                              ; preds = %339, %333, %303, %297, %89, %76
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 8
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 10
  store i64 %344, i64* %346, align 8
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 7
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 9
  store i64 %349, i64* %351, align 8
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 8
  store i64 0, i64* %353, align 8
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 7
  store i64 0, i64* %355, align 8
  %356 = load i32, i32* %13, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %363

358:                                              ; preds = %341
  %359 = load i64, i64* %14, align 8
  %360 = call i32 @iconv_close(i64 %359)
  %361 = load i8*, i8** %15, align 8
  %362 = call i32 @hcfree(i8* %361)
  br label %363

363:                                              ; preds = %358, %341
  %364 = load i8*, i8** %12, align 8
  %365 = call i32 @hcfree(i8* %364)
  store i32 0, i32* %3, align 4
  br label %366

366:                                              ; preds = %363, %323, %312, %68
  %367 = load i32, i32* %3, align 4
  ret i32 %367

368:                                              ; preds = %249
  unreachable
}

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @iconv_open(i32, i32) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @hc_thread_mutex_lock(i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @hc_thread_mutex_unlock(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @select_read_timeout_console(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i64 @in_superchop(i8*) #1

declare dso_local i64 @convert_from_hex(%struct.TYPE_24__*, i8*, i64) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @run_rule_engine(i32, i32) #1

declare dso_local i32 @_old_apply_rule(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @pw_add(%struct.TYPE_21__*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @run_copy(%struct.TYPE_24__*, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @run_cracker(%struct.TYPE_24__*, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
