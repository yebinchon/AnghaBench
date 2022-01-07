; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_NameToDstBlendMode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_NameToDstBlendMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, i8*, i8*, i32)* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"GL_ONE\00", align 1
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GL_ZERO\00", align 1
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"GL_SRC_ALPHA\00", align 1
@GLS_DSTBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_SRC_ALPHA\00", align 1
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"GL_DST_ALPHA\00", align 1
@r_ignoreDstAlpha = common dso_local global %struct.TYPE_6__* null, align 8
@GLS_DSTBLEND_DST_ALPHA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_DST_ALPHA\00", align 1
@GLS_DSTBLEND_ONE_MINUS_DST_ALPHA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"GL_SRC_COLOR\00", align 1
@GLS_DSTBLEND_SRC_COLOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_SRC_COLOR\00", align 1
@GLS_DSTBLEND_ONE_MINUS_SRC_COLOR = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [70 x i8] c"WARNING: unknown blend mode '%s' in shader '%s', substituting GL_ONE\0A\00", align 1
@shader = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @NameToDstBlendMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NameToDstBlendMode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @Q_stricmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  store i32 %8, i32* %2, align 4
  br label %79

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @Q_stricmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @GLS_DSTBLEND_SRC_ALPHA, align 4
  store i32 %20, i32* %2, align 4
  br label %79

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @Q_stricmp(i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_ignoreDstAlpha, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  store i32 %37, i32* %2, align 4
  br label %79

38:                                               ; preds = %31
  %39 = load i32, i32* @GLS_DSTBLEND_DST_ALPHA, align 4
  store i32 %39, i32* %2, align 4
  br label %79

40:                                               ; preds = %27
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @Q_stricmp(i8* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_ignoreDstAlpha, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  store i32 %50, i32* %2, align 4
  br label %79

51:                                               ; preds = %44
  %52 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_DST_ALPHA, align 4
  store i32 %52, i32* %2, align 4
  br label %79

53:                                               ; preds = %40
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @Q_stricmp(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @GLS_DSTBLEND_SRC_COLOR, align 4
  store i32 %58, i32* %2, align 4
  br label %79

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @Q_stricmp(i8* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_COLOR, align 4
  store i32 %64, i32* %2, align 4
  br label %79

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %74 = load i32, i32* @PRINT_WARNING, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shader, i32 0, i32 0), align 4
  %77 = call i32 %73(i32 %74, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %63, %57, %51, %49, %38, %36, %25, %19, %13, %7
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
