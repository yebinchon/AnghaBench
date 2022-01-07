; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawAttacker.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawAttacker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@PERS_ATTACKER = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ATTACKER_HEAD_TIME = common dso_local global i32 0, align 4
@ICON_SIZE = common dso_local global double 0.000000e+00, align 8
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @CG_DrawAttacker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawAttacker(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store float %0, float* %3, align 4
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 0), align 8
  %11 = load i64, i64* @STAT_HEALTH, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load float, float* %3, align 4
  store float %16, float* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load float, float* %3, align 4
  store float %21, float* %2, align 4
  br label %105

22:                                               ; preds = %17
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 1), align 8
  %24 = load i64, i64* @PERS_ATTACKER, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX_CLIENTS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %29, %22
  %41 = load float, float* %3, align 4
  store float %41, float* %2, align 4
  br label %105

42:                                               ; preds = %33
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %51 = load float, float* %3, align 4
  store float %51, float* %2, align 4
  br label %105

52:                                               ; preds = %42
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ATTACKER_HEAD_TIME, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %60 = load float, float* %3, align 4
  store float %60, float* %2, align 4
  br label %105

61:                                               ; preds = %52
  %62 = load double, double* @ICON_SIZE, align 8
  %63 = fmul double %62, 1.250000e+00
  %64 = fptrunc double %63 to float
  store float %64, float* %5, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* @PITCH, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* @YAW, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 180, i32* %70, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* @ROLL, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load float, float* %5, align 4
  %75 = fsub float 6.400000e+02, %74
  %76 = fptosi float %75 to i32
  %77 = load float, float* %3, align 4
  %78 = load float, float* %5, align 4
  %79 = load float, float* %5, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @CG_DrawHead(i32 %76, float %77, float %78, float %79, i32 %80, i32* %81)
  %83 = load i64, i64* @CS_PLAYERS, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i8* @CG_ConfigString(i64 %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i8* @Info_ValueForKey(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %89, i8** %8, align 8
  %90 = load float, float* %5, align 4
  %91 = load float, float* %3, align 4
  %92 = fadd float %91, %90
  store float %92, float* %3, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @Q_PrintStrlen(i8* %93)
  %95 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sub nsw i32 640, %96
  %98 = load float, float* %3, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @CG_DrawBigString(i32 %97, float %98, i8* %99, double 5.000000e-01)
  %101 = load float, float* %3, align 4
  %102 = load float, float* @BIGCHAR_HEIGHT, align 4
  %103 = fadd float %101, %102
  %104 = fadd float %103, 2.000000e+00
  store float %104, float* %2, align 4
  br label %105

105:                                              ; preds = %61, %59, %50, %40, %20, %15
  %106 = load float, float* %2, align 4
  ret float %106
}

declare dso_local i32 @CG_DrawHead(i32, float, float, float, i32, i32*) #1

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, float, i8*, double) #1

declare dso_local i32 @Q_PrintStrlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
