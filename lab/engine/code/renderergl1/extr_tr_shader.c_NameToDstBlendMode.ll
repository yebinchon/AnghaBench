; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_NameToDstBlendMode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_NameToDstBlendMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i8*, i32)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"GL_ONE\00", align 1
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GL_ZERO\00", align 1
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"GL_SRC_ALPHA\00", align 1
@GLS_DSTBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_SRC_ALPHA\00", align 1
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"GL_DST_ALPHA\00", align 1
@GLS_DSTBLEND_DST_ALPHA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_DST_ALPHA\00", align 1
@GLS_DSTBLEND_ONE_MINUS_DST_ALPHA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"GL_SRC_COLOR\00", align 1
@GLS_DSTBLEND_SRC_COLOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"GL_ONE_MINUS_SRC_COLOR\00", align 1
@GLS_DSTBLEND_ONE_MINUS_SRC_COLOR = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [70 x i8] c"WARNING: unknown blend mode '%s' in shader '%s', substituting GL_ONE\0A\00", align 1
@shader = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
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
  br label %65

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @Q_stricmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @GLS_DSTBLEND_SRC_ALPHA, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @Q_stricmp(i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @GLS_DSTBLEND_DST_ALPHA, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @Q_stricmp(i8* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_DST_ALPHA, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @Q_stricmp(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @GLS_DSTBLEND_SRC_COLOR, align 4
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @Q_stricmp(i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_COLOR, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %60 = load i32, i32* @PRINT_WARNING, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  %63 = call i32 %59(i32 %60, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %49, %43, %37, %31, %25, %19, %13, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
