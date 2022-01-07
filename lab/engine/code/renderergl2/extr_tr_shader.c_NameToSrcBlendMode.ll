; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_NameToSrcBlendMode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_NameToSrcBlendMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, i8*, i8*, i32)* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"GL_ONE\00", align 1
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GL_ZERO\00", align 1
@GLS_SRCBLEND_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"GL_DST_COLOR\00", align 1
@GLS_SRCBLEND_DST_COLOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_DST_COLOR\00", align 1
@GLS_SRCBLEND_ONE_MINUS_DST_COLOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"GL_SRC_ALPHA\00", align 1
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_SRC_ALPHA\00", align 1
@GLS_SRCBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"GL_DST_ALPHA\00", align 1
@r_ignoreDstAlpha = common dso_local global %struct.TYPE_6__* null, align 8
@GLS_SRCBLEND_DST_ALPHA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_DST_ALPHA\00", align 1
@GLS_SRCBLEND_ONE_MINUS_DST_ALPHA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"GL_SRC_ALPHA_SATURATE\00", align 1
@GLS_SRCBLEND_ALPHA_SATURATE = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [70 x i8] c"WARNING: unknown blend mode '%s' in shader '%s', substituting GL_ONE\0A\00", align 1
@shader = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @NameToSrcBlendMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NameToSrcBlendMode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @Q_stricmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  store i32 %8, i32* %2, align 4
  br label %86

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  store i32 %14, i32* %2, align 4
  br label %86

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @Q_stricmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  store i32 %20, i32* %2, align 4
  br label %86

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @Q_stricmp(i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @GLS_SRCBLEND_ONE_MINUS_DST_COLOR, align 4
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  store i32 %32, i32* %2, align 4
  br label %86

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @Q_stricmp(i8* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @GLS_SRCBLEND_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %38, i32* %2, align 4
  br label %86

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @Q_stricmp(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_ignoreDstAlpha, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  store i32 %49, i32* %2, align 4
  br label %86

50:                                               ; preds = %43
  %51 = load i32, i32* @GLS_SRCBLEND_DST_ALPHA, align 4
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %39
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @Q_stricmp(i8* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_ignoreDstAlpha, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  store i32 %62, i32* %2, align 4
  br label %86

63:                                               ; preds = %56
  %64 = load i32, i32* @GLS_SRCBLEND_ONE_MINUS_DST_ALPHA, align 4
  store i32 %64, i32* %2, align 4
  br label %86

65:                                               ; preds = %52
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @GLS_SRCBLEND_ALPHA_SATURATE, align 4
  store i32 %70, i32* %2, align 4
  br label %86

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %81 = load i32, i32* @PRINT_WARNING, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shader, i32 0, i32 0), align 4
  %84 = call i32 %80(i32 %81, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0), i8* %82, i32 %83)
  %85 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %69, %63, %61, %50, %48, %37, %31, %25, %19, %13, %7
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
