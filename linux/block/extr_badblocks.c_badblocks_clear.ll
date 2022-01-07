; ModuleID = '/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_clear.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i32, i32, i32, i32, i32* }

@MAX_BADBLOCKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @badblocks_clear(%struct.badblocks* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.badblocks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.badblocks* %0, %struct.badblocks** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %23 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %28 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %35 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %40 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %26, %3
  %48 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %49 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %48, i32 0, i32 3
  %50 = call i32 @write_seqlock_irq(i32* %49)
  %51 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %52 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %54 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %55 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %80, %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sdiv i32 %65, 2
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BB_OFFSET(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %57

81:                                               ; preds = %57
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %287

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BB_OFFSET(i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @BB_LEN(i32 %96)
  %98 = add nsw i32 %91, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %190

101:                                              ; preds = %85
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BB_OFFSET(i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %190

110:                                              ; preds = %101
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @BB_ACK(i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BB_OFFSET(i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BB_LEN(i32 %128)
  %130 = add nsw i32 %123, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %176

134:                                              ; preds = %110
  %135 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %136 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MAX_BADBLOCKS, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @ENOSPC, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %292

143:                                              ; preds = %134
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %154 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %8, align 4
  %157 = sub nsw i32 %155, %156
  %158 = mul nsw i32 %157, 8
  %159 = call i32 @memmove(i32* %148, i32* %152, i32 %158)
  %160 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %161 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %15, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @BB_MAKE(i32 %164, i32 %167, i32 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %143, %110
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @BB_MAKE(i32 %177, i32 %180, i32 %181)
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %176, %101, %85
  br label %191

191:                                              ; preds = %253, %190
  %192 = load i32, i32* %8, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %219

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @BB_OFFSET(i32 %199)
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @BB_LEN(i32 %205)
  %207 = add nsw i32 %200, %206
  %208 = load i32, i32* %5, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %194
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @BB_OFFSET(i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = icmp slt i32 %216, %217
  br label %219

219:                                              ; preds = %210, %194, %191
  %220 = phi i1 [ false, %194 ], [ false, %191 ], [ %218, %210 ]
  br i1 %220, label %221, label %256

221:                                              ; preds = %219
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @BB_OFFSET(i32 %226)
  %228 = load i32, i32* %5, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %253

230:                                              ; preds = %221
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @BB_ACK(i32 %235)
  store i32 %236, i32* %17, align 4
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @BB_OFFSET(i32 %241)
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* %18, align 4
  %246 = sub nsw i32 %244, %245
  %247 = load i32, i32* %17, align 4
  %248 = call i32 @BB_MAKE(i32 %243, i32 %246, i32 %247)
  %249 = load i32*, i32** %7, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %248, i32* %252, align 4
  br label %256

253:                                              ; preds = %221
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %8, align 4
  br label %191

256:                                              ; preds = %230, %219
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %8, align 4
  %259 = sub nsw i32 %257, %258
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %286

261:                                              ; preds = %256
  %262 = load i32*, i32** %7, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32*, i32** %7, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %272 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %9, align 4
  %275 = sub nsw i32 %273, %274
  %276 = mul nsw i32 %275, 8
  %277 = call i32 @memmove(i32* %266, i32* %270, i32 %276)
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %8, align 4
  %280 = sub nsw i32 %278, %279
  %281 = sub nsw i32 %280, 1
  %282 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %283 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %284, %281
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %261, %256
  br label %287

287:                                              ; preds = %286, %81
  %288 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %289 = call i32 @badblocks_update_acked(%struct.badblocks* %288)
  %290 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %291 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %290, i32 0, i32 2
  store i32 1, i32* %291, align 8
  br label %292

292:                                              ; preds = %287, %140
  %293 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %294 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %293, i32 0, i32 3
  %295 = call i32 @write_sequnlock_irq(i32* %294)
  %296 = load i32, i32* %11, align 4
  ret i32 %296
}

declare dso_local i32 @write_seqlock_irq(i32*) #1

declare dso_local i32 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i32 @BB_ACK(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @BB_MAKE(i32, i32, i32) #1

declare dso_local i32 @badblocks_update_acked(%struct.badblocks*) #1

declare dso_local i32 @write_sequnlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
