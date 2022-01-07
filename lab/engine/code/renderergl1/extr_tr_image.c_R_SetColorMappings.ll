; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_SetColorMappings.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_SetColorMappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, float, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i8*, i8*)* }
%struct.TYPE_11__ = type { float }

@r_overBrightBits = common dso_local global %struct.TYPE_9__* null, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@r_intensity = common dso_local global %struct.TYPE_10__* null, align 8
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"r_intensity\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@r_gamma = common dso_local global %struct.TYPE_11__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"r_gamma\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@s_gammatable = common dso_local global i32* null, align 8
@s_intensitytable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetColorMappings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_overBrightBits, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 2), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %29

24:                                               ; preds = %16
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %35 = shl i32 1, %34
  %36 = sitofp i32 %35 to float
  %37 = fdiv float 1.000000e+00, %36
  store float %37, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1), align 4
  %38 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1), align 4
  %39 = fmul float 2.550000e+02, %38
  %40 = fptosi float %39 to i32
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 2), align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_intensity, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %47 = call i32 %46(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_gamma, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fcmp olt float %51, 5.000000e-01
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %55 = call i32 %54(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %65

56:                                               ; preds = %48
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_gamma, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = fcmp ogt float %59, 3.000000e+00
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %63 = call i32 %62(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_gamma, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 4
  store float %68, float* %3, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  store i32 %69, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %107, %65
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 256
  br i1 %72, label %73, label %110

73:                                               ; preds = %70
  %74 = load float, float* %3, align 4
  %75 = fcmp oeq float %74, 1.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %1, align 4
  store i32 %77, i32* %4, align 4
  br label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %1, align 4
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %80, 2.550000e+02
  %82 = fptosi float %81 to i32
  %83 = load float, float* %3, align 4
  %84 = fdiv float 1.000000e+00, %83
  %85 = call i32 @pow(i32 %82, float %84)
  %86 = mul nsw i32 255, %85
  %87 = sitofp i32 %86 to float
  %88 = fadd float %87, 5.000000e-01
  %89 = fptosi float %88 to i32
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %78, %76
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = shl i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %98, 255
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 255, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %4, align 4
  %103 = load i32*, i32** @s_gammatable, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %70

110:                                              ; preds = %70
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %129, %110
  %112 = load i32, i32* %1, align 4
  %113 = icmp slt i32 %112, 256
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load i32, i32* %1, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_intensity, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  store i32 %119, i32* %2, align 4
  %120 = load i32, i32* %2, align 4
  %121 = icmp sgt i32 %120, 255
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 255, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %114
  %124 = load i32, i32* %2, align 4
  %125 = load i32*, i32** @s_intensitytable, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %1, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32*, i32** @s_gammatable, align 8
  %137 = load i32*, i32** @s_gammatable, align 8
  %138 = load i32*, i32** @s_gammatable, align 8
  %139 = call i32 @GLimp_SetGamma(i32* %136, i32* %137, i32* %138)
  br label %140

140:                                              ; preds = %135, %132
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
