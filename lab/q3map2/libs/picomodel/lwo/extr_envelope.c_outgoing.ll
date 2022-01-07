; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_outgoing.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_outgoing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, float, float*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_6__*, %struct.TYPE_6__*)* @outgoing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @outgoing(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %210 [
    i32 128, label %13
    i32 130, label %99
    i32 132, label %145
    i32 131, label %145
    i32 133, label %176
    i32 129, label %209
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = sitofp i32 %16 to float
  %18 = fsub float 1.000000e+00, %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to float
  %23 = fadd float 1.000000e+00, %22
  %24 = fmul float %18, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = sitofp i32 %27 to float
  %29 = fadd float 1.000000e+00, %28
  %30 = fmul float %24, %29
  store float %30, float* %5, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = sitofp i32 %33 to float
  %35 = fsub float 1.000000e+00, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to float
  %40 = fsub float 1.000000e+00, %39
  %41 = fmul float %35, %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = sitofp i32 %44 to float
  %46 = fsub float 1.000000e+00, %45
  %47 = fmul float %41, %46
  store float %47, float* %6, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = fsub float %50, %53
  store float %54, float* %7, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %94

59:                                               ; preds = %13
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load float, float* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load float, float* %64, align 8
  %66 = fsub float %62, %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load float, float* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = fsub float %69, %74
  %76 = fdiv float %66, %75
  store float %76, float* %8, align 4
  %77 = load float, float* %8, align 4
  %78 = load float, float* %5, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load float, float* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load float, float* %85, align 4
  %87 = fsub float %81, %86
  %88 = fmul float %78, %87
  %89 = load float, float* %6, align 4
  %90 = load float, float* %7, align 4
  %91 = fmul float %89, %90
  %92 = fadd float %88, %91
  %93 = fmul float %77, %92
  store float %93, float* %9, align 4
  br label %98

94:                                               ; preds = %13
  %95 = load float, float* %6, align 4
  %96 = load float, float* %7, align 4
  %97 = fmul float %95, %96
  store float %97, float* %9, align 4
  br label %98

98:                                               ; preds = %94, %59
  br label %211

99:                                               ; preds = %2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load float, float* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = fsub float %102, %105
  store float %106, float* %7, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = icmp ne %struct.TYPE_5__* %109, null
  br i1 %110, label %111, label %142

111:                                              ; preds = %99
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load float, float* %113, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load float, float* %116, align 8
  %118 = fsub float %114, %117
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load float, float* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load float, float* %125, align 4
  %127 = fsub float %121, %126
  %128 = fdiv float %118, %127
  store float %128, float* %8, align 4
  %129 = load float, float* %8, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load float, float* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load float, float* %136, align 4
  %138 = fsub float %132, %137
  %139 = load float, float* %7, align 4
  %140 = fadd float %138, %139
  %141 = fmul float %129, %140
  store float %141, float* %9, align 4
  br label %144

142:                                              ; preds = %99
  %143 = load float, float* %7, align 4
  store float %143, float* %9, align 4
  br label %144

144:                                              ; preds = %142, %111
  br label %211

145:                                              ; preds = %2, %2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 1
  %150 = load float, float* %149, align 4
  store float %150, float* %9, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = icmp ne %struct.TYPE_5__* %153, null
  br i1 %154, label %155, label %175

155:                                              ; preds = %145
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load float, float* %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load float, float* %160, align 8
  %162 = fsub float %158, %161
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load float, float* %164, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load float, float* %169, align 4
  %171 = fsub float %165, %170
  %172 = fdiv float %162, %171
  %173 = load float, float* %9, align 4
  %174 = fmul float %173, %172
  store float %174, float* %9, align 4
  br label %175

175:                                              ; preds = %155, %145
  br label %211

176:                                              ; preds = %2
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load float*, float** %178, align 8
  %180 = getelementptr inbounds float, float* %179, i64 3
  %181 = load float, float* %180, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load float, float* %183, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load float, float* %186, align 8
  %188 = fsub float %184, %187
  %189 = fmul float %181, %188
  store float %189, float* %9, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load float*, float** %191, align 8
  %193 = getelementptr inbounds float, float* %192, i64 2
  %194 = load float, float* %193, align 4
  %195 = call float @fabs(float %194)
  %196 = fcmp ogt float %195, 0x3EE4F8B580000000
  br i1 %196, label %197, label %205

197:                                              ; preds = %176
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds float, float* %200, i64 2
  %202 = load float, float* %201, align 4
  %203 = load float, float* %9, align 4
  %204 = fdiv float %203, %202
  store float %204, float* %9, align 4
  br label %208

205:                                              ; preds = %176
  %206 = load float, float* %9, align 4
  %207 = fmul float %206, 1.000000e+05
  store float %207, float* %9, align 4
  br label %208

208:                                              ; preds = %205, %197
  br label %211

209:                                              ; preds = %2
  br label %210

210:                                              ; preds = %2, %209
  store float 0.000000e+00, float* %9, align 4
  br label %211

211:                                              ; preds = %210, %208, %175, %144, %98
  %212 = load float, float* %9, align 4
  ret float %212
}

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
