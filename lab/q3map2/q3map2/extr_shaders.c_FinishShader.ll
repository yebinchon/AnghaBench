; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_FinishShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_FinishShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, i64, float*, float*, i8*, %struct.TYPE_4__*, i32*, i64 }
%struct.TYPE_4__ = type { float, float, float* }

@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinishShader(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %218

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 8
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store float %34, float* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store float %41, float* %43, align 4
  br label %44

44:                                               ; preds = %29, %24, %19
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @qfalse, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load i8*, i8** @qtrue, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load float, float* %66, align 8
  %68 = fmul float %67, 5.000000e-01
  %69 = fdiv float 1.000000e+00, %68
  %70 = call i32 @VectorSet(i32 %64, float %69, float 0.000000e+00, i32 0)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = fmul float %78, 5.000000e-01
  %80 = fdiv float 1.000000e+00, %79
  %81 = call i32 @VectorSet(i32 %75, float 0.000000e+00, float %80, i32 0)
  br label %82

82:                                               ; preds = %55, %49, %44
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load float*, float** %86, align 8
  store float* %87, float** %13, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load float, float* %91, align 8
  %93 = fptosi float %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load float, float* %97, align 4
  %99 = fptosi float %98 to i32
  store i32 %99, i32* %12, align 4
  store float 1.000000e+08, float* %6, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load float*, float** %101, align 8
  %103 = load float*, float** %10, align 8
  %104 = call i32 @VectorCopy(float* %102, float* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 3
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %10, align 8
  %111 = getelementptr inbounds float, float* %110, i64 3
  store float %109, float* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %211, %82
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %214

116:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %207, %116
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %210

121:                                              ; preds = %117
  %122 = load float*, float** %13, align 8
  %123 = load float*, float** %7, align 8
  %124 = call i32 @VectorCopy(float* %122, float* %123)
  %125 = load float*, float** %13, align 8
  %126 = getelementptr inbounds float, float* %125, i64 3
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %7, align 8
  %129 = getelementptr inbounds float, float* %128, i64 3
  store float %127, float* %129, align 4
  %130 = load float*, float** %13, align 8
  %131 = getelementptr inbounds float, float* %130, i64 4
  store float* %131, float** %13, align 8
  %132 = load float*, float** %7, align 8
  %133 = load float*, float** %10, align 8
  %134 = load float*, float** %9, align 8
  %135 = call i32 @VectorSubtract(float* %132, float* %133, float* %134)
  %136 = load float*, float** %7, align 8
  %137 = getelementptr inbounds float, float* %136, i64 3
  %138 = load float, float* %137, align 4
  %139 = load float*, float** %10, align 8
  %140 = getelementptr inbounds float, float* %139, i64 3
  %141 = load float, float* %140, align 4
  %142 = fsub float %138, %141
  %143 = load float*, float** %9, align 8
  %144 = getelementptr inbounds float, float* %143, i64 3
  store float %142, float* %144, align 4
  %145 = load float*, float** %9, align 8
  %146 = getelementptr inbounds float, float* %145, i64 0
  %147 = load float, float* %146, align 4
  %148 = load float*, float** %9, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  %150 = load float, float* %149, align 4
  %151 = fmul float %147, %150
  %152 = load float*, float** %9, align 8
  %153 = getelementptr inbounds float, float* %152, i64 1
  %154 = load float, float* %153, align 4
  %155 = load float*, float** %9, align 8
  %156 = getelementptr inbounds float, float* %155, i64 1
  %157 = load float, float* %156, align 4
  %158 = fmul float %154, %157
  %159 = fadd float %151, %158
  %160 = load float*, float** %9, align 8
  %161 = getelementptr inbounds float, float* %160, i64 2
  %162 = load float, float* %161, align 4
  %163 = load float*, float** %9, align 8
  %164 = getelementptr inbounds float, float* %163, i64 2
  %165 = load float, float* %164, align 4
  %166 = fmul float %162, %165
  %167 = fadd float %159, %166
  %168 = load float*, float** %9, align 8
  %169 = getelementptr inbounds float, float* %168, i64 3
  %170 = load float, float* %169, align 4
  %171 = load float*, float** %9, align 8
  %172 = getelementptr inbounds float, float* %171, i64 3
  %173 = load float, float* %172, align 4
  %174 = fmul float %170, %173
  %175 = fadd float %167, %174
  store float %175, float* %5, align 4
  %176 = load float, float* %5, align 4
  %177 = load float, float* %6, align 4
  %178 = fcmp olt float %176, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %121
  %180 = load float*, float** %7, align 8
  %181 = load float*, float** %8, align 8
  %182 = call i32 @VectorCopy(float* %180, float* %181)
  %183 = load float*, float** %7, align 8
  %184 = getelementptr inbounds float, float* %183, i64 3
  %185 = load float, float* %184, align 4
  %186 = load float*, float** %8, align 8
  %187 = getelementptr inbounds float, float* %186, i64 3
  store float %185, float* %187, align 4
  %188 = load i32, i32* %3, align 4
  %189 = sitofp i32 %188 to float
  %190 = load i32, i32* %11, align 4
  %191 = sitofp i32 %190 to float
  %192 = fdiv float %189, %191
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load float*, float** %194, align 8
  %196 = getelementptr inbounds float, float* %195, i64 0
  store float %192, float* %196, align 4
  %197 = load i32, i32* %4, align 4
  %198 = sitofp i32 %197 to float
  %199 = load i32, i32* %12, align 4
  %200 = sitofp i32 %199 to float
  %201 = fdiv float %198, %200
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 4
  %204 = load float*, float** %203, align 8
  %205 = getelementptr inbounds float, float* %204, i64 1
  store float %201, float* %205, align 4
  br label %206

206:                                              ; preds = %179, %121
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %117

210:                                              ; preds = %117
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %4, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %4, align 4
  br label %112

214:                                              ; preds = %112
  %215 = load i8*, i8** @qtrue, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 5
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %214, %18
  ret void
}

declare dso_local i32 @VectorSet(i32, float, float, i32) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
