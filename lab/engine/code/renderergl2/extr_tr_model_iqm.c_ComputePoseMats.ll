; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_ComputePoseMats.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_ComputePoseMats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, float*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, float, float*)* @ComputePoseMats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputePoseMats(%struct.TYPE_3__* %0, i32 %1, i32 %2, float %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [12 x float], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load float*, float** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 12, %28
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %25, i64 %32
  store float* %33, float** %11, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %75, %22
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load float*, float** %10, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 12, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float*, float** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 12, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %51, i64 %54
  %56 = load float*, float** %10, align 8
  %57 = load i32, i32* %14, align 4
  %58 = mul nsw i32 12, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %56, i64 %59
  %61 = call i32 @Matrix34Multiply(float* %50, float* %55, float* %60)
  br label %74

62:                                               ; preds = %40
  %63 = load float*, float** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 12, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %63, i64 %66
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 12, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = call i32 @Com_Memcpy(float* %67, float* %72, i32 48)
  br label %74

74:                                               ; preds = %62, %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %13, align 8
  br label %34

80:                                               ; preds = %34
  br label %166

81:                                               ; preds = %5
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 12, %87
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %84, i64 %91
  store float* %92, float** %11, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load float*, float** %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 12, %98
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %95, i64 %102
  store float* %103, float** %12, align 8
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %160, %81
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %165

110:                                              ; preds = %104
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load float*, float** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = mul nsw i32 12, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %115, i64 %118
  %120 = load float*, float** %12, align 8
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 12, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %120, i64 %123
  %125 = load float, float* %9, align 4
  %126 = getelementptr inbounds [12 x float], [12 x float]* %15, i64 0, i64 0
  %127 = call i32 @InterpolateMatrix(float* %119, float* %124, float %125, float* %126)
  %128 = load float*, float** %10, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 12, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %128, i64 %132
  %134 = getelementptr inbounds [12 x float], [12 x float]* %15, i64 0, i64 0
  %135 = load float*, float** %10, align 8
  %136 = load i32, i32* %14, align 4
  %137 = mul nsw i32 12, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %135, i64 %138
  %140 = call i32 @Matrix34Multiply(float* %133, float* %134, float* %139)
  br label %159

141:                                              ; preds = %110
  %142 = load float*, float** %11, align 8
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 12, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %142, i64 %145
  %147 = load float*, float** %12, align 8
  %148 = load i32, i32* %14, align 4
  %149 = mul nsw i32 12, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %147, i64 %150
  %152 = load float, float* %9, align 4
  %153 = load float*, float** %10, align 8
  %154 = load i32, i32* %14, align 4
  %155 = mul nsw i32 12, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = call i32 @InterpolateMatrix(float* %146, float* %151, float %152, float* %157)
  br label %159

159:                                              ; preds = %141, %114
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %13, align 8
  br label %104

165:                                              ; preds = %104
  br label %166

166:                                              ; preds = %165, %80
  ret void
}

declare dso_local i32 @Matrix34Multiply(float*, float*, float*) #1

declare dso_local i32 @Com_Memcpy(float*, float*, i32) #1

declare dso_local i32 @InterpolateMatrix(float*, float*, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
