; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_incoming.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, float, float*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_6__*, %struct.TYPE_6__*)* @incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @incoming(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %210 [
    i32 130, label %13
    i32 128, label %59
    i32 132, label %145
    i32 131, label %145
    i32 133, label %176
    i32 129, label %209
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fsub float %16, %19
  store float %20, float* %7, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load float, float* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load float, float* %30, align 8
  %32 = fsub float %28, %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load float, float* %39, align 8
  %41 = fsub float %37, %40
  %42 = fdiv float %32, %41
  store float %42, float* %8, align 4
  %43 = load float, float* %8, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = fsub float %48, %51
  %53 = load float, float* %7, align 4
  %54 = fadd float %52, %53
  %55 = fmul float %43, %54
  store float %55, float* %9, align 4
  br label %58

56:                                               ; preds = %13
  %57 = load float, float* %7, align 4
  store float %57, float* %9, align 4
  br label %58

58:                                               ; preds = %56, %25
  br label %211

59:                                               ; preds = %2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = sitofp i32 %62 to float
  %64 = fsub float 1.000000e+00, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to float
  %69 = fsub float 1.000000e+00, %68
  %70 = fmul float %64, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = sitofp i32 %73 to float
  %75 = fadd float 1.000000e+00, %74
  %76 = fmul float %70, %75
  store float %76, float* %5, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = sitofp i32 %79 to float
  %81 = fsub float 1.000000e+00, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = sitofp i32 %84 to float
  %86 = fadd float 1.000000e+00, %85
  %87 = fmul float %81, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = sitofp i32 %90 to float
  %92 = fsub float 1.000000e+00, %91
  %93 = fmul float %87, %92
  store float %93, float* %6, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load float, float* %98, align 4
  %100 = fsub float %96, %99
  store float %100, float* %7, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = icmp ne %struct.TYPE_5__* %103, null
  br i1 %104, label %105, label %140

105:                                              ; preds = %59
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load float, float* %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load float, float* %110, align 8
  %112 = fsub float %108, %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load float, float* %119, align 8
  %121 = fsub float %117, %120
  %122 = fdiv float %112, %121
  store float %122, float* %8, align 4
  %123 = load float, float* %8, align 4
  %124 = load float, float* %6, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load float, float* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load float, float* %131, align 4
  %133 = fsub float %129, %132
  %134 = fmul float %124, %133
  %135 = load float, float* %5, align 4
  %136 = load float, float* %7, align 4
  %137 = fmul float %135, %136
  %138 = fadd float %134, %137
  %139 = fmul float %123, %138
  store float %139, float* %9, align 4
  br label %144

140:                                              ; preds = %59
  %141 = load float, float* %5, align 4
  %142 = load float, float* %7, align 4
  %143 = fmul float %141, %142
  store float %143, float* %9, align 4
  br label %144

144:                                              ; preds = %140, %105
  br label %211

145:                                              ; preds = %2, %2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  %150 = load float, float* %149, align 4
  store float %150, float* %9, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
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
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load float, float* %166, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load float, float* %169, align 8
  %171 = fsub float %167, %170
  %172 = fdiv float %162, %171
  %173 = load float, float* %9, align 4
  %174 = fmul float %173, %172
  store float %174, float* %9, align 4
  br label %175

175:                                              ; preds = %155, %145
  br label %211

176:                                              ; preds = %2
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load float*, float** %178, align 8
  %180 = getelementptr inbounds float, float* %179, i64 1
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
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load float*, float** %191, align 8
  %193 = getelementptr inbounds float, float* %192, i64 0
  %194 = load float, float* %193, align 4
  %195 = call float @fabs(float %194)
  %196 = fcmp ogt float %195, 0x3EE4F8B580000000
  br i1 %196, label %197, label %205

197:                                              ; preds = %176
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds float, float* %200, i64 0
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

211:                                              ; preds = %210, %208, %175, %144, %58
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
