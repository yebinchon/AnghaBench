; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_gen.c_GeneticParentsAndChildSelection.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_gen.c_GeneticParentsAndChildSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"GeneticParentsAndChildSelection: too many bots\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"GeneticParentsAndChildSelection: too few valid bots\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GeneticParentsAndChildSelection(i32 %0, float* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [256 x float], align 16
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 256
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %19 = load i32, i32* @PRT_WARNING, align 4
  %20 = call i32 %18(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %6, align 4
  br label %137

25:                                               ; preds = %5
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load float*, float** %8, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %30
  %39 = load float, float* %13, align 4
  %40 = fadd float %39, 1.000000e+00
  store float %40, float* %13, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load float, float* %13, align 4
  %46 = fcmp olt float %45, 3.000000e+00
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %49 = load i32, i32* @PRT_WARNING, align 4
  %50 = call i32 %48(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %11, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %6, align 4
  br label %137

55:                                               ; preds = %44
  %56 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %57 = load float*, float** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @Com_Memcpy(float* %56, float* %57, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %65 = call i32 @GeneticSelection(i32 %63, float* %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %69
  store float -1.000000e+00, float* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %73 = call i32 @GeneticSelection(i32 %71, float* %72)
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %77
  store float -1.000000e+00, float* %78, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %103, %55
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fcmp olt float %87, 0.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %103

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load float, float* %13, align 4
  %96 = fcmp ogt float %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  store float %101, float* %13, align 4
  br label %102

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %79

106:                                              ; preds = %79
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %128, %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fcmp olt float %115, 0.000000e+00
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %128

118:                                              ; preds = %111
  %119 = load float, float* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fsub float %119, %123
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %126
  store float %124, float* %127, align 4
  br label %128

128:                                              ; preds = %118, %117
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %107

131:                                              ; preds = %107
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %134 = call i32 @GeneticSelection(i32 %132, float* %133)
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @qtrue, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %131, %47, %17
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @Com_Memcpy(float*, float*, i32) #1

declare dso_local i32 @GeneticSelection(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
