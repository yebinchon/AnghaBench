; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_SetColorMappings.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_SetColorMappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, float, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 (i8*, i8*)* }
%struct.TYPE_13__ = type { float }
%struct.TYPE_14__ = type { i64 }

@r_overBrightBits = common dso_local global %struct.TYPE_10__* null, align 8
@tr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@r_mapOverBrightBits = common dso_local global %struct.TYPE_11__* null, align 8
@r_intensity = common dso_local global %struct.TYPE_12__* null, align 8
@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"r_intensity\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@r_gamma = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"r_gamma\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@s_gammatable = common dso_local global i32* null, align 8
@s_intensitytable = common dso_local global i32* null, align 8
@glConfig = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetColorMappings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_overBrightBits, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  br label %16

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_mapOverBrightBits, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_mapOverBrightBits, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 4
  %28 = shl i32 1, %27
  %29 = sitofp i32 %28 to float
  %30 = fdiv float 1.000000e+00, %29
  store float %30, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1), align 4
  %31 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1), align 4
  %32 = fmul float 2.550000e+02, %31
  %33 = fptosi float %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 2), align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_intensity, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %40 = call i32 %39(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %26
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_gamma, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fcmp olt float %44, 5.000000e-01
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %48 = call i32 %47(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_gamma, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fcmp ogt float %52, 3.000000e+00
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %56 = call i32 %55(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_gamma, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  store float %61, float* %3, align 4
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %96, %58
  %63 = load i32, i32* %1, align 4
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %99

65:                                               ; preds = %62
  %66 = load float, float* %3, align 4
  %67 = fcmp oeq float %66, 1.000000e+00
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %1, align 4
  store i32 %69, i32* %4, align 4
  br label %82

70:                                               ; preds = %65
  %71 = load i32, i32* %1, align 4
  %72 = sitofp i32 %71 to float
  %73 = fdiv float %72, 2.550000e+02
  %74 = fptosi float %73 to i32
  %75 = load float, float* %3, align 4
  %76 = fdiv float 1.000000e+00, %75
  %77 = call i32 @pow(i32 %74, float %76)
  %78 = mul nsw i32 255, %77
  %79 = sitofp i32 %78 to float
  %80 = fadd float %79, 5.000000e-01
  %81 = fptosi float %80 to i32
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %70, %68
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 255
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 255, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32*, i32** @s_gammatable, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %62

99:                                               ; preds = %62
  store i32 0, i32* %1, align 4
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i32, i32* %1, align 4
  %102 = icmp slt i32 %101, 256
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i32, i32* %1, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_intensity, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  store i32 %108, i32* %2, align 4
  %109 = load i32, i32* %2, align 4
  %110 = icmp sgt i32 %109, 255
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 255, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %103
  %113 = load i32, i32* %2, align 4
  %114 = load i32*, i32** @s_intensitytable, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32*, i32** @s_gammatable, align 8
  %126 = load i32*, i32** @s_gammatable, align 8
  %127 = load i32*, i32** @s_gammatable, align 8
  %128 = call i32 @GLimp_SetGamma(i32* %125, i32* %126, i32* %127)
  br label %129

129:                                              ; preds = %124, %121
  ret void
}

declare dso_local i32 @pow(i32, float) #1

declare dso_local i32 @GLimp_SetGamma(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
