; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_init_intel_cacheinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_init_intel_cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32, i32 }
%struct.cpuinfo_x86 = type { i32, i32, i32, i32, i32, i32 }
%struct._cpuid4_info_regs = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@init_intel_cacheinfo.is_initialized = internal global i32 0, align 4
@num_cache_leaves = common dso_local global i32 0, align 4
@CTYPE_DATA = common dso_local global i32 0, align 4
@CTYPE_INST = common dso_local global i32 0, align 4
@cache_table = common dso_local global %struct.TYPE_6__* null, align 8
@BAD_APICID = common dso_local global i32 0, align 4
@cpu_llc_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_intel_cacheinfo(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._cpuid4_info_regs, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %123

30:                                               ; preds = %1
  %31 = load i32, i32* @init_intel_cacheinfo.is_initialized, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %35 = call i32 @find_num_cache_leaves(%struct.cpuinfo_x86* %34)
  store i32 %35, i32* @num_cache_leaves, align 4
  %36 = load i32, i32* @init_intel_cacheinfo.is_initialized, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @init_intel_cacheinfo.is_initialized, align 4
  br label %38

38:                                               ; preds = %33, %30
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %119, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @num_cache_leaves, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %122

43:                                               ; preds = %39
  %44 = bitcast %struct._cpuid4_info_regs* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 16, i1 false)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @cpuid4_cache_lookup_regs(i32 %45, %struct._cpuid4_info_regs* %17)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %119

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %117 [
    i32 1, label %55
    i32 2, label %79
    i32 3, label %98
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CTYPE_DATA, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 1024
  store i32 %65, i32* %8, align 4
  br label %78

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CTYPE_INST, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 1024
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %77, %62
  br label %118

79:                                               ; preds = %50
  %80 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 1024
  store i32 %82, i32* %10, align 4
  %83 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 1, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @get_count_order(i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %91 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %16, align 4
  %94 = shl i32 1, %93
  %95 = sub nsw i32 %94, 1
  %96 = xor i32 %95, -1
  %97 = and i32 %92, %96
  store i32 %97, i32* %13, align 4
  br label %118

98:                                               ; preds = %50
  %99 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 1024
  store i32 %101, i32* %11, align 4
  %102 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %17, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 1, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @get_count_order(i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %110 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %113, 1
  %115 = xor i32 %114, -1
  %116 = and i32 %111, %115
  store i32 %116, i32* %14, align 4
  br label %118

117:                                              ; preds = %50
  br label %118

118:                                              ; preds = %117, %98, %79, %78
  br label %119

119:                                              ; preds = %118, %49
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %39

122:                                              ; preds = %39
  br label %123

123:                                              ; preds = %122, %1
  %124 = load i32, i32* @num_cache_leaves, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %128 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 15
  br i1 %130, label %131, label %285

131:                                              ; preds = %126, %123
  %132 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %133 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %285

136:                                              ; preds = %131
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %138 = bitcast i32* %137 to i8*
  store i8* %138, i8** %22, align 8
  store i32 0, i32* %23, align 4
  %139 = load i32, i32* @num_cache_leaves, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %143 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 15
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 1, i32* %23, align 4
  br label %147

147:                                              ; preds = %146, %141, %136
  %148 = call i32 @cpuid_eax(i32 2)
  %149 = and i32 %148, 255
  store i32 %149, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %281, %147
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %20, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %284

154:                                              ; preds = %150
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %159 = call i32 @cpuid(i32 2, i32* %155, i32* %156, i32* %157, i32* %158)
  store i32 0, i32* %19, align 4
  br label %160

160:                                              ; preds = %175, %154
  %161 = load i32, i32* %19, align 4
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %178

163:                                              ; preds = %160
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, -2147483648
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %172
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %163
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %160

178:                                              ; preds = %160
  store i32 1, i32* %19, align 4
  br label %179

179:                                              ; preds = %277, %178
  %180 = load i32, i32* %19, align 4
  %181 = icmp slt i32 %180, 16
  br i1 %181, label %182, label %280

182:                                              ; preds = %179
  %183 = load i8*, i8** %22, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %24, align 1
  store i8 0, i8* %25, align 1
  br label %188

188:                                              ; preds = %273, %182
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %190 = load i8, i8* %25, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %276

197:                                              ; preds = %188
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %199 = load i8, i8* %25, align 1
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i8, i8* %202, align 4
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* %24, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %273

208:                                              ; preds = %197
  %209 = load i32, i32* %23, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %213 = load i8, i8* %25, align 1
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 128
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %276

220:                                              ; preds = %211, %208
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %222 = load i8, i8* %25, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  switch i32 %226, label %272 [
    i32 131, label %227
    i32 132, label %236
    i32 130, label %245
    i32 129, label %254
    i32 128, label %263
  ]

227:                                              ; preds = %220
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %229 = load i8, i8* %25, align 1
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %4, align 4
  %235 = add i32 %234, %233
  store i32 %235, i32* %4, align 4
  br label %272

236:                                              ; preds = %220
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %238 = load i8, i8* %25, align 1
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add i32 %243, %242
  store i32 %244, i32* %5, align 4
  br label %272

245:                                              ; preds = %220
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %247 = load i8, i8* %25, align 1
  %248 = zext i8 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %6, align 4
  %253 = add i32 %252, %251
  store i32 %253, i32* %6, align 4
  br label %272

254:                                              ; preds = %220
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %256 = load i8, i8* %25, align 1
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %7, align 4
  %262 = add i32 %261, %260
  store i32 %262, i32* %7, align 4
  br label %272

263:                                              ; preds = %220
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache_table, align 8
  %265 = load i8, i8* %25, align 1
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %3, align 4
  %271 = add i32 %270, %269
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %220, %263, %254, %245, %236, %227
  br label %276

273:                                              ; preds = %197
  %274 = load i8, i8* %25, align 1
  %275 = add i8 %274, 1
  store i8 %275, i8* %25, align 1
  br label %188

276:                                              ; preds = %272, %219, %188
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %19, align 4
  br label %179

280:                                              ; preds = %179
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %12, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %12, align 4
  br label %150

284:                                              ; preds = %150
  br label %285

285:                                              ; preds = %284, %131, %126
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = load i32, i32* %8, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %288, %285
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %293, %290
  %296 = load i32, i32* %10, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %298, %295
  %301 = load i32, i32* %11, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32, i32* %11, align 4
  store i32 %304, i32* %7, align 4
  br label %305

305:                                              ; preds = %303, %300
  %306 = load i32, i32* %7, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load i32, i32* %7, align 4
  br label %321

310:                                              ; preds = %305
  %311 = load i32, i32* %6, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i32, i32* %6, align 4
  br label %319

315:                                              ; preds = %310
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* %5, align 4
  %318 = add i32 %316, %317
  br label %319

319:                                              ; preds = %315, %313
  %320 = phi i32 [ %314, %313 ], [ %318, %315 ]
  br label %321

321:                                              ; preds = %319, %308
  %322 = phi i32 [ %309, %308 ], [ %320, %319 ]
  %323 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %324 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %323, i32 0, i32 5
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %6, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %321
  %328 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %329 = call i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86* %328)
  br label %330

330:                                              ; preds = %327, %321
  ret void
}

declare dso_local i32 @find_num_cache_leaves(%struct.cpuinfo_x86*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cpuid4_cache_lookup_regs(i32, %struct._cpuid4_info_regs*) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
