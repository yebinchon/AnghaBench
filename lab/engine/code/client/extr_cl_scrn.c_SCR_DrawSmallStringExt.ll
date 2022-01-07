; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawSmallStringExt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawSmallStringExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (float*)* }

@re = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_color_table = common dso_local global i32* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawSmallStringExt(i32 %0, i32 %1, i8* %2, float* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %19 = load float*, float** %10, align 8
  %20 = call i32 %18(float* %19)
  br label %21

21:                                               ; preds = %57, %53, %6
  %22 = load i8*, i8** %14, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load i8*, i8** %14, align 8
  %27 = call i64 @Q_IsColorString(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load float*, float** %13, align 8
  %34 = load i32*, i32** @g_color_table, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @ColorIndex(i8 signext %37)
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @Com_Memcpy(float* %33, i32 %40, i32 8)
  %42 = load float*, float** %10, align 8
  %43 = getelementptr inbounds float, float* %42, i64 3
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %13, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  store float %44, float* %46, align 4
  %47 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %48 = load float*, float** %13, align 8
  %49 = call i32 %47(float* %48)
  br label %50

50:                                               ; preds = %32, %29
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %14, align 8
  br label %21

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @SCR_DrawSmallChar(i32 %58, i32 %59, i8 signext %61)
  %63 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %14, align 8
  br label %21

70:                                               ; preds = %21
  %71 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %72 = call i32 %71(float* null)
  ret void
}

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @Com_Memcpy(float*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

declare dso_local i32 @SCR_DrawSmallChar(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
