; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_FCBIByBlock.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_FCBIByBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WORKBLOCK_REALSIZE = common dso_local global i32 0, align 4
@WORKBLOCK_SIZE = common dso_local global i64 0, align 8
@WORKBLOCK_BORDER = common dso_local global i32 0, align 4
@r_imageUpsampleType = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i64, i64)* @FCBIByBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FCBIByBlock(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = load i32, i32* @WORKBLOCK_REALSIZE, align 4
  %27 = load i32, i32* @WORKBLOCK_REALSIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = mul nsw i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = load i32, i32* @WORKBLOCK_REALSIZE, align 4
  %34 = load i32, i32* @WORKBLOCK_REALSIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = mul nsw i32 %35, 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %13, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ExpandHalfTextureToGrid(i32* %39, i32 %40, i32 %41)
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %244, %5
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %250

47:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %237, %47
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %243

52:                                               ; preds = %48
  %53 = load i64, i64* @WORKBLOCK_SIZE, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @MIN(i64 %53, i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load i64, i64* @WORKBLOCK_SIZE, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @MIN(i64 %58, i32 %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* @WORKBLOCK_BORDER, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %63, %65
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* @WORKBLOCK_BORDER, align 4
  %69 = mul nsw i32 %68, 2
  %70 = add nsw i32 %67, %69
  store i32 %70, i32* %25, align 4
  store i32 0, i32* %21, align 4
  br label %71

71:                                               ; preds = %145, %52
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %25, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %148

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* @WORKBLOCK_BORDER, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %19, align 4
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 2
  %87 = call i32 @CLAMP(i32 %84, i32 0, i32 %86)
  store i32 %87, i32* %19, align 4
  br label %94

88:                                               ; preds = %75
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = srem i32 %91, %92
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %24, align 4
  %97 = mul nsw i32 %95, %96
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %32, i64 %99
  store i32* %100, i32** %15, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 %102, %103
  %105 = mul nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  store i32* %107, i32** %14, align 8
  store i32 0, i32* %20, align 4
  br label %108

108:                                              ; preds = %141, %94
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %24, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @WORKBLOCK_BORDER, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %18, align 4
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 2
  %124 = call i32 @CLAMP(i32 %121, i32 0, i32 %123)
  store i32 %124, i32* %18, align 4
  br label %131

125:                                              ; preds = %112
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = srem i32 %128, %129
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %125, %120
  %132 = load i32*, i32** %15, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %18, align 4
  %135 = mul nsw i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = call i32 @COPYSAMPLE(i32* %132, i32* %137)
  %139 = load i32*, i32** %15, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 8
  store i32* %140, i32** %15, align 8
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %20, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %20, align 4
  br label %108

144:                                              ; preds = %108
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %21, align 4
  br label %71

148:                                              ; preds = %71
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %25, align 4
  %151 = call i32 @DoLinear(i32* %32, i32* %38, i32 %149, i32 %150)
  %152 = load i64, i64* %10, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @r_imageUpsampleType, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %164 [
    i32 0, label %158
    i32 1, label %159
    i32 2, label %163
  ]

158:                                              ; preds = %154
  br label %168

159:                                              ; preds = %154
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %25, align 4
  %162 = call i32 @DoFCBIQuick(i32* %32, i32* %38, i32 %160, i32 %161, i32 0)
  br label %168

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %154, %163
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* %25, align 4
  %167 = call i32 @DoFCBI(i32* %32, i32* %38, i32 %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %164, %159, %158
  br label %190

169:                                              ; preds = %148
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @r_imageUpsampleType, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %182 [
    i32 0, label %173
    i32 1, label %174
    i32 2, label %181
  ]

173:                                              ; preds = %169
  br label %189

174:                                              ; preds = %169
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %25, align 4
  %177 = call i32 @DoFCBIQuick(i32* %32, i32* %38, i32 %175, i32 %176, i32 0)
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %25, align 4
  %180 = call i32 @DoFCBIQuick(i32* %32, i32* %38, i32 %178, i32 %179, i32 1)
  br label %189

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %169, %181
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* %25, align 4
  %185 = call i32 @DoFCBI(i32* %32, i32* %38, i32 %183, i32 %184, i32 0)
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %25, align 4
  %188 = call i32 @DoFCBI(i32* %32, i32* %38, i32 %186, i32 %187, i32 1)
  br label %189

189:                                              ; preds = %182, %174, %173
  br label %190

190:                                              ; preds = %189, %168
  store i32 0, i32* %21, align 4
  br label %191

191:                                              ; preds = %233, %190
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %23, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %236

195:                                              ; preds = %191
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* @WORKBLOCK_BORDER, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %24, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* @WORKBLOCK_BORDER, align 4
  %202 = add nsw i32 %200, %201
  %203 = mul nsw i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %38, i64 %204
  store i32* %205, i32** %14, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %7, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %211, %212
  %214 = mul nsw i32 %213, 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %206, i64 %215
  store i32* %216, i32** %15, align 8
  store i32 0, i32* %20, align 4
  br label %217

217:                                              ; preds = %229, %195
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %22, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = load i32*, i32** %15, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = call i32 @COPYSAMPLE(i32* %222, i32* %223)
  %225 = load i32*, i32** %15, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  store i32* %226, i32** %15, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 4
  store i32* %228, i32** %14, align 8
  br label %229

229:                                              ; preds = %221
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %20, align 4
  br label %217

232:                                              ; preds = %217
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %21, align 4
  br label %191

236:                                              ; preds = %191
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* @WORKBLOCK_SIZE, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %238
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %16, align 4
  br label %48

243:                                              ; preds = %48
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* @WORKBLOCK_SIZE, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %17, align 4
  br label %43

250:                                              ; preds = %43
  %251 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %251)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ExpandHalfTextureToGrid(i32*, i32, i32) #2

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local i32 @CLAMP(i32, i32, i32) #2

declare dso_local i32 @COPYSAMPLE(i32*, i32*) #2

declare dso_local i32 @DoLinear(i32*, i32*, i32, i32) #2

declare dso_local i32 @DoFCBIQuick(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @DoFCBI(i32*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
