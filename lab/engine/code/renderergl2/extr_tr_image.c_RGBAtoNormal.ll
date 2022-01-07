; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RGBAtoNormal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RGBAtoNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i64)* @RGBAtoNormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RGBAtoNormal(i32* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [9 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %83, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %32, %33
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32* %45, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %79, %30
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 2
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 1
  %59 = add nsw i32 %54, %58
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 2
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 255
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %15, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MAX(i32 %71, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32* %78, i32** %14, align 8
  br label %79

79:                                               ; preds = %50
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %46

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %26

86:                                               ; preds = %26
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 255
  br i1 %88, label %89, label %124

89:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %120, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %96, %97
  %99 = mul nsw i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32* %102, i32** %17, align 8
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %116, %94
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 255, %110
  %112 = add nsw i32 %109, %111
  %113 = load i32*, i32** %17, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32*, i32** %17, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32* %115, i32** %17, align 8
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %103

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %90

123:                                              ; preds = %90
  br label %124

124:                                              ; preds = %123, %86
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %289, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %292

129:                                              ; preds = %125
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 %131, %132
  %134 = mul nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32* %136, i32** %18, align 8
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %285, %129
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %288

141:                                              ; preds = %137
  store i32 0, i32* %22, align 4
  store i32 -1, i32* %21, align 4
  br label %142

142:                                              ; preds = %203, %141
  %143 = load i32, i32* %21, align 4
  %144 = icmp sle i32 %143, 1
  br i1 %144, label %145, label %206

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %21, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %24, align 4
  %149 = load i64, i64* %10, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @CLAMP(i32 %152, i32 0, i32 %154)
  store i32 %155, i32* %24, align 4
  br label %162

156:                                              ; preds = %145
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %9, align 4
  %161 = srem i32 %159, %160
  store i32 %161, i32* %24, align 4
  br label %162

162:                                              ; preds = %156, %151
  store i32 -1, i32* %20, align 4
  br label %163

163:                                              ; preds = %199, %162
  %164 = load i32, i32* %20, align 4
  %165 = icmp sle i32 %164, 1
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %25, align 4
  %170 = load i64, i64* %10, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load i32, i32* %25, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %174, 1
  %176 = call i32 @CLAMP(i32 %173, i32 0, i32 %175)
  store i32 %176, i32* %25, align 4
  br label %183

177:                                              ; preds = %166
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %8, align 4
  %182 = srem i32 %180, %181
  store i32 %182, i32* %25, align 4
  br label %183

183:                                              ; preds = %177, %172
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %8, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %25, align 4
  %189 = add nsw i32 %187, %188
  %190 = mul nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %184, i64 %191
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %22, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 %197
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %183
  %200 = load i32, i32* %20, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %20, align 4
  br label %163

202:                                              ; preds = %163
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %21, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %21, align 4
  br label %142

206:                                              ; preds = %142
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %208 = load i32, i32* %207, align 16
  %209 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 2
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %208, %210
  %212 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 2, %213
  %215 = add nsw i32 %211, %214
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 5
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 2, %217
  %219 = sub nsw i32 %215, %218
  %220 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 6
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %219, %221
  %223 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 8
  %224 = load i32, i32* %223, align 16
  %225 = sub nsw i32 %222, %224
  %226 = load i32*, i32** %23, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %225, i32* %227, align 4
  %228 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %229 = load i32, i32* %228, align 16
  %230 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 2, %231
  %233 = add nsw i32 %229, %232
  %234 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 2
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %233, %235
  %237 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 6
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %236, %238
  %240 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 7
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 2, %241
  %243 = sub nsw i32 %239, %242
  %244 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 8
  %245 = load i32, i32* %244, align 16
  %246 = sub nsw i32 %243, %245
  %247 = load i32*, i32** %23, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %246, i32* %248, align 4
  %249 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 4
  %250 = load i32, i32* %249, align 16
  %251 = mul nsw i32 %250, 4
  %252 = load i32*, i32** %23, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 2
  store i32 %251, i32* %253, align 4
  %254 = load i32*, i32** %23, align 8
  %255 = load i32*, i32** %23, align 8
  %256 = call i32 @VectorNormalize2(i32* %254, i32* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %206
  %259 = load i32*, i32** %23, align 8
  %260 = call i32 @VectorSet(i32* %259, i32 0, i32 0, i32 1)
  br label %261

261:                                              ; preds = %258, %206
  %262 = load i32*, i32** %23, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @FloatToOffsetByte(i32 %264)
  %266 = ptrtoint i8* %265 to i32
  %267 = load i32*, i32** %18, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %18, align 8
  store i32 %266, i32* %267, align 4
  %269 = load i32*, i32** %23, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @FloatToOffsetByte(i32 %271)
  %273 = ptrtoint i8* %272 to i32
  %274 = load i32*, i32** %18, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %18, align 8
  store i32 %273, i32* %274, align 4
  %276 = load i32*, i32** %23, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @FloatToOffsetByte(i32 %278)
  %280 = ptrtoint i8* %279 to i32
  %281 = load i32*, i32** %18, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %18, align 8
  store i32 %280, i32* %281, align 4
  %283 = load i32*, i32** %18, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %18, align 8
  br label %285

285:                                              ; preds = %261
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %137

288:                                              ; preds = %137
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %125

292:                                              ; preds = %125
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize2(i32*, i32*) #1

declare dso_local i32 @VectorSet(i32*, i32, i32, i32) #1

declare dso_local i8* @FloatToOffsetByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
