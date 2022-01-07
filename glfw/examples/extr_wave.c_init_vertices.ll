; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_wave.c_init_vertices.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_wave.c_init_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float, double, float, float, i64 }

@GRIDH = common dso_local global i32 0, align 4
@GRIDW = common dso_local global i32 0, align 4
@vertex = common dso_local global %struct.TYPE_2__* null, align 8
@QUADH = common dso_local global i32 0, align 4
@QUADW = common dso_local global i32 0, align 4
@quad = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_vertices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %107, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GRIDH, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %110

8:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %103, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @GRIDW, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %106

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @GRIDW, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @GRIDW, align 4
  %21 = sdiv i32 %20, 2
  %22 = sub nsw i32 %19, %21
  %23 = sitofp i32 %22 to float
  %24 = load i32, i32* @GRIDW, align 4
  %25 = sdiv i32 %24, 2
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %23, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store float %27, float* %32, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @GRIDH, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %33, %35
  %37 = sitofp i32 %36 to float
  %38 = load i32, i32* @GRIDH, align 4
  %39 = sdiv i32 %38, 2
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %37, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store float %41, float* %46, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %1, align 4
  %53 = srem i32 %52, 4
  %54 = icmp slt i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = srem i32 %56, 4
  %58 = icmp slt i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = xor i32 %55, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %13
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store double 0.000000e+00, double* %67, align 8
  br label %74

68:                                               ; preds = %13
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store double 1.000000e+00, double* %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* %2, align 4
  %76 = sitofp i32 %75 to float
  %77 = load i32, i32* @GRIDH, align 4
  %78 = sitofp i32 %77 to float
  %79 = fdiv float %76, %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store float %79, float* %84, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sitofp i32 %85 to float
  %87 = load i32, i32* @GRIDW, align 4
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %86, %88
  %90 = load i32, i32* %2, align 4
  %91 = sitofp i32 %90 to float
  %92 = load i32, i32* @GRIDH, align 4
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %91, %93
  %95 = fadd float %89, %94
  %96 = fdiv float %95, 2.000000e+00
  %97 = fsub float 1.000000e+00, %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vertex, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store float %97, float* %102, align 4
  br label %103

103:                                              ; preds = %74
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %9

106:                                              ; preds = %9
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %2, align 4
  br label %4

110:                                              ; preds = %4
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %175, %110
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @QUADH, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %178

115:                                              ; preds = %111
  store i32 0, i32* %1, align 4
  br label %116

116:                                              ; preds = %171, %115
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @QUADW, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %174

120:                                              ; preds = %116
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @QUADW, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %123, %124
  %126 = mul nsw i32 4, %125
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @GRIDW, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32*, i32** @quad, align 8
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 0
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* @GRIDW, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = load i32*, i32** @quad, align 8
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* %2, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* @GRIDW, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = load i32*, i32** @quad, align 8
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* @GRIDW, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32*, i32** @quad, align 8
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 3
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  br label %171

171:                                              ; preds = %120
  %172 = load i32, i32* %1, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %1, align 4
  br label %116

174:                                              ; preds = %116
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %111

178:                                              ; preds = %111
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
