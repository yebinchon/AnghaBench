; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_MakeBspBrushList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_MakeBspBrushList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float*, float*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i64 }

@maxplanenums = common dso_local global i8** null, align 8
@minplanenums = common dso_local global i8** null, align 8
@mapbrushes = common dso_local global %struct.TYPE_10__* null, align 8
@SFL_VISIBLE = common dso_local global i32 0, align 4
@SURF_HINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @MakeBspBrushList(i32 %0, i32 %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %54, %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load float*, float** %18, align 8
  %25 = call i32 @VectorClear(float* %24)
  %26 = load float*, float** %18, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  store float 1.000000e+00, float* %29, align 4
  %30 = load float*, float** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  store float %34, float* %19, align 4
  %35 = load float*, float** %18, align 8
  %36 = load float, float* %19, align 4
  %37 = call i8* @FindFloatPlane(float* %35, float %36)
  %38 = load i8**, i8*** @maxplanenums, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %37, i8** %41, align 8
  %42 = load float*, float** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  store float %46, float* %19, align 4
  %47 = load float*, float** %18, align 8
  %48 = load float, float* %19, align 4
  %49 = call i8* @FindFloatPlane(float* %47, float %48)
  %50 = load i8**, i8*** @minplanenums, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %49, i8** %53, align 8
  br label %54

54:                                               ; preds = %23
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %20

57:                                               ; preds = %20
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %263, %57
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %266

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapbrushes, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %9, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %263

74:                                               ; preds = %63
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SFL_VISIBLE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %101, %91, %79
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %75

108:                                              ; preds = %75
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %142, %108
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load float*, float** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  %124 = load float, float* %123, align 4
  %125 = fcmp oge float %119, %124
  br i1 %125, label %140, label %126

126:                                              ; preds = %112
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load float*, float** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %7, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fcmp ole float %133, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %126, %112
  br label %145

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %109

145:                                              ; preds = %140, %109
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 3
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %263

149:                                              ; preds = %145
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.TYPE_11__* @AllocBrush(i32 %152)
  store %struct.TYPE_11__* %153, %struct.TYPE_11__** %11, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 5
  store %struct.TYPE_10__* %154, %struct.TYPE_10__** %156, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memcpy(%struct.TYPE_12__* %164, %struct.TYPE_13__* %167, i32 %171)
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %228, %149
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %231

177:                                              ; preds = %173
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %177
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call i64 @CopyWinding(i64 %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store i64 %196, i64* %203, align 8
  br label %204

204:                                              ; preds = %187, %177
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SURF_HINT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %204
  %217 = load i32, i32* @SFL_VISIBLE, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %217
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %216, %204
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %173

231:                                              ; preds = %173
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load float*, float** %233, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @VectorCopy(float* %234, i32 %237)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load float*, float** %240, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @VectorCopy(float* %241, i32 %244)
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %247 = load float*, float** %7, align 8
  %248 = load float*, float** %8, align 8
  %249 = call %struct.TYPE_11__* @ClipBrushToBox(%struct.TYPE_11__* %246, float* %247, float* %248)
  store %struct.TYPE_11__* %249, %struct.TYPE_11__** %11, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %251 = icmp ne %struct.TYPE_11__* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %231
  br label %263

253:                                              ; preds = %231
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  store %struct.TYPE_11__* %259, %struct.TYPE_11__** %261, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %262, %struct.TYPE_11__** %10, align 8
  br label %263

263:                                              ; preds = %253, %252, %148, %73
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %59

266:                                              ; preds = %59
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  ret %struct.TYPE_11__* %267
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i8* @FindFloatPlane(float*, float) #1

declare dso_local %struct.TYPE_11__* @AllocBrush(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @CopyWinding(i64) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local %struct.TYPE_11__* @ClipBrushToBox(%struct.TYPE_11__*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
