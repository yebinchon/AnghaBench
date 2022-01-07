; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model.c_R_LerpTag.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model.c_R_LerpTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float**, float* }
%struct.TYPE_12__ = type { float*, float** }
%struct.TYPE_11__ = type { i64, i32*, i64 }

@MOD_MDR = common dso_local global i64 0, align 8
@MOD_IQM = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_LerpTag(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, float %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store i8* %5, i8** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.TYPE_11__* @R_GetModelByHandle(i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %21, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MOD_MDR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = call %struct.TYPE_12__* @R_GetAnimTag(i32* %40, i32 %41, i8* %42, %struct.TYPE_12__* %16)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %14, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call %struct.TYPE_12__* @R_GetAnimTag(i32* %47, i32 %48, i8* %49, %struct.TYPE_12__* %17)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %15, align 8
  br label %69

51:                                               ; preds = %30
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MOD_IQM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load float, float* %12, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @R_IQMLerpTag(%struct.TYPE_10__* %58, i64 %61, i32 %62, i32 %63, float %64, i8* %65)
  store i32 %66, i32* %7, align 4
  br label %252

67:                                               ; preds = %51
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %36
  br label %87

70:                                               ; preds = %6
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = call %struct.TYPE_12__* @R_GetTag(i32 %75, i32 %76, i8* %77)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %14, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = call %struct.TYPE_12__* @R_GetTag(i32 %83, i32 %84, i8* %85)
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %15, align 8
  br label %87

87:                                               ; preds = %70, %69
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %89 = icmp ne %struct.TYPE_12__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load float**, float*** %95, align 8
  %97 = call i32 @AxisClear(float** %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load float*, float** %99, align 8
  %101 = call i32 @VectorClear(float* %100)
  %102 = load i32, i32* @qfalse, align 4
  store i32 %102, i32* %7, align 4
  br label %252

103:                                              ; preds = %90
  %104 = load float, float* %12, align 4
  store float %104, float* %19, align 4
  %105 = load float, float* %12, align 4
  %106 = fsub float 1.000000e+00, %105
  store float %106, float* %20, align 4
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %229, %103
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %232

110:                                              ; preds = %107
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load float*, float** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = load float, float* %20, align 4
  %119 = fmul float %117, %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load float*, float** %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %122, i64 %124
  %126 = load float, float* %125, align 4
  %127 = load float, float* %19, align 4
  %128 = fmul float %126, %127
  %129 = fadd float %119, %128
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load float*, float** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  store float %129, float* %135, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load float**, float*** %137, align 8
  %139 = getelementptr inbounds float*, float** %138, i64 0
  %140 = load float*, float** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = load float, float* %20, align 4
  %146 = fmul float %144, %145
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load float**, float*** %148, align 8
  %150 = getelementptr inbounds float*, float** %149, i64 0
  %151 = load float*, float** %150, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = load float, float* %19, align 4
  %157 = fmul float %155, %156
  %158 = fadd float %146, %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load float**, float*** %160, align 8
  %162 = getelementptr inbounds float*, float** %161, i64 0
  %163 = load float*, float** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  store float %158, float* %166, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load float**, float*** %168, align 8
  %170 = getelementptr inbounds float*, float** %169, i64 1
  %171 = load float*, float** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = load float, float* %174, align 4
  %176 = load float, float* %20, align 4
  %177 = fmul float %175, %176
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load float**, float*** %179, align 8
  %181 = getelementptr inbounds float*, float** %180, i64 1
  %182 = load float*, float** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load float, float* %19, align 4
  %188 = fmul float %186, %187
  %189 = fadd float %177, %188
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load float**, float*** %191, align 8
  %193 = getelementptr inbounds float*, float** %192, i64 1
  %194 = load float*, float** %193, align 8
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  store float %189, float* %197, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load float**, float*** %199, align 8
  %201 = getelementptr inbounds float*, float** %200, i64 2
  %202 = load float*, float** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %202, i64 %204
  %206 = load float, float* %205, align 4
  %207 = load float, float* %20, align 4
  %208 = fmul float %206, %207
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load float**, float*** %210, align 8
  %212 = getelementptr inbounds float*, float** %211, i64 2
  %213 = load float*, float** %212, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  %217 = load float, float* %216, align 4
  %218 = load float, float* %19, align 4
  %219 = fmul float %217, %218
  %220 = fadd float %208, %219
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load float**, float*** %222, align 8
  %224 = getelementptr inbounds float*, float** %223, i64 2
  %225 = load float*, float** %224, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  store float %220, float* %228, align 4
  br label %229

229:                                              ; preds = %110
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %18, align 4
  br label %107

232:                                              ; preds = %107
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load float**, float*** %234, align 8
  %236 = getelementptr inbounds float*, float** %235, i64 0
  %237 = load float*, float** %236, align 8
  %238 = call i32 @VectorNormalize(float* %237)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load float**, float*** %240, align 8
  %242 = getelementptr inbounds float*, float** %241, i64 1
  %243 = load float*, float** %242, align 8
  %244 = call i32 @VectorNormalize(float* %243)
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load float**, float*** %246, align 8
  %248 = getelementptr inbounds float*, float** %247, i64 2
  %249 = load float*, float** %248, align 8
  %250 = call i32 @VectorNormalize(float* %249)
  %251 = load i32, i32* @qtrue, align 4
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %232, %93, %57
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local %struct.TYPE_11__* @R_GetModelByHandle(i32) #1

declare dso_local %struct.TYPE_12__* @R_GetAnimTag(i32*, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @R_IQMLerpTag(%struct.TYPE_10__*, i64, i32, i32, float, i8*) #1

declare dso_local %struct.TYPE_12__* @R_GetTag(i32, i32, i8*) #1

declare dso_local i32 @AxisClear(float**) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @VectorNormalize(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
