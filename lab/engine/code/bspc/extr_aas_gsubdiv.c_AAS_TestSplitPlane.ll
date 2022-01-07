; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_gsubdiv.c_AAS_TestSplitPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_gsubdiv.c_AAS_TestSplitPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__** }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"AAS_TestSplitPlane: tried face plane as splitter\0A\00", align 1
@FACECLIP_EPSILON = common dso_local global float 0.000000e+00, align 4
@FACE_EPSILON = common dso_local global float 0.000000e+00, align 4
@FACE_GROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_TestSplitPlane(%struct.TYPE_10__* %0, i32 %1, float %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load float, float* %10, align 4
  %29 = call i32 @FindFloatPlane(i32 %27, float %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = load i32, i32* %18, align 4
  %32 = call %struct.TYPE_8__* @AAS_SplitWinding(%struct.TYPE_10__* %30, i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %23, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %161

36:                                               ; preds = %6
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %38 = call i32 @FreeWinding(%struct.TYPE_8__* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %22, align 8
  br label %42

42:                                               ; preds = %152, %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %160

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = icmp ne %struct.TYPE_10__* %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -2
  %56 = load i32, i32* %18, align 4
  %57 = and i32 %56, -2
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 @Log_Print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %161

61:                                               ; preds = %45
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %23, align 8
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %105, %61
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call float @DotProduct(i32 %78, i32 %79)
  %81 = load float, float* %10, align 4
  %82 = fsub float %80, %81
  store float %82, float* %19, align 4
  %83 = load float, float* %19, align 4
  %84 = load float, float* %20, align 4
  %85 = fcmp ogt float %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load float, float* %19, align 4
  store float %87, float* %20, align 4
  br label %88

88:                                               ; preds = %86, %71
  %89 = load float, float* %19, align 4
  %90 = load float, float* %21, align 4
  %91 = fcmp olt float %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load float, float* %19, align 4
  store float %93, float* %21, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = load float, float* %19, align 4
  %96 = fpext float %95 to double
  %97 = fcmp ogt double %96, 4.000000e-01
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load float, float* %19, align 4
  %101 = fpext float %100 to double
  %102 = fcmp olt double %101, -4.000000e-01
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %17, align 4
  br label %104

104:                                              ; preds = %103, %99
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %65

108:                                              ; preds = %65
  %109 = load float, float* %20, align 4
  %110 = load float, float* @FACECLIP_EPSILON, align 4
  %111 = fcmp ogt float %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load float, float* %20, align 4
  %114 = load float, float* @FACE_EPSILON, align 4
  %115 = fcmp olt float %113, %114
  br i1 %115, label %126, label %116

116:                                              ; preds = %112, %108
  %117 = load float, float* %21, align 4
  %118 = load float, float* @FACECLIP_EPSILON, align 4
  %119 = fneg float %118
  %120 = fcmp olt float %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load float, float* %21, align 4
  %123 = load float, float* @FACE_EPSILON, align 4
  %124 = fneg float %123
  %125 = fcmp ogt float %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121, %112
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %126, %121, %116
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FACE_GROUND, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %146, %136
  br label %151

151:                                              ; preds = %150, %133, %130
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %155, i64 %157
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  store %struct.TYPE_9__* %159, %struct.TYPE_9__** %22, align 8
  br label %42

160:                                              ; preds = %42
  store i32 1, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %59, %35
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i32 @FindFloatPlane(i32, float) #1

declare dso_local %struct.TYPE_8__* @AAS_SplitWinding(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_8__*) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
