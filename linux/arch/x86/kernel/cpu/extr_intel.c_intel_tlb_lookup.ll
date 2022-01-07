; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_intel_tlb_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_intel_tlb_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32 }

@intel_tlb_table = common dso_local global %struct.TYPE_2__* null, align 8
@tlb_lli_4k = common dso_local global i32* null, align 8
@ENTRIES = common dso_local global i64 0, align 8
@tlb_lld_4k = common dso_local global i32* null, align 8
@tlb_lli_2m = common dso_local global i32* null, align 8
@tlb_lld_2m = common dso_local global i32* null, align 8
@tlb_lli_4m = common dso_local global i32* null, align 8
@tlb_lld_4m = common dso_local global i32* null, align 8
@tlb_lld_1g = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @intel_tlb_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tlb_lookup(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %546

8:                                                ; preds = %1
  store i8 0, i8* %3, align 1
  br label %9

9:                                                ; preds = %32, %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %2, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 4
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %20, %9
  %30 = phi i1 [ false, %9 ], [ %28, %20 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i8, i8* %3, align 1
  %34 = add i8 %33, 1
  store i8 %34, i8* %3, align 1
  br label %9

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %546

44:                                               ; preds = %35
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %546 [
    i32 141, label %51
    i32 140, label %96
    i32 128, label %229
    i32 130, label %296
    i32 129, label %319
    i32 131, label %342
    i32 134, label %387
    i32 138, label %387
    i32 132, label %410
    i32 137, label %410
    i32 135, label %433
    i32 139, label %433
    i32 133, label %478
    i32 136, label %523
  ]

51:                                               ; preds = %44
  %52 = load i32*, i32** @tlb_lli_4k, align 8
  %53 = load i64, i64* @ENTRIES, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %65 = load i8, i8* %3, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @tlb_lli_4k, align 8
  %71 = load i64, i64* @ENTRIES, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %51
  %74 = load i32*, i32** @tlb_lld_4k, align 8
  %75 = load i64, i64* @ENTRIES, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %79 = load i8, i8* %3, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %77, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %73
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %87 = load i8, i8* %3, align 1
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** @tlb_lld_4k, align 8
  %93 = load i64, i64* @ENTRIES, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %73
  br label %546

96:                                               ; preds = %44
  %97 = load i32*, i32** @tlb_lli_4k, align 8
  %98 = load i64, i64* @ENTRIES, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %102 = load i8, i8* %3, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %100, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %96
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %110 = load i8, i8* %3, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @tlb_lli_4k, align 8
  %116 = load i64, i64* @ENTRIES, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %108, %96
  %119 = load i32*, i32** @tlb_lld_4k, align 8
  %120 = load i64, i64* @ENTRIES, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %124 = load i8, i8* %3, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %122, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %132 = load i8, i8* %3, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** @tlb_lld_4k, align 8
  %138 = load i64, i64* @ENTRIES, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %130, %118
  %141 = load i32*, i32** @tlb_lli_2m, align 8
  %142 = load i64, i64* @ENTRIES, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %146 = load i8, i8* %3, align 1
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %144, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %140
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %154 = load i8, i8* %3, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** @tlb_lli_2m, align 8
  %160 = load i64, i64* @ENTRIES, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %152, %140
  %163 = load i32*, i32** @tlb_lld_2m, align 8
  %164 = load i64, i64* @ENTRIES, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %168 = load i8, i8* %3, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %166, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %162
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %176 = load i8, i8* %3, align 1
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** @tlb_lld_2m, align 8
  %182 = load i64, i64* @ENTRIES, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %174, %162
  %185 = load i32*, i32** @tlb_lli_4m, align 8
  %186 = load i64, i64* @ENTRIES, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %190 = load i8, i8* %3, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %188, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %184
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %198 = load i8, i8* %3, align 1
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** @tlb_lli_4m, align 8
  %204 = load i64, i64* @ENTRIES, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %202, i32* %205, align 4
  br label %206

206:                                              ; preds = %196, %184
  %207 = load i32*, i32** @tlb_lld_4m, align 8
  %208 = load i64, i64* @ENTRIES, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %212 = load i8, i8* %3, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %210, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %206
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %220 = load i8, i8* %3, align 1
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** @tlb_lld_4m, align 8
  %226 = load i64, i64* @ENTRIES, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %224, i32* %227, align 4
  br label %228

228:                                              ; preds = %218, %206
  br label %546

229:                                              ; preds = %44
  %230 = load i32*, i32** @tlb_lli_4k, align 8
  %231 = load i64, i64* @ENTRIES, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %235 = load i8, i8* %3, align 1
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %233, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %229
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %243 = load i8, i8* %3, align 1
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** @tlb_lli_4k, align 8
  %249 = load i64, i64* @ENTRIES, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %241, %229
  %252 = load i32*, i32** @tlb_lli_2m, align 8
  %253 = load i64, i64* @ENTRIES, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %257 = load i8, i8* %3, align 1
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %255, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %251
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %265 = load i8, i8* %3, align 1
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** @tlb_lli_2m, align 8
  %271 = load i64, i64* @ENTRIES, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32 %269, i32* %272, align 4
  br label %273

273:                                              ; preds = %263, %251
  %274 = load i32*, i32** @tlb_lli_4m, align 8
  %275 = load i64, i64* @ENTRIES, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %279 = load i8, i8* %3, align 1
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %277, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %273
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %287 = load i8, i8* %3, align 1
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** @tlb_lli_4m, align 8
  %293 = load i64, i64* @ENTRIES, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32 %291, i32* %294, align 4
  br label %295

295:                                              ; preds = %285, %273
  br label %546

296:                                              ; preds = %44
  %297 = load i32*, i32** @tlb_lli_4k, align 8
  %298 = load i64, i64* @ENTRIES, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %302 = load i8, i8* %3, align 1
  %303 = zext i8 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %300, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %296
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %310 = load i8, i8* %3, align 1
  %311 = zext i8 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** @tlb_lli_4k, align 8
  %316 = load i64, i64* @ENTRIES, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  store i32 %314, i32* %317, align 4
  br label %318

318:                                              ; preds = %308, %296
  br label %546

319:                                              ; preds = %44
  %320 = load i32*, i32** @tlb_lli_4m, align 8
  %321 = load i64, i64* @ENTRIES, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %325 = load i8, i8* %3, align 1
  %326 = zext i8 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %323, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %319
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %333 = load i8, i8* %3, align 1
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** @tlb_lli_4m, align 8
  %339 = load i64, i64* @ENTRIES, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  store i32 %337, i32* %340, align 4
  br label %341

341:                                              ; preds = %331, %319
  br label %546

342:                                              ; preds = %44
  %343 = load i32*, i32** @tlb_lli_2m, align 8
  %344 = load i64, i64* @ENTRIES, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %348 = load i8, i8* %3, align 1
  %349 = zext i8 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = icmp slt i32 %346, %352
  br i1 %353, label %354, label %364

354:                                              ; preds = %342
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %356 = load i8, i8* %3, align 1
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** @tlb_lli_2m, align 8
  %362 = load i64, i64* @ENTRIES, align 8
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  store i32 %360, i32* %363, align 4
  br label %364

364:                                              ; preds = %354, %342
  %365 = load i32*, i32** @tlb_lli_4m, align 8
  %366 = load i64, i64* @ENTRIES, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %370 = load i8, i8* %3, align 1
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = icmp slt i32 %368, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %364
  %377 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %378 = load i8, i8* %3, align 1
  %379 = zext i8 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** @tlb_lli_4m, align 8
  %384 = load i64, i64* @ENTRIES, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  store i32 %382, i32* %385, align 4
  br label %386

386:                                              ; preds = %376, %364
  br label %546

387:                                              ; preds = %44, %44
  %388 = load i32*, i32** @tlb_lld_4k, align 8
  %389 = load i64, i64* @ENTRIES, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %393 = load i8, i8* %3, align 1
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = icmp slt i32 %391, %397
  br i1 %398, label %399, label %409

399:                                              ; preds = %387
  %400 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %401 = load i8, i8* %3, align 1
  %402 = zext i8 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** @tlb_lld_4k, align 8
  %407 = load i64, i64* @ENTRIES, align 8
  %408 = getelementptr inbounds i32, i32* %406, i64 %407
  store i32 %405, i32* %408, align 4
  br label %409

409:                                              ; preds = %399, %387
  br label %546

410:                                              ; preds = %44, %44
  %411 = load i32*, i32** @tlb_lld_4m, align 8
  %412 = load i64, i64* @ENTRIES, align 8
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %416 = load i8, i8* %3, align 1
  %417 = zext i8 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 4
  %421 = icmp slt i32 %414, %420
  br i1 %421, label %422, label %432

422:                                              ; preds = %410
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %424 = load i8, i8* %3, align 1
  %425 = zext i8 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = load i32*, i32** @tlb_lld_4m, align 8
  %430 = load i64, i64* @ENTRIES, align 8
  %431 = getelementptr inbounds i32, i32* %429, i64 %430
  store i32 %428, i32* %431, align 4
  br label %432

432:                                              ; preds = %422, %410
  br label %546

433:                                              ; preds = %44, %44
  %434 = load i32*, i32** @tlb_lld_2m, align 8
  %435 = load i64, i64* @ENTRIES, align 8
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %439 = load i8, i8* %3, align 1
  %440 = zext i8 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = icmp slt i32 %437, %443
  br i1 %444, label %445, label %455

445:                                              ; preds = %433
  %446 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %447 = load i8, i8* %3, align 1
  %448 = zext i8 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load i32*, i32** @tlb_lld_2m, align 8
  %453 = load i64, i64* @ENTRIES, align 8
  %454 = getelementptr inbounds i32, i32* %452, i64 %453
  store i32 %451, i32* %454, align 4
  br label %455

455:                                              ; preds = %445, %433
  %456 = load i32*, i32** @tlb_lld_4m, align 8
  %457 = load i64, i64* @ENTRIES, align 8
  %458 = getelementptr inbounds i32, i32* %456, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %461 = load i8, i8* %3, align 1
  %462 = zext i8 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = icmp slt i32 %459, %465
  br i1 %466, label %467, label %477

467:                                              ; preds = %455
  %468 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %469 = load i8, i8* %3, align 1
  %470 = zext i8 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = load i32*, i32** @tlb_lld_4m, align 8
  %475 = load i64, i64* @ENTRIES, align 8
  %476 = getelementptr inbounds i32, i32* %474, i64 %475
  store i32 %473, i32* %476, align 4
  br label %477

477:                                              ; preds = %467, %455
  br label %546

478:                                              ; preds = %44
  %479 = load i32*, i32** @tlb_lld_4k, align 8
  %480 = load i64, i64* @ENTRIES, align 8
  %481 = getelementptr inbounds i32, i32* %479, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %484 = load i8, i8* %3, align 1
  %485 = zext i8 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 4
  %489 = icmp slt i32 %482, %488
  br i1 %489, label %490, label %500

490:                                              ; preds = %478
  %491 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %492 = load i8, i8* %3, align 1
  %493 = zext i8 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  %497 = load i32*, i32** @tlb_lld_4k, align 8
  %498 = load i64, i64* @ENTRIES, align 8
  %499 = getelementptr inbounds i32, i32* %497, i64 %498
  store i32 %496, i32* %499, align 4
  br label %500

500:                                              ; preds = %490, %478
  %501 = load i32*, i32** @tlb_lld_4m, align 8
  %502 = load i64, i64* @ENTRIES, align 8
  %503 = getelementptr inbounds i32, i32* %501, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %506 = load i8, i8* %3, align 1
  %507 = zext i8 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 4
  %511 = icmp slt i32 %504, %510
  br i1 %511, label %512, label %522

512:                                              ; preds = %500
  %513 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %514 = load i8, i8* %3, align 1
  %515 = zext i8 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = load i32*, i32** @tlb_lld_4m, align 8
  %520 = load i64, i64* @ENTRIES, align 8
  %521 = getelementptr inbounds i32, i32* %519, i64 %520
  store i32 %518, i32* %521, align 4
  br label %522

522:                                              ; preds = %512, %500
  br label %546

523:                                              ; preds = %44
  %524 = load i32*, i32** @tlb_lld_1g, align 8
  %525 = load i64, i64* @ENTRIES, align 8
  %526 = getelementptr inbounds i32, i32* %524, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %529 = load i8, i8* %3, align 1
  %530 = zext i8 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = icmp slt i32 %527, %533
  br i1 %534, label %535, label %545

535:                                              ; preds = %523
  %536 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_tlb_table, align 8
  %537 = load i8, i8* %3, align 1
  %538 = zext i8 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 4
  %542 = load i32*, i32** @tlb_lld_1g, align 8
  %543 = load i64, i64* @ENTRIES, align 8
  %544 = getelementptr inbounds i32, i32* %542, i64 %543
  store i32 %541, i32* %544, align 4
  br label %545

545:                                              ; preds = %535, %523
  br label %546

546:                                              ; preds = %7, %43, %44, %545, %522, %477, %432, %409, %386, %341, %318, %295, %228, %95
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
